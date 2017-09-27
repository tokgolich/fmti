#!/bin/bash
# make ver=release/debug
ver ?= debug
# must add DEBUG_FLAGS to each $(CC)
ifeq ($(ver), debug)
DEBUG_FLAGS = -g -O0 -DDEBUG
else
DEBUG_FLAGS = -O2
endif

CC = gcc
GCC = g++

WORKSPACE_ROOT      ?= ./
CONF_ROOT           ?= $(WORKSPACE_ROOT)/conf/
BUILD_ROOT          ?= $(WORKSPACE_ROOT)/build/

BUILD_LIB_SRC   = ${BUILD_ROOT}/lib/
BUILD_BIN_SRC   = ${BUILD_ROOT}/bin/
BUILD_INC_SRC   = ${BUILD_ROOT}/fmti/

THIRD_LIB = ${WORKSPACE_ROOT}/lib/
THIRD_INC = ${WORKSPACE_ROOT}/include/

LDFLAGS      += -L${BUILD_LIB_SRC} -L${THIRD_LIB}
TEST_LDFLAGS += -L${BUILD_LIB_SRC} -L${THIRD_LIB}

FMTI_CFLAGS:= $(DEBUG_FLAGS) -I. -I${THIRD_INC} -I${BUILD_ROOT}\
    -pipe -fPIC -fno-strict-aliasing -fno-common -Wall -Werror -Wno-pointer-sign -Wno-unused-parameter \
    -Wno-unused-but-set-variable -Wno-unused-result -Wnested-externs -Wstrict-prototypes \
    -Wmissing-prototypes -Wundef -std=c99

FMTI_CXXFLAGS:= $(DEBUG_FLAGS) -I. -I${THIRD_INC} -I${BUILD_ROOT}\
    -pipe -fPIC -fno-strict-aliasing -fno-common -Wall -Wno-unused-parameter \
    -Wredundant-decls -Wcast-qual -Wundef 

TARGET=all
CFLAGS += ${FMTI_CFLAGS}
CXXFLAGS += ${FMTI_CXXFLAGS}

TARGET=all
FMTI_LD_FLAGS += ${LDFLAGS} -lpcre
FMTI_TEST_LD_FLAGS += ${TEST_LDFLAGS} -lfmti

all:fmti_inc libfmti fmti_test

FMTI_LIB_OBJS = fmti.o
FMTI_TEST_OBJS = fmti_test.o

fmti_inc:
	mkdir -p $(BUILD_INC_SRC)
	cp *.h $(BUILD_INC_SRC)

libfmti: $(FMTI_LIB_OBJS)
	$(CC) $(FMTI_LIB_OBJS) $(FMTI_LD_FLAGS) -shared -o libfmti.so
	mkdir -p $(BUILD_LIB_SRC)
	cp libfmti.so $(BUILD_LIB_SRC)

fmti_test: $(FMTI_TEST_OBJS)
	$(CC) $(FMTI_TEST_OBJS) $(FMTI_TEST_LD_FLAGS) -o fmti_test
	mkdir -p $(BUILD_BIN_SRC)
	cp fmti_test $(BUILD_BIN_SRC)

install:
	cp -rf ${BUILD_LIB_SRC}/* /usr/local/lib/
	cp -rf ${BUILD_BIN_SRC}/* /usr/local/bin/
	cp -rf $(BUILD_INC_SRC) /usr/local/include/
	cp -rf $(CONF_ROOT)/fmti /etc/
	ldconfig

uninstall:
	rm -rf /usr/local/lib/libfmti.so
	rm -rf /usr/local/bin/fmti_test
	rm -rf /usr/local/include/fmti
	rm -rf /etc/fmti

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.cpp
	$(GCC) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf *.o *.so
	rm -rf $(BUILD_ROOT)


