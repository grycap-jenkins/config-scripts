# Try to stop any other container with the same name
curl -s https://raw.githubusercontent.com/grycap-jenkins/config-scripts/master/im/stop-and-remove-docker-containers.sh | bash -s $CONTAINER_IMAGE_NAME

# Build docker image and launch container
curl -s https://raw.githubusercontent.com/grycap-jenkins/config-scripts/master/im/build-and-launch-docker-container.sh | bash -s $WORKSPACE $CONTAINER_NAME $CONTAINER_IMAGE_NAME

# Disable IPv6 in test machines
curl -s https://raw.githubusercontent.com/grycap-jenkins/config-scripts/master/im/disable-ipv6-ansible.sh | bash -s $WORKSPACE

# Configure tests ports
curl -s https://raw.githubusercontent.com/grycap-jenkins/config-scripts/master/im/configure-ports-long-tests.sh | bash -s $WORKSPACE $CONTAINER_NAME
