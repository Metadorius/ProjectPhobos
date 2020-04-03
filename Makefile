-include config.mk

DLL_NAME    = Phobos
REV         = UNKNOWN_VERSION

COMMON_OBJS = \
            sym.o \


DLL_OBJS   = \
            src/SyringeSupport.o \


OBJS       =  \
			src/LoadingScreen.o \
			src/ReplaceShpShadowCheck.o \
			
ifdef dev
    OBJS        +=  dev/MapClass_DamageArea.o \
                    dev/new.o \


endif

INCLUDES   = -Iinc/ -Isrc/
DLL_LIBS   = 

.PHONY: default
default: $(DLL_NAME).dll

$(DLL_NAME).dll: $(COMMON_OBJS) $(DLL_OBJS) $(OBJS)
	$(CC) $(DLL_LDFLAGS) -o $@ $(COMMON_OBJS) $(DLL_OBJS) $(OBJS) $(DLL_LIBS)

CP          ?= copy
RM          ?= rm -f
CC          ?= gcc
CXX         ?= clang++
STRIP       ?= strip
WINDRES     ?= windres
NASM        ?= nasm
PETOOL      ?= petool

REVFLAG     ?= -DREV=\"$(REV)\"

CC_COMMON   ?= $(REVFLAG) $(INCLUDES) -m32 -Wall -Wextra -O3

CFLAGS      ?= $(CC_COMMON) -std=gnu99 -masm=intel -fno-asynchronous-unwind-tables
CXXFLAGS    ?= $(CC_COMMON) -std=gnu++98 -target i686-pc-win32 -mllvm --x86-asm-syntax=intel
WFLAGS      ?= $(REVFLAG)
NFLAGS      ?= $(REVFLAG) $(INCLUDES) -f elf
LD_COMMON   ?= $(CFLAGS) \
		-Wl,-mi386pe \
		-Wl,--enable-stdcall-fixup \
		-Wl,--allow-multiple-definition \
		-Wl,--subsystem=windows

LDFLAGS     ?= $(LD_COMMON) -Wl,--file-alignment=$(ALIGNMENT)
DLL_LDFLAGS ?= $(LD_COMMON) -s -shared -Wl,--strip-all -Wl,--exclude-all-symbols

%.o: %.cpp
	$(CXX)  $(CXXFLAGS) -c -o $@ $<

%.o: %.c
	$(CC)   $(CFLAGS)   -c -o $@ $<

%.o: %.asm
	$(NASM) $(NFLAGS)      -o $@ $<

%.o: %.rc
	$(WINDRES) $(WFLAGS) $< $@


.PHONY: clean
clean:
	$(RM) *$(DLL_NAME).dll $(COMMON_OBJS) $(DLL_OBJS) $(OBJS)

