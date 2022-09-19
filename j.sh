#! /bin/bash

name=$1
it=$2
echo "INFO	[main]	deploy Mode: using local version for component as defult"
echo "INFO	[gather] Fecthing Environment Configration 12.375"
echo "INFO	[gather] Dowloading Environment Configration: latest"
echo "INFO	[gather] Loading product: sportbook version: latest"
echo "INFO	[plan] plandfhkdahfksdfhk.dev.tets.ref.us-east-1"
echo "INFO	[plan]  Action	                Step	               Version	Notes"
echo "INFO	[plan]                          terraform-network	1.60	not selected"
echo "INFO	[plan]                          terraform-network	1.60	not selected"
echo "INFO	[plan]                          terraform-network	1.60	not selected"
echo "INFO	[plan]                          terraform-network	1.60	not selected"
echo "INFO	[plan]                          terraform-network	1.60	not selected"
echo "INFO	[plan]                          terraform-network	1.60	not selected"
echo "INFO	[plan]                          terraform-cloud-setup   1.11    not selected"
echo "INFO	[plan]                          terraform-cloud-setup   1.11    not selected"
echo -n "If yes to continue: "
read yn
if [[ "$yn" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
  echo "INFO	[run][ansible-sportsbook-app] Building an image"
  echo "INFO	[run][ansible-sportsbook-app] Done building image"
  docker container run $it --name $name --rm -p80:80 746532819400.dkr.ecr.ap-south-1.amazonaws.com/openbet sh
else
  echo "Exiting...."
fi  
echo -e "\e[32m\e[1m Removing the container \e[0m"
