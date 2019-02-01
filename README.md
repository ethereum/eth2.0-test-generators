# Eth2.0 Test Generators

This repository contains generators that build tests for Eth 2.0 clients. The test files themselves can be found in [ethereum/eth2.0-tests](https://github.com/ethereum/eth2.0-tests/).

Whenever a release is made, the new tests are automatically built and [eth2TestGenBot](https://github.com/eth2TestGenBot) commits the changes to the test repository.

## How to add a new test generator

In order to add a new test generator that builds `New Tests`, put it in a new directory `new_tests` at the root of this repository. Next, add a new target `$(TEST_DIR)/new_tests` to the [makefile](https://github.com/ethereum/eth2.0-test-generators/blob/master/Makefile), specifying the commands that build the test files. Note that `new_tests` is also the name of the directory in which the tests will appear in the tests repository later. Also, add the new target as a dependency to the `all` target. Finally, add any linting or testing commands to the [circleci config file](https://github.com/ethereum/eth2.0-test-generators/blob/master/.circleci/config.yml) if desired to increase code quality. All of this should be done in a pull request to the master branch.

To deploy new tests to the testing repository, create a release tag with a new version number on Github. Increment the major version to indicate a change in the general testing format or the minor version if a new test generator has been added. Otherwise, just increment the patch version.

## How to remove a test generator

If a test generator is not needed anymore, undo the steps described above and make a new release. In addition, remove the generated tests in the `eth2.0-tests` repository by opening a PR there.
