#!/usr/bin/env bash
oc apply -f .openshift/manifests/grafana-sa.yml -n openshift-monitoring
oc apply -f .openshift/manifests/grafana-clusterrolebinding.yml -n openshift-monitoring
oc apply -f .openshift/manifests/grafana-custom-config-secret.yml -n openshift-monitoring
oc apply -f .openshift/dashboard-devops.yml -n openshift-monitoring
oc apply -f .openshift/manifests/grafana-service.yml -n openshift-monitoring
oc apply -f .openshift/manifests/grafana-route.yml -n openshift-monitoring
oc apply -f .openshift/grafana-deployment.yml -n openshift-monitoring