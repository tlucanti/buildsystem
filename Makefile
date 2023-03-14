
CFLAGS		=	-Wall -Wextra
COPTIONS	=
LDFLAGS		= 	-L${BUILD_DIR}
ARCFLAGS	=

CC			=	clang
LD			=	clang
ARC			=	ar rcs
RM			=	rm -f

BUILD_ROOT	=	buildsystem
BUILD_DIR	=	build

TARGETS		=
LIBRARIES	=

all: build_all

include ${BUILD_ROOT}/cflags.mk
include ${BUILD_ROOT}/build.mk

include ${BUILD_ROOT}/my_lib.mk
include ${BUILD_ROOT}/my_make.mk

build_libraries: ${BUILD_DIR} $(addprefix __lib_,$(LIBRARIES))
build_targets: ${BUILD_DIR} $(addsuffix .elf,$(addprefix ${BUILD_DIR}/,$(TARGETS)))
build_all: build_libraries build_targets

clean_targets: $(addprefix __clean_,$(TARGETS))
clean_libraries: $(addprefix __clean_lib_,$(LIBRARIES))
clean: clean_targets clean_libraries

re: clean build_all

#.PHONY: build_libraries build_targets build clean re
