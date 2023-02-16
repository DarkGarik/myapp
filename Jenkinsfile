node {
//   registry = "gorkov/app"
  stage ('Clone'){
    git branch: 'master', credentialsId: 'github', url: 'git@github.com:DarkGarik/myapp.git'
  }
  stage ('test'){
    if (env.TAG_NAME) {
        echo "${env.TAG_NAME}"
    } else {
        echo "${env.BUILD_NUMBER}"
    }
  }
}
