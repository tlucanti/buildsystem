# $1 - src names
# $2 - taget name
# $3 - build flags

define build_executable

%.o: %.c
        $(CC) $(CFAGS) $(3) -c $$^ -o $$@

$(2): $(addprefix $(1),.o)
        $(CC) $(CFLAGS) $(addprefix $(1),.o) -o $(2)
endef


define clean_target
$(addprefix $(2),_clean):
        rm -f $(addprefix $(1),.o)
        rm -f $(2)
endef
