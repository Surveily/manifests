#!/bin/bash

while ! kustomize build surveily | kubectl apply -f -; do echo "Retrying to apply resources"; sleep 10; done