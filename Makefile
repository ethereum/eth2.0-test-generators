GENERATOR_DIR = .
TEST_DIR = ./tests


.PHONY: clean all


all: $(TEST_DIR)


clean:
	rm -rf $(TEST_DIR)


#
# test generators
#

$(TEST_DIR):
	mkdir -p $@

# Example:
#
#	$(TEST_DIR)/test-test:
#		mkdir -p $@
#		$(GENERATOR_DIR)/test-test/generate $@/test.yaml
