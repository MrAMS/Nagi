PREFIX ?= loongarch32r-linux-gnusf-
BUILD_DIR = ./build
SRCS = $(wildcard src/*.c)
OBJS = $(patsubst src/%.c, ${BUILD_DIR}/%.o, $(SRCS))

all: $(BUILD_DIR)/main.elf
	$(PREFIX)objcopy -O binary -j .text ${BUILD_DIR}/main.elf ${BUILD_DIR}/main.text.bin
	$(PREFIX)objcopy -O binary -j .data ${BUILD_DIR}/main.elf ${BUILD_DIR}/main.data.bin

$(BUILD_DIR)/main.elf: $(OBJS) ./bin.ld
	$(PREFIX)ld $^ -T bin.ld -o $@

$(OBJS): $(BUILD_DIR)/%.o: ./src/%.c
	$(PREFIX)gcc -c $< -I/home/santiego/proj/arch/nscscc/work/nagi/prog/coremark/include -o $@
