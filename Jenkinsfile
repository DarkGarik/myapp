node {
  // registry = "gorkov/app"
  stage ('Cloning Git'){
    git branch: 'main', credentialsId: 'github', url: 'git@github.com:DarkGarik/myapp.git'
  }
  stage ('test'){
    println env.TAG_NAME
    echo "${env.TAG_NAME}"
    echo "${env.BUILD_NUMBER}"
  }
}