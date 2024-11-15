@Library('custom-shared-library') _

def config = [
    projectName: 'frontend-helloworld',
    dockerImage: 'frontend-helloworld:latest',
    containerName: 'frontend-container',
    containerPort: 8080,
    hostPort: 80
]

buildDockerImage(config)
deployWithComposeOnHost(config)