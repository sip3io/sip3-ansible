# Ansible scripts to configure and install SIP3 

`sip3-ansible` project provides an easy way to configure and install SIP3 components. If you are not familiar with the SIP3 architecture check out [this page](https://sip3.io/features).

## 1. Prerequsites

Before starting with `sip3-ansible`, make sure you have installed:

* [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
* [Docker](https://docs.docker.com/install/)

## 2. Playbooks

SIP3 is a multi-component project. That's why `sip3-ansbile` suggests you different playbooks with various component configuration settings, according to the size of your VoIP network and infrastructure requirements:

* [Trial](https://github.com/sip3io/sip3-ansible/blob/master/playbooks/trial) - a showcase version of SIP3. Run it as a monolithic application with just a few commands. Keep in mind that this version has restrictions in terms of performance and available features.

## 3. Support

If you have a question about SIP3, just leave us a message in our community [Slack](https://join.slack.com/t/sip3-community/shared_invite/enQtNzcwMzUxODA2MTkyLTcxODE2MzYyZDgzOWJjNDQ5MzJkOTU3MDY3NDNmZjQ2Zjg2ZjA2MzY4ZmM0YmFkZGI3ZjZiMDgwM2Y1YmU1Mzk) and [Telegram](https://t.me/sip3io), or send us an [email](mailto:support@sip3.io). We will be happy to help you.
