# morgulnet_infra
morgulnet Infra repository

add to .ssh/config Host bastion HostName ExternalIP 
ssh -A bastion -fNL 2666:10.142.0.2:22 && ssh 127.0.0.1 -p 2666
