# ansible-demo
Notes and files required for IOTA Ansible demo.

## GCP setup:
### Launch two Ubuntu 18.06 virtual machines in GCP.

Instance 1:
name: ansible-controller
Operating system: Ubuntu 18.04 LTS (Under Boot Disk section)
Check Allow HTTP traffic (Under Firewall section)
Network: default

Instance 2: 
Same as Instance 1 
name: ansible-host


### Open port 5000 for both instances
1. Go to VPC networks
2. Click on "default"
3. Go to Firewall rules
4. Add firewall rule with the following config:
	- name: allow-5000
        - Target: All instances in the network
        - Source IP range: 0.0.0.0/0
        - Under Port and Protocols:
		- Check tcp and allow 5000
5. Click on create

This will open port 5000 for all the instances in the "default" network.

### SSH into one of the hosts
1. Click on the small downward arrow next to SSH
2. View gcloud command
3. Click on RUN IN CLOUD SHELL. This will launch a Cloud Shell and automatically put you inside the desired instance (ansible-controller or ansible-host, whichever is desired)

### Install Ansible in both instances 
Follow this steps in this link: https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-18-04

Check: `ansible --version` should return the version number in the first line.

