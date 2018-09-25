#!/bin/bash
echo -n '{"all": {"hosts": ['; gcloud compute instances list | tail -n +2 |  awk '{print "\""$5"\","}' ; echo  "]}}"
