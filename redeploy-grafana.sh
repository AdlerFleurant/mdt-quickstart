#!/usr/bin/env bash

oc delete deployment.extensions/grafana-custom
oc apply -f .openshift/manifests/dashboard-devops.yml -n openshift-monitoring
oc apply -f .openshift/manifests/grafana-deployment.yml -n openshift-monitoring