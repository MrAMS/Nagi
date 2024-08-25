BUILD_DIR = ./build
# 定义编译器
CC := loongarch32r-linux-gnusf-gcc
AS := loongarch32r-linux-gnusf-as
LD := loongarch32r-linux-gnusf-ld
CP := loongarch32r-linux-gnusf-objcopy

LDSCRIPT := bin.ld

# 定义编译选项
CFLAGS := -I./inc -Wall -g -nostdinc -nostdlib -fno-builtin -mabi=ilp32s 

CSRCS := $(shell find ./src -name '*.c')
SSRCS := $(shell find ./src -name '*.S')
OBJS := $(CSRCS:./src/%.c=$(BUILD_DIR)/%.o) $(SSRCS:./src/%.S=$(BUILD_DIR)/%.o)

TARGET := myprog

all: bin disassemble

bin: $(BUILD_DIR)/$(TARGET).elf
	$(CP) -O binary -j .text $^ ${BUILD_DIR}/$(TARGET).text.bin
	$(CP) -O binary -j .data $^ ${BUILD_DIR}/$(TARGET).data.bin

disassemble: $(BUILD_DIR)/$(TARGET).s

$(BUILD_DIR)/$(TARGET).s: $(BUILD_DIR)/$(TARGET).elf
	loongarch32r-linux-gnusf-objdump -S $^ > $@

# 链接目标文件生成可执行文件
$(BUILD_DIR)/$(TARGET).elf: $(OBJS)
	$(info CSRCS has $(CSRCS))
	$(info SSRCS has $(SSRCS))
	$(info OBJS has $(OBJS))
# $(CC) -o $@ $^
	$(LD) $(OBJS) -T$(LDSCRIPT) -o $@

# # 编译C语言源文件
# $(BUILD_DIR)/%.o: ./src/%.c
# 	$(CC) $(CFLAGS) -c $< -o $@

# 编译汇编语言源文件
$(BUILD_DIR)/%.o: ./src/%.s
	$(CC) $(CFLAGS) -c $< -o $@
$(BUILD_DIR)/%.o: ./src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR):
	test -d $@ || mkdir -p $@

# 清理编译生成的文件
clean:
	rm -f $(OBJS) $(TARGET)

# 声明伪目标
.PHONY: all clean disassemble bin
