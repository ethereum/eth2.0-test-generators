GENERATOR_DIR = .
TEST_DIR = ./tests


.PHONY: clean all


all: $(TEST_DIR) $(TEST_DIR)/shuffling


clean:
	rm -rf $(TEST_DIR)


$(TEST_DIR):
	mkdir -p $@


#
# test generators
#

$(TEST_DIR)/shuffling:
	mkdir -p $@
	pip install -r $(GENERATOR_DIR)/shuffling/requirements.txt
	python $(GENERATOR_DIR)/shuffling/tgen_shuffling.py $@/test_vector_shuffling.yml


# Example:
#
#	$(TEST_DIR)/test-test:
#		mkdir -p $@
#		$(GENERATOR_DIR)/test-test/generate $@/test.yaml
