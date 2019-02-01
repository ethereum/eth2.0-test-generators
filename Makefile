GENERATOR_DIR = .
TEST_DIR = ./tests


.PHONY: clean all


all: ;


clean:
	rm -rf $(TEST_DIR)


#
# test generators
#

# Example:
#
#	$(TEST_DIR)/test-test:
#		mkdir -p $@
#		$(GENERATOR_DIR)/test-test/generate $@/test.yaml
