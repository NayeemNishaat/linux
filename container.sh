# yum/dnf install podman -y # dnf for red hat
# yum/dnf install docker -y

# alias docker=podman # creating an alias for docker as podman can run the docker commands

# podman info # env and registry info
# podman search httpd # search for an image in repos
# podman images # check local images
# podman pull docker.io/library/httpd # download image
# podman ps # check running containers
# podman run -dpt 8080:80/tcp image_id # -t -> get the tty shell (terminal)
# podman run -dpt 8080:80/tcp docker.io/library/httpd # visit localhost:8080 to view the app
# podman run -dpt 8081:80/tcp docker.io/library/httpd # run another container in a different port
# podman run -dpt 8082:80/tcp docker.io/library/httpd # run another container in a different port

# podman logs -l # view logs
# podman stop container_id
# podman start container_id

# podman create --name httpd_custom docker.io/library/httpd # create a new image using existing image
# docker build -t todo . # create an image from Dockerfile

# podman start httpd_custom # start container by con_name

# podman generate systemd --new --files --name httpd # generate unit file (to manage it via systemctl) and copy it to /etc/systemd/system
# systemctl enable container-httpd.service
# systemctl start container-httpd.service
