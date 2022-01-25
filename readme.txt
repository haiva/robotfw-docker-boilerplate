Modifying and testing the tests locally with Robot Framework:
* Install Robot Framework using 'pip install robotframework'
* Install Requests libraray using 'pip install robotframework-requests'
* Keywords and other resources are in tests\resources
* Test suites and test cases are in tests\suites
* Test a single test using 'robot --outputdir reports -t "Get Request Test Website" suites'
* Test all tests using 'robot --outputdir reports suites'

Running the tests using a docker image
* Buid a docker image with "docker build -f ./Dockerfile -t robot-docker-bp ."
* Use docker-compose to run all tests using 'docker-compose up'
