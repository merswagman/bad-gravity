sudo docker stop bad-gravity || true
sudo docker rm bad-gravity || true
sudo docker image rm bad-gravity || true
sudo docker container rm bad-gravity || true
sudo docker build -t bad-gravity .
sudo docker run -d -p 80:80 -v /root/bad-gravity:/code --name bad-gravity bad-gravity
