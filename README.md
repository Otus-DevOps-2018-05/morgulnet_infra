# morgulnet_infra

## Задание для подключение к someinternalhost в одну команду
 Добавляем в .ssh/config  
 Host bastion  
 HostName 35.228.161.210  
 Далее подключаемся командой  
 ssh -A bastion -fNL 2666:10.142.0.2:22 && ssh 127.0.0.1 -p 2666  

 bastion_IP = 35.228.161.210  
 someinternalhost_IP = 10.142.0.2  

## Информация о ДЗ-4
 testapp_IP = 35.228.217.1  
 testapp_port = 9292  

 Добавление правила для файрвола  
 gcloud compute firewall-rules create "allow-puma" --allow tcp:9292

 Команды gcloud для использования startup.sh  
 --metadata-from-file startup-script=startup_script.sh  
 --metadata startup-script-url=gs://cloudapp-mo/startup_script.sh
