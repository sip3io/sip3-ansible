# Playbooks: trial

This playbook is a perfect choise if you want to see how SIP3 will work with real data in your organization. Configure and run SIP3 in your lab with a few commands only.

_Note: Keep in mind that this version has restrictions in terms of performance and available features._

## 1. SIP3 backend components as monolitic application (sip3.yml)

This playbook aims to simplify SIP3 deployment. That's why `sip3.yml` deploys SIP3 backend components as monolitic application. 

Configuration is simple too - just describe hosts in your network and also hosts connected as trunk as it's shown here: [`hosts.yml`](https://github.com/sip3io/sip3-ansible/blob/master/roles/sip3-salto/templates/hosts.yml.j2)

To install SIP3 backend components use this command:
```
ansible-playbook -K playbooks/trial/sip3.yml
```

To uninstall SIP3 backend components use the same command, but with `extra-vars`:
```
ansible-playbook -K playbooks/trial/sip3.yml --extra-vars "state=absent"
```

## 2. SIP3 captain (captain.yml)

TODO...
