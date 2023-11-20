#!/bin/bash
## Purpose to build branches (starting in dvlpmnt) based on GitFlow strategy.

git checkout master

git branch feature1 	## pre-development branches
git branch feature2 	## pre-development branches
git branch development  ## merged features and testing
git branch release	## branch communicating with master

git branch hotfix	## last minute issues 






