TEST_BUILD_SRCS = test
TEST_BUILD_TARGET = test
TEST_BUILD_FLAGS = -I .

$(eval $(call build_executable,		\
	$(TEST_BUILD_SRCS),				\
	$(TEST_BUILD_TARGET),			\
	$(TEST_BUILD_FLAGS)				\
))

$(eval $(call clean_target,			\
	$(TEST_BUILD_SRCS),				\
	$(TEST_BUILD_TARGET),			\
	$(TEST_BUILD_FLAGS)				\
))
