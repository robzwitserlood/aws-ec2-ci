setup:
	sudo apt install make
	sudo apt-get update
	sudo apt install python3-pip
	sudo apt install python3.12-venv
	python3 -m venv ~/.aws-ec2-ci

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

lint:
	pylint --disable=R,C hello.py
	pylint --disable=R,C,no-member test_hello.py

all: install lint test