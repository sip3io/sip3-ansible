PB_PATH=/home/user/sip3-ansible-ce/playbooks
INV_PATH=/home/user/sip3-ansible-ce/inventories/example

# install MongoDB
ansible-playbook -i $INV_PATH/sip3-backend.yml -i $INV_PATH/mongodb.yml -i $INV_PATH/twig.yml $PB_PATH/mongodb.yml

# install Salto
ansible-playbook -i $INV_PATH/sip3-backend.yml -i $INV_PATH/salto.yml -i $INV_PATH/codecs.yml -i $INV_PATH/udf.yml $PB_PATH/salto.yml

# install Twig
ansible-playbook -i $INV_PATH/sip3-backend.yml -i $INV_PATH/twig.yml -i $INV_PATH/hostmap.yml $PB_PATH/twig.yml

# install Hoof
ansible-playbook -i $INV_PATH/sip3-backend.yml -i $INV_PATH/hoof.yml -i $INV_PATH/twig.yml $PB_PATH/hoof.yml

# update Hoof configuration
ansible-playbook -i $INV_PATH/sip3-backend.yml  -i $INV_PATH/hoof.yml -i $INV_PATH/twig.yml $PB_PATH/hoof-configuration.yml

# install Captain configuration
ansible-playbook -i $INV_PATH/sip3-agent.yml -i $INV_PATH/captain.yml$PB_PATH/captain.yml

# update Hostmap to backend
ansible-playbook -i $INV_PATH/sip3-backend.yml -i $INV_PATH/hostmap.yml $PB_PATH/hostmap.yml
