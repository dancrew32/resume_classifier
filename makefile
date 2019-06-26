venv:
	virtualenv -p python3 venv

deps:
	# https://github.com/deanmalmgren/textract/issues/209
	sudo apt-get install -y python python-dev python-pip build-essential swig git libpulse-dev
	sudo apt-get install -y libasound2-dev
	sudo apt-get install -y antiword
	# Notebook deps
	./venv/bin/pip3 install -r requirements.txt

run:
	./venv/bin/jupyter notebook
