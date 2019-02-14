# Playbooks: trial

This playbook is a perfect choise if you want to see how SIP3 will work with real data in your organization. Configure and run SIP3 in your lab with a few commands only.

_Note: Keep in mind that this version has restrictions in terms of performance and available features._

## 1. SIP3 backend components as monolitic application (sip3.yml)

This playbook aims to simplify SIP3 deployment. That's why `sip3.yml` deploys SIP3 backend components as monolitic application. 

Configuration is simple too - just describe hosts in your network as it's shown here: [`roles/sip3-salto/templates/hosts.yml.j2`](https://github.com/sip3io/sip3-ansible/blob/master/roles/sip3-salto/templates/hosts.yml.j2)

To install SIP3 backend components use this command:
```
ansible-playbook -K playbooks/trial/sip3.yml
```
To uninstall SIP3 backend components use the same command, but with `extra-vars`:
```
ansible-playbook -K playbooks/trial/sip3.yml --extra-vars "state=absent"
```

_Note: To verify that SIP3 installed properly open: http://localhost. The only one thing left... Just start sending data from SIP3 Captain to see `Technical Dashboard` charts and SIP sessions in `Advanced Search`!_

## 2. SIP3 captain (captain.yml)

After you will finish with SIP3 backend components it's time to deploy SIP3 captain. SIP3 captain is responsible for capturing and filtering raw SIP traffic. You can use it as an agent (just deploy it on the node with SIP traffic) or as a folder listener (deploy captain separatly and make it listen to the `.pcap` files folder).

Configuration is a bit more complicated, but still simple enough. Check it here: [`roles/sip3-captain/templates/application.yml.j2`](https://github.com/sip3io/sip3-ansible/blob/master/roles/sip3-captain/templates/application.yml.j2)

To install SIP3 captain use this command:
```
ansible-playbook -K playbooks/trial/captain.yml
```

To uninstall SIP3 captain use the same command, but with `extra-vars`:
```
ansible-playbook -K playbooks/trial/captain.yml --extra-vars "state=absent"
```

## 3. Support

If you have problems installing trial version of SIP3 just leave us a message at [Gitter](https://try.count.ly/at/6c2b2cf55c9e42f7835e8df7d990dfdfcdd4a5db) or reach us by [email](mailto:support@sip3.io). We are always ready to help you.
