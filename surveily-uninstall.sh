#!/bin/bash

while ! kustomize build surveily | kubectl delete -f -; do echo "Retrying to delete resources"; sleep 10; done