setup:
	sudo apt install make
	sudo apt install python3-pip
	sudo apt install python3.12-venv
	python3 -m venv ~/.aws-ec2-ci
	source ~/.aws-ec2-ci/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

lint:
	pylint --disable=R,C hello.py

all: install lint test