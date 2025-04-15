# next_CICDCD

CICDCD in Docker environment with node

Require :
- Docker Engine instal

If not already done start an instance of jenkins_master
```
docker run --name jenkins -p <choose_a_port>:8080 jenkins/jenkins
```

Then build and start an instance of a jenkins_agent_node

```
cd Jenkins-agent
docker build -t jenkins-agent-with-docker-and-node .
docker run --init --name jenkins_agent_node -v /var/run/docker.sock:/var/run/docker.sock jenkins-agent-with-docker-and-node -url http://172.17.0.2:8080 9600997d28fe2d3d2dbb12f12524fc0017f06929b7c2bc75a6cb6668e3815aa4 node_agent
```

Want to try the entire CICD on your own repository and registry ?
Fork this project and use the jenkinsfile inside Custom folder