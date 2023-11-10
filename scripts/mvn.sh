#!/bin/bash
#this will excute the previous one
sudo mvn clean install
#sudo rm -rf /home/sachit/poject/*
sudo cp -r /root/.buildkite-agent/builds/Devops-1/devops1/first-build/target/ /home/sachit/project/