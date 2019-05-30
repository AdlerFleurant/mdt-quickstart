#!/usr/bin/env bash

oc delete deployment.extensions/grafana-custom
oc apply -f .openshift/dashboard-devops.yml
oc apply -f .openshift/grafana-deployment.yml -n openshift-monitoring