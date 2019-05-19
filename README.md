# tftp-hpa-docker

This is a really simple tftp-hpa docker container based on latest Alpine Linux for Docker. Nothing fancy but it works. 


# Data persistence
The content of /var/tftpboot will be hold in a volume per container so it persists restarts. 
Files to be served via the tftp-hpa daemon are located there. If required, just mount some of your hosts directory to this path. Pretty straight forward, eh? ;-)


# Start 
`docker run --name=tftp-hpa -d -v /docker/tftp-hpa/tftpboot:/var/tftpboot ftaeger/tftp-hpa-alpine:latest`
