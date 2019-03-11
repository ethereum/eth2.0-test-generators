GENERATOR_DIR = .
TEST_DIR = ./tests
VENV_DIR = ./.venvs


.PHONY: clean all


all: $(TEST_DIR) $(TEST_DIR)/shuffling $(TEST_DIR)/bls $(TEST_DIR)/ssz


clean:
	rm -rf $(TEST_DIR)
	rm -rf $(VENV_DIR)


$(TEST_DIR):
	mkdir -p $@


#
# test generators
#

$(TEST_DIR)/shuffling:
	mkdir -p $@

	python3 -m venv $(VENV_DIR)/shuffling
	. $(VENV_DIR)/shuffling/bin/activate
	pip3 install -r $(GENERATOR_DIR)/shuffling/requirements.txt --user

	python3 $(GENERATOR_DIR)/shuffling/tgen_shuffling.py $@


$(TEST_DIR)/bls:
	mkdir -p $@

	python3 -m venv $(VENV_DIR)/bls
	. $(VENV_DIR)/bls/bin/activate
	pip3 install -r $(GENERATOR_DIR)/bls/requirements.txt --user

	python3 $(GENERATOR_DIR)/bls/tgen_bls.py $@/test_bls.yml


$(TEST_DIR)/ssz:
	mkdir -p $@

	python3 -m venv $(VENV_DIR)/ssz
	. $(VENV_DIR)/ssz/bin/activate
	pip3 install -r $(GENERATOR_DIR)/ssz/requirements.txt --user

	python3 $(GENERATOR_DIR)/ssz/test_generator.py -o $@


# Example:
#
#	$(TEST_DIR)/test-test:
#		mkdir -p $@
#		$(GENERATOR_DIR)/test-test/generate $@/test.yaml
