MY_MAKE_BUILD_DIR = src
MY_MAKE_BUILD_SRCS = my_src
MY_MAKE_BUILD_TARGET = my_target
MY_MAKE_BUILD_FLAGS = -I include
MY_MAKE_BUILD_LIBRARIES = my_lib

$(eval $(call build_executable,		\
	$(MY_MAKE_BUILD_SRCS),			\
	$(MY_MAKE_BUILD_SRCS),			\
	$(MY_MAKE_BUILD_TARGET),		\
	$(MY_MAKE_BUILD_FLAGS),			\
	$(MY_MAKE_BUILD_LIBRARIES)		\
))

$(eval $(call clean_target,			\
	$(MY_MAKE_BUILD_SRCS),			\
	$(MY_MAKE_BUILD_SRCS),			\
	$(MY_MAKE_BUILD_TARGET),		\
	$(MY_MAKE_BUILD_FLAGS)			\
))
