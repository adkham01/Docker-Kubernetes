#!/bin/bash
data_dir=/opt/app/data
sudo mkdir -p ${data_dir}
echo "=> File created at $(date)" | sudo tee ${data_dir}/create.log
