
CFLAGS		=	-Wall -Wextra
CC			=	clang

BUILD_ROOT	=	buildsystem
BUILD_DIR	=	build

TARGETS		=

include ${BUILD_ROOT}/build.mk

include ${BUILD_ROOT}/my_make.mk

build_targets: ${BUILD_DIR} $(addprefix __build_,$(TARGETS))

