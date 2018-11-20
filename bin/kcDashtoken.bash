#!env bash

# " kubectl -n kube-system get secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}') -o jsonpath="{.data.token}" | base64 --decode | pbcopy
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep tiller-token | awk '{print $1}') | grep ^token | awk '{print $2}' | pbcopy
