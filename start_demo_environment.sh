#sudo docker system prune
sudo CACHEBUST=$(date +%s) docker-compose up --build --force-recreate
