Travis CI Hello World
=====================

This repository contains a simple set of files to demonstrate minimal connection of a GitHub repository to Travis CI.  If all is working well, then the phrase "Hello, World" should be printed out in the Travis CI build log in each CI build.

After creating this repository, it was connected to Travis CI for automatic execution on pushes and pull requests.  This is done by
1. creating an account in Travis CI if necessary and authorizing Travis CI to connect to my GitHub account and
2. activating this repository in the Travis CI account's Settings page (you may need to first sync Travis CI with GitHub through the Settings page).

The file `.travis.yml` is the configuration file that tells Travis CI what it needs to do with each build.  Based on the contents of this `.travis.yml` file, for this repository Travis CI will
1. load the default build environment,
2. set the contents of an environment variable,
3. print the contents of the environment variable, and
4. run the script `hello_world.sh`.

The script `hello_world.sh` simply checks that the build environment is properly configured to say hello to the world.  Note that if the environment is not correctly set, then the script returns a non-zero exit code, which Travis CI will interpret as failure.  Commits or pull requests that end with non-zero exit codes should therefore be marked as failures in GitHub.  If the environment is configured well, then this script returns an exit code of zero, which Travis CI indicates as success.  Green checkmarks should be shown in GitHub to reflect this success.

If you would like to explore `hello_world.sh` and its exit codes, then simply clone or fork this repository and begin playing around.  Useful shell commands are
1. export TRAVIS_CI_ENV="enter the string contents you would like here"
2. unset TRAVIS_CI_ENV
3. ./hello_world.sh ; echo $?

Note that the final command will run the script and print the value of the script's exit code.

To see the Travis CI build history and logs, navigate to the [Travis CI page](https://travis-ci.org/jrdoneal/CI_HelloWorld) linked to this repository.  Also, you can jump to the Travis CI build log for a build triggered by a particular commit by clicking on the green checkmark or red X associated with the commit in the [GitHub commit history](https://github.com/jrdoneal/CI_HelloWorld/commits/master) of this repository.
