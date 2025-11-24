To prepare jenkins and start:
- docker build -t jenkins-local .
- docker volume create jenkins_home
- docker run -d --name jenkins-local --privileged -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins-local