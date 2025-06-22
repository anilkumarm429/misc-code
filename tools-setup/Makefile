infra:
	git pull
	terraform init
	terraform apply -auto-approve

ansible:
	git pull
	ansible-playbook -i $(tool_name)-int.apps11.shop, -e ansible_user=azuser -e ansible_password=Devops@12345 tool_setup.yml -e tool_name=$(tool_name) -e token=$(token)


##Run following cmd for ansible run  : make ansible tool_name=vault