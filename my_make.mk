MY_MAKE_SRCS = test
MY_MAKE_TARGET = test
MY_MAKE_BUILD_FLAGS = -I.

$(eval $(call build_executable, \
        $(MY_MAKE_SRCS),                        \
        $(MY_MAKE_TARGET),                      \
        $(MY_MAKE_BUILD_FLAGS)          \
))

$(eval $(call clean_target,             \
        $(MY_MAKE_SRCS),                        \
        $(MY_MAKE_TARGET),                      \
        $(MY_MAKE_BUILD_FLAGS)          \
))
