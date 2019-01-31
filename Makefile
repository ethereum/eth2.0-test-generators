GENERATOR_DIR = .
TEST_DIR = ./tests


.PHONY: clean all


all: $(TEST_DIR)/test-test $(TEST_DIR)/test-test2


clean:
	rm -rf $(TEST_DIR)


#
# test generators
#

$(TEST_DIR)/test-test:
	mkdir -p $@
	$(GENERATOR_DIR)/test-test/generate $@/test.yaml

$(TEST_DIR)/test-test2:
	mkdir -p $@
	$(GENERATOR_DIR)/test-test2/generate $@/test.yaml
