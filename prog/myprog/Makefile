PREFIX ?= loongarch32r-linux-gnusf-
BUILD_DIR = ./build
SRCS = $(wildcard src/*.S)
SSRCS = $(wildcard src/*.S)
OBJS = $(patsubst src/%.S, ${BUILD_DIR}/%.o, $(SRCS))

all: $(BUILD_DIR)/main.elf
	$(PREFIX)objcopy -O binary -j .text ${BUILD_DIR}/main.elf ${BUILD_DIR}/main.text.bin
	$(PREFIX)objcopy -O binary -j .data ${BUILD_DIR}/main.elf ${BUILD_DIR}/main.data.bin

$(BUILD_DIR)/main.elf: $(OBJS) ./bin.ld
	$(PREFIX)ld $^ -T bin.ld -o $@

$(OBJS): $(BUILD_DIR)/%.o: ./src/%.S
	rm -rf $(BUILD_DIR)
	mkdir -p $(BUILD_DIR)
	$(PREFIX)gcc -nostdinc -nostdlib -fno-builtin -mabi=ilp32s -Ttext 0x80000000 $< -I./inc -o $@
