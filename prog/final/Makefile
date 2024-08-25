GCCPREFIX?=loongarch32r-linux-gnusf-

override FLAGS += -nostdinc -nostdlib -fno-builtin -mabi=ilp32s -g -O2

CC :=$(GCCPREFIX)gcc
LD      := $(GCCPREFIX)ld
AR      := $(GCCPREFIX)ar
OBJCOPY := $(GCCPREFIX)objcopy
OBJDUMP := $(GCCPREFIX)objdump

BUILD_DIR = ./build
CSRC   := $(wildcard *.c)
SSRC   := $(wildcard *.s) $(patsubst %.c, $(BUILD_DIR)/%.s, $(CSRC))

TARGET := $(BUILD_DIR)/final

all: $(TARGET).bin

$(TARGET).bin: $(TARGET).elf
	$(OBJCOPY) -j .text -O binary $^ $@
# cp $@ ./final.bin

$(TARGET).elf: $(SSRC)
	$(CC) $(FLAGS) -Ttext 0x80100000 -o $@ $^
	$(OBJDUMP) -S $@ > $(TARGET).s

$(BUILD_DIR)/%.s: %.c
	$(CC) $(FLAGS) -S $^ -o $@

clean:
	rm -rf $(BUILD_DIR)
	mkdir $(BUILD_DIR)

.PHONY: all clean
