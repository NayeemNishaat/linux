# yum install httpd # redhat
# yum remove bind # uninstall a pkg
# yum history # get yum history info
# yum history undo history-id # rollback a pkg/patch
# yum history undo 16 # rollback a pkg/patch (undoing yum update is not recommended)
# apt-get install # other distros

# rpm -qa # list all installed packages
# rpm -hiv location.rpm # install downloaded rpm pkg
# rpm -e pkg # uninstall pkg
# rpm -qi package_full_name # get package info
# rpm -qc package_full_name # get package config

# which ksh # /usr/bin/ksh
# rpm -qf /usr/bin/ksh # will provide the pkg for the command
# apt-file /bin/progname
# yum whatprovides /bin/progname

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
# yum repolist all # get all repo list
# yum install tomcat # test local repo

# CLEANUP
# yum clean all # clear cache from old repo
# apt-get clean
# du -sh /var/cache/apt
# apt-get remove package-1 package-2
# apt-get autoremove

# KERNELS
dpkg -l | grep linux-image | awk '{print$2}' | wc -l
dpkg -l | grep linux-image | awk '{print$2}'
apt remove --purge kernel-name -y; # remove kernel
sudo apt purge linux-headers-5.6.11-050611; # remove kernel
