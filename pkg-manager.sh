# yum install httpd # redhat
# yum remove bind # uninstall a pkg
# apt-get install # other distros

# rpm -qa # list all installed packages
# rpm -hiv location.rpm # install downloaded rpm pkg
# rpm -e pkg # uninstall pkg
# rpm -qi package_full_name # get package info
# rpm -qc package_full_name # get package config

# which ksh # /usr/bin/ksh
# rpm -qf /usr/bin/ksh # will provide the pkg for the command

# SET LOCAL REPO ON RED HAT
# cd /etc/yum.repos.d
# rm -rf *
# vi local.repo # create repo file in /etc/yum.repos.d
[centos7]
name=centos7
baseurl=file:///localrepo # /localrepo is the repo location
enabled=1
gpgcheck=0

# install createrepo
# createrepo /localrepo
# yum clean all # clear cache from old repo
# yum repolist all # get all repo list
# yum install tomcat # test local repo
