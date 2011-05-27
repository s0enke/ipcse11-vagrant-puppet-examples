= Vagrant and puppet Example =

This example shows a complexish setup of vagrant (www.vagrantup.com) with puppet (www.puppetlabs.com).

It will boot 3 VMs:

 * lb: A haproxy Load Lalanacer
 * web01: A node with nginx and php-fpm (fastcgi)
 * web02: A second node that equals web01

 You can git-checkout the branches 01-* to 07-* step by step.

 I used this example for a devops workshop at IPC2011SE.
