# Eth2.0 Test Generators

This repository contains generators that build tests for Eth 2.0 clients. The test files themselves can be found in [ethereum/eth2.0-tests](https://github.com/ethereum/eth2.0-tests/)

Whenever the generators are updated, the new tests are automatically built and [eth2TestGenBot](https://github.com/eth2TestGenBot) commits the changes to the test repository.

## How to add a new test generator

In order to add a new test generator that builds `New Tests`, put it in a new directory `new_tests` at the root of this repository. Next, add a new target `$(TEST_DIR)/new_tests` to the [makefile](https://github.com/ethereum/eth2.0-test-generators/blob/master/Makefile), specifying the commands that build the test files. Note that `new_tests` is also the name of the directory in which the tests will appear in the tests repository later. Also, add the new target as a dependency to the `all` target.

All of this should be done in a pull request to the master branch. Before merging, ensure that running `make all` succeeds.

## How to remove a test generator

If a test generator is not needed anymore, undo the steps described above. In addition, remove the generated tests in the `eth2.0-tests` repository by opening a PR there.
