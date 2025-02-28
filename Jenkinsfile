node {
    stage('clone') {
        checkout scm
    }
    stage('build') {
        image = docker.build("kjh9267/blog-eureka-server")
    }
    stage('push') {
        docker.withRegistry('https://ghcr.io', 'github_credential') {
            image.push("$BUILD_ID")
        }
    }
}