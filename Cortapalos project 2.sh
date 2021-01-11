

ssh-keygen -t rsa
cat cat ~/.ssh/id_rsa.pub

ssh-rsa blabla...blabla josegalarceh@asdfasf

# ssh-add ~/.ssh/josegalarceh-github/id_rsa

git clone git@github.com:josegalarceh/Building-a-CI-CD-Pipeline.git


git config --global -l
git config --global user.email "josegalarceh@gmail.com"

## make file & pip
pip install virtualenv
virtualenv ~/.azure-devops
source ~/.azure-devops/bin/activate
deactivate

python3 -m venv ~/.azure-devops
source ~/.azure-devops/bin/activate

which pip
pip list

Makefile:
install:
	pip install --upgrade pip &&\
        pip install -r requirements.txt

requirements.txt:
pylint
pytest
click

pip list

### click tool

#### CD

python3 -m venv ~/.flask-ml-azure
source ~/.flask-ml-azure/bin/activate

az webapp up -n <your-appservice>
az webapp up -n flask-ml-service

# CI: Set Up Azure Cloud Shell
# 1. Create the Cloud-Based Development Environment

ssh-keygen -t rsa
cat cat ~/.ssh/id_rsa.pub

ssh-rsa AAAAB3NzaC1yr43 josegalarceh@asdfasf

# ssh-add ~/.ssh/josegalarceh-github/id_rsa

git clone git@github.com:josegalarceh/Building-a-CI-CD-Pipeline.git

# 2. Create Project Scaffolding

touch Makefile

install:
    pip install --upgrade pip &&\
        pip install -r requirements.txt

test:
    python -m pytest -vv test_hello.py


lint:
    pylint --disable=R,C hello.py

all: install lint test

touch requirements.txt

pylint
pytest

python3 -m venv ~/.Building-a-CI-CD-Pipeline
source ~/.Building-a-CI-CD-Pipeline/bin/activate

touch hello.py

def toyou(x):
    return "hi %s" % x


def add(x):
    return x + 1


def subtract(x):
    return x - 1

touch test_hello.py

# 3. Local Test
make all

screenshot-shogwing-the-passing-test 

# 1. Enable Github Actions

hay que crear un workflow basico en action dentro del repo desde el portal

# 2. Replace yml code

mv .github/workflows/main.yml .github/workflows/pythonapp.yml
Take screenshot and save it

# Continuous Delivery on Azure

clone the repo
reemplace the files
