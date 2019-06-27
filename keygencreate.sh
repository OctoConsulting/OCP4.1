ssh-keygen -t rsa -b 4096 -N '' -f  ocp.rsa
eval "$(ssh-agent -s)"
ssh-add ocp.rsa
