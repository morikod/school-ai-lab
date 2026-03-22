sudo apt update && sudo apt upgrade -y
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
sudo usermod -aG docker $USER
exit
docker ps
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
docker ps
docker exec -it ollama ollama run llama3
sudo poweroff
docker exec -it ollama ollama run llama3
docker start ollama
docker exec -it ollama ollama run llama3
docker run -d -p 80:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker system prune -a
df -h
docker exec -it ollama ollama rm llama3
docker run -d -p 80:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker exec -it ollama ollama pull tinyllama
sudo lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
sudo resize2fs /dev/ubuntu-vg/ubuntu-lv
docker exec -it ollama ollama pull tinyllama
docker system prune -a --volumes -f
docker exec -it ollama rm -rf /root/.ollama/models/blobs
df -h
docker rm -f open-webui && docker rmi ghcr.io/open-webui/open-webui:main
sudo journalctl --vacuum-time=1s
df -h
docker exec -it ollama ollama pull tinyllama
docker run -d -p 80:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker system prune -f
sudo poweroff
sudo growpart /dev/sda 3
sudo pvresize /dev/sda3
sudo lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
sudo resize2fs /dev/ubuntu-vg/ubuntu-lv
df -h
docker run -d -p 80:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker exec -it ollama ollama pull llama3
docker start ollama
docker exec -it ollama ollama pull llama3
docker ps
docker rm -f open-webui
docker run -d -p 80:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker ps
mkdir -p ~/my-site
nano ~/my-site/index.html
docker run -d -p 81:80 --name my-homepage -v ~/my-site:/usr/share/nginx/html:ro nginx
mkdir -p ~/volode_site
nano ~/volode_site/index.html
docker run -d -p 80:80 --name volode-portal -v ~/volode_site:/usr/share/nginx/html:ro nginx
docker rm -f open-webui
docker run -d -p 8080:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/data --name open-webui --restart always ghcr.io/open-webui/open-webui:main
docker run -d -p 80:80 --name volode-portal -v ~/volode_site:/usr/share/nginx/html:ro nginx
docker rm -f volode-portal
docker run -d -p 80:80 --name volode-portal -v ~/volode_site:/usr/share/nginx/html:ro nginx
docker ps
nano ~/volode_site/index.html
docker stop ollama
docker rm ollama
docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama -e OLLAMA_ORIGINS="*" ollama/ollama
rm ~/volode_site/index.html
nano ~/volode_site/index.html
rm ~/volode_site/index.html
nano ~/volode_site/index.html
rm ~/volode_site/index.html
nano ~/volode_site/index.html
mkdir ~/volode_site
cd ~/volode_sitenano index.html
nano style.css
rm index.html
rm index.html style.css script.js
rm -r ~/volode_site
mkdir ~/volode_site
cd ~/volode_site
nano index.html
nano style.css
nano script.js
docker compose up --build -d
nano script.js
ls
nano Dockerfile
nano docker-compose.yml
docker compose up --build -d
docker ps
curl http://localhost:8081
rm -rf *.html *.css *.js
mkdir school-ai && cd school-ai
nano docker-compose.yml
docker rm -f ollama open-webui
sudo docker compose up -d
curl -I http://localhost:8080
sudo docker ps
sudo docker logs open-webui --tail 50
curl -I http://localhost:8080
sudo docker ps
nano ~/school-ai/web/index.html
mkdir -p ~/school-ai/web && nano ~/school-ai/web/index.html
nano ~/school-ai/docker-compose.yml
cd ~/school-ai
sudo docker compose up -d
sudo docker exec -it ollama ollama list
cd
sudo docker exec -it ollama ollama list
cd ~/school-ai
sudo docker exec -it ollama ollama pull qwen2.5:1.5b
nano Modelfile
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
cat Modelfile | sudo docker exec -i ollama ollama create game-master -f -
nano Modelfile
ls
nano ~/school-ai/docker-compose.yml
sudo docker compose up -d
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
sudo docker exec -it ollama ollama list
cd ~/school-ai/web
nano index.html
sudo docker compose up -d
cd
sudo docker stop ollama
sudo docker rm ollama
sudo docker run -d -v ollama_data:/root/.ollama   -v $(pwd):/root   -p 11434:11434   -e OLLAMA_ORIGIN="*"   --name ollama   ollama/ollama
sudo docker exec -it ollama ollama list
sudo docker stop ollama
sudo docker rm ollama
cd ~/school-ai
sudo docker run -d -v ollama_data:/root/.ollama   -v $(pwd):/root   -p 11434:11434   -e OLLAMA_ORIGIN="*"   --name ollama ollama/ollama
sudo docker exec -it ollama ollama list
sudo docker exec -it ollama ollama pull qwen2.5:1.5b
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
sudo docker ps
ls -l ~/school-ai/web/index.html
cat ~/school-ai/web/index.html
chmod -R 755 ~/school-ai/web
sudo docker stop school-portal && sudo docker rm school-portal
sudo docker run -d --name school-portal   -p 80:80   -v /home/volode/school-ai/web:/usr/share/nginx/html:ro   --restart always   nginx:alpine
sudo docker compose down
sudo systemctl stop nginx
sudo systemctl stop apache2
sudo docker compose up -d
sudo docker rm -f ollama
sudo docker compose up -d
sudo docker rm -f ollama
sudo docker rm -f school-portal
sudo docker rm -f open-webui
cd ~/school-ai
sudo docker compose up -d
curl -I http://localhost
sudo docker compose down
sudo docker rm -f ollama school-portal open-webui 2>/dev/null
chmod -R 777 ~/school-ai/web
sudo docker compose up -d
sudo docker ps
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
sudo docker stop ollama
sudo docker rm ollama
sudo docker run -d -v ollama_data:/root/.ollama   -v /home/volode/school-ai:/root   -p 11434:11434   -e OLLAMA_ORIGIN="*"   --name ollama   ollama/ollama
sudo docker stop ollama
sudo docker rm ollama
sudo docker run -d -v ollama_data:/root/.ollama   -v /home/volode/school-ai:/root   -p 11434:11434   -e OLLAMA_ORIGIN="*"   --name ollama   ollama/ollama
nano ~/school-ai/docker-compose.yml
cd ~/school-ai
sudo docker compose down
sudo docker rm -f ollama school-portal 2>/dev/null
sudo docker compose up -d
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
sudo docker stop ollama
sudo docker rm -f ollama
sudo docker run -d   --name ollama   -v ollama_data:/root/.ollama   -v /home/volode/school-ai:/root   -p 11434:11434   --restart always   -e OLLAMA_ORIGIN="*"   ollama/ollama
sudo docker exec ollama env | grep OLLAMA
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/default.conf
nano ~/school-ai/web/index.html
nano ~/school-ai/docker-compose.yml
sudo docker compose down
sudo docker rm -f ollama school-portal
sudo docker compose up -d
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/default.conf
sudo docker restart school-portal
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
sudo docker logs school-portal --tail 10
ls -l ~/school-ai/default.conf
cat ~/school-ai/docker-compose.yml
nano ~/school-ai/docker-compose.yml
cd ~/school-ai
sudo docker compose down
sudo docker compose up -d
curl -I http://localhost/api/generate
cd ~/school-ai
sudo docker compose down
sudo docker run -d   --name ollama   --network school-ai_default   -v ollama_data:/root/.ollama   -v /home/volode/school-ai:/root   -p 11434:11434   --restart always   -e OLLAMA_ORIGIN="*"   -e OLLAMA_HOST="0.0.0.0"   ollama/ollama
sudo docker compose up -d portal
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/default.conf
cd ~/school-ai
sudo docker compose down
sudo docker compose up -d
sudo docker rm -f ollama school-portal open-webui 2>/dev/null
cd ~/school-ai
sudo docker compose up -d
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/docker-compose.yml
cd ~/school-ai
sudo docker compose down
sudo docker compose up -d
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/Modelfile
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/web/index.html
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/docker-compose.yml
cd ~/school-ai
sudo docker compose down
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
sudo docker compose up -d
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/default.conf
nano ~/school-ai/web/index.html
sudo docker restart school-portal
nano ~/school-ai/Modelfile
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/Modelfile
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano ~/school-ai/Modelfile
sudo docker exec -it ollama ollama create game-master -f /root/Modelfile
nano docker-compose.yml
nano ~/school-ai/web/index.html
nano docker-compose.yml
mkdir -p dns templates scripts web runtime
nano templates/dnsmasq.conf
nano start.sh
chmod +x start.sh
nano templates/hostapd.conf
ip link
sudo poweroff
