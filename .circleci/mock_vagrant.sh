useradd -m vagrant
mkdir -p /home/vagrant
touch /home/vagrant/.bashrc

mkdir -p /vagrant
cp -a /home/circleci/repo/. /vagrant/
chown -R vagrant /vagrant 

echo -e vagrant ALL=\(ALL\) NOPASSWD: ALL >> /etc/sudoers
echo -e circleci ALL=\(ALL\) NOPASSWD: ALL >> /etc/sudoers
