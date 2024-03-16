BUILD_DIR = ./build
diff:
	@mkdir -p $(BUILD_DIR)
	@cd ${BUILD_DIR} && make && ./diff/diff
init:
	@mkdir -p $(BUILD_DIR)
	@cd ${BUILD_DIR} && \
	cmake ..

config:
	@cd ${BUILD_DIR} && \
	ccmake .

.PHONY: diff init