node {
  registry = "gorkov/app"
  stage ('Clone'){
    git branch: 'master', credentialsId: 'cfe4e7b8-1238-49bd-aac5-db6ac2441c8d', url: 'git@github.com:DarkGarik/myapp.git'
  }
  stage ('build'){
    if (env.TAG_NAME) {
        tag = "${env.TAG_NAME}"
    } else {
        tag = "${env.BUILD_NUMBER}"
    }
    myApp = docker.build "$registry:$tag"
  }
  stage ('push'){
    docker.withRegistry('', 'docker') {
      myApp.push()
    }
  }
  stage ('deploy'){
    if (env.TAG_NAME) {
      dir("qbec") {
        sh "qbec apply default --vm:ext-str mytag=$tag --yes"
      }
    }
  }
}
