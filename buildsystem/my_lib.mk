MY_LIB_BUILD_DIR = src
MY_LIB_BUILD_SRCS = lib_src
MY_LIB_BUILD_TARGET = libmy_lib
MY_LIB_BUILD_FLAGS = -I include

$(eval $(call build_library,	\
	$(MY_LIB_BUILD_DIR),		\
	$(MY_LIB_BUILD_SRCS),		\
	$(MY_LIB_BUILD_TARGET),		\
	$(MY_LIB_BUILD_FLAGS)		\
))

$(eval $(call clean_library,	\
	$(MY_LIB_BUILD_SRCS),		\
	$(MY_LIB_BUILD_SRCS),		\
	$(MY_LIB_BUILD_TARGET),		\
	$(MY_LIB_BUILD_FLAGS)		\
))
