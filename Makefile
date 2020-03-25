DLL_NAME  = Phobos
OBJS      = sym.o \
			src/SyringeSupport.o \
			src/LoadingScreen.o \

INCLUDES  = -Iinc/ -Isrc/
DLL_LIBS  = -lmsvcrt

.PHONY: default
default: $(DLL_NAME).dll

$(DLL_NAME).dll: $(OBJS)
	$(CC) $(DLL_LDFLAGS) -o $@ $(OBJS) $(DLL_LIBS)


include inc/generic.mk
