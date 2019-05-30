#!/usr/bin/env bash
oc apply -f https://raw.githubusercontent.com/redhat-cop/openshift-toolkit/master/custom-dashboards/.openshift/manifests/grafana-sa.yml -n openshift-monitoring
oc apply -f https://raw.githubusercontent.com/redhat-cop/openshift-toolkit/master/custom-dashboards/.openshift/manifests/grafana-clusterrolebinding.yml -n openshift-monitoring
oc apply -f https://raw.githubusercontent.com/redhat-cop/openshift-toolkit/master/custom-dashboards/.openshift/manifests/grafana-custom-config-secret.yml -n openshift-monitoring
oc apply -f .openshift/dashboard-devops.yml
oc apply -f https://raw.githubusercontent.com/redhat-cop/openshift-toolkit/master/custom-dashboards/.openshift/manifests/grafana-service.yml -n openshift-monitoring
oc apply -f https://raw.githubusercontent.com/redhat-cop/openshift-toolkit/master/custom-dashboards/.openshift/manifests/grafana-route.yml -n openshift-monitoring
oc apply -f .openshift/grafana-deployment.yml -n openshift-monitoring