![Python application test with Github Actions](https://github.com/josegalarceh/Building-a-CI-CD-Pipeline/workflows/Python+application+test+with+Github+Actions/badge.svg)

# Overview

In this project, you will build a Github repository from scratch and create a scaffolding that will assist you in performing both Continuous Integration and Continuous Delivery. You'll use Github Actions along with a Makefile, requirements.txt and application code to perform an initial lint, test, and install cycle. Next, you'll integrate this project with Azure Pipelines to enable Continuous Delivery to Azure App Service.

In the folder [evidence](https://github.com/josegalarceh/Building-a-CI-CD-Pipeline/tree/main/evidence) you will find the evidence required from udacity project.

## Project Plan

It is critical to have an effective project plan and task tracking, In this section you find:

* A [Trello](https://trello.com/b/7QrYdgzR/udacity-building-a-ci-cd-pipeline) board for the project
* A [spreadsheet](https://github.com/josegalarceh/Building-a-CI-CD-Pipeline/blob/main/Udacity-Building-a-CI-CD-Pipeline-Q1-2021.xlsx) that includes the original and final project plan

## Instructions

![screenshot-architectural-diagram.PNG](evidence/screenshot-architectural-diagram2.PNG)

## Deploy the app in Azure Cloud Shell

Go to the azure portal in your browser:
```
portal.azure.com
```
![portal azure](evidence/screenshot-portal-azure3.PNG) 

In the Azure Portal, select Azure Cloud Shell:

![Cloud Shell](evidence/screenshot-cloud-shell.PNG) 

In Azure Cloud Shell, clone the repo:
```
git clone git@github.com:josegalarceh/Building-a-CI-CD-Pipeline.git
```
![git clone](evidence/screenshot-git-clone.PNG) 

Go to the repository directory:
```
cd Building-a-CI-CD-Pipeline
```
![go repo directory](evidence/screenshot-go-repo-directory.PNG)

Setup virtual environment:
```
make setup
```
![make setup](evidence/screenshot-make-setup.PNG)

Activate the virtual environment:
```
source ~/.Building-a-CI-CD-Pipeline/bin/activate
```
![source](evidence/screenshot-source.PNG)

Install dependencies and run lint in the virtual environment:
```
make all
```
![make all](evidence/screenshot-make-all.PNG)

In order to validate the application before deploy to app service, start the application in the virtual environment:
```
python app.py
```
![python-app](evidence/screenshot-python-app.PNG)

Open other Cloud Shell:
![new-cloud-shell](evidence/screenshot-new-cloud-shell.PNG)

In the new Cloud Shell, go to the repository directory and test that the app is working:
```
cd Building-a-CI-CD-Pipeline
./make_prediction.sh
```
![local-prediction](evidence/screenshot-local-prediction.PNG)

Close the second cloud console, and press "Ctrl + c" to stop the local app in the first console:

![stop-app](evidence/screenshot-stop-app.PNG)

## Deploy the app to an Azure App Service
Now is time to deploy the app to an azure app service...

Create an App Service in Azure. In this example the App Service is called jose-flaskpipelines and the resource group is called jose-udacity-project. In the first Cloud Console run the follow command, the result take a few minutes:

```
az webapp up -n jose-flaskpipelines -g jose-udacity-project
```
![create-webapp](evidence/screenshot-create-webapp.PNG)

This is the webapp on the azure portal:
![webapp](evidence/screenshot-webapp.PNG)

Next, create and configure the pipeline in Azure DevOps. More information on this process can be found [here](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops&WT.mc_id=udacity_learn-wwl). The basic steps to set up the pipeline are:

- Go to [https://dev.azure.com](https://dev.azure.com) and sign in.
- Create a new private project.
- Under Project Settings create a new service connection to Azure Resource Manager, scoped to your subscription and resource group.
- Create a new pipeline (python to linux web app on azure)linked to your GitHub repo.


![azure-pipeline](evidence/screenshot-azure-pipeline.PNG)


Now, we can test the app. For you case, edit the line 28 of the make_predict_azure_app.sh script with the DNS name of your app. Then run the script on the cloud shell:

```
./make_predict_azure_app.sh 
```
![webapp-prediction](evidence/screenshot-webapp-prediction.PNG)


If you like, you can go to the webapp url:

![webapp-url](evidence/screenshot-webapp-url.PNG)

And view the logs with the following command:
```
az webapp log tail -n jose-flaskpipelines -g jose-udacity-project
```
![webapp-logs](evidence/screenshot-webapp-logs.PNG)


## Enhancements

In the future, the project can be configured to work with gitflow, so if you commit to a particular branch, the code can continue to be deployed in the corresponding environment (Development, QA, Staging or production).

## Demo 

This is the [youtube](https://youtu.be/xQezqOopooQ) link to see a demo


