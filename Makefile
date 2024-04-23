BUILD_DIR = ./build
build: 
	@mkdir -p $(BUILD_DIR)
	@cd ${BUILD_DIR} && \
		make
# 		ninja
diff: build
	@cd ${BUILD_DIR} && ./diff/diff

wave:
	-gtkwave build/wave.fst -a build/wave.sav --saveonexit

init:
	@mkdir -p $(BUILD_DIR)
	@cd ${BUILD_DIR} && \
		cmake ..
# 		cmake -GNinja ..

config:
	@cd ${BUILD_DIR} && \
	ccmake .

clean:
	-rm -rf ${BUILD_DIR}

.PHONY: build diff wave init clean