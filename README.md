# Metrics Driven Transormation Quickstart

Assets to rapidly demonstrate Metrics Driven Transformation (MDT) on the OpenShift Container Platform

## Prerequisites

* OpenShift Environment
* OpenShift Command Line Tool
* An OpenShift Administrative access.

## Provision

In order to create or update  the grafana environment.
* Login to openshift with an administrative account

Execute the following command to provision the environment:

```bash
$ ./create-grafana.sh
```

In order to modify the DevOps Dashboard, it is recommended to work in grafana and then to export the json configuration.
Modify .openshift/dashboard-devops.yml by modifying the data->devops.json location into the exported dashboard configuration.
Once completed, run: 

```bash
$ ./create-grafana.sh
```