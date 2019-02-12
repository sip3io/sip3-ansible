# Ansible scripts to configure and install SIP3 

`sip3-ansible` project aims to provide an easy way to configure and install SIP3 components. If you are not familiar with SIP3 architecture checkout [this page](https://sip3.io/features).

## 1. Prerequsites

Before starting with `sip3-ansible` make sure that you have installed:

* [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
* [Docker](https://docs.docker.com/install/)

## 2. Playbooks

SIP3 is a multi-components project. That's why `sip3-ansbile` suggests you different playbooks with various component configurations according to your VoIP network size, infrastructure requirements and other needs:

* [Trial](https://github.com/sip3io/sip3-ansible/blob/master/playbooks/trial) - Showcase version of SIP3. Run it as a monolitic application with just a few commands. Keep in mind that this version has restrictions in terms of performance and available features.

## 3. Support

If you have a question about SIP3, please contact us at [Gitter](https://try.count.ly/at/6c2b2cf55c9e42f7835e8df7d990dfdfcdd4a5db) or reach us by [email](mailto:support@sip3.io). We are always ready to help you.
