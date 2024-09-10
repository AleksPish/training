#!/bin/bash

##Install gitlab script

sudo yum install postfix -y

sudo service postfix start

sudo chkconfig postfix on

curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash

sudo yum install gitlab-ce -y

sudo gitlab-ctl reconfigure