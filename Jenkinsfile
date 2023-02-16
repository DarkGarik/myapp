node {
//   registry = "gorkov/app"
  stage ('Cloning Git'){
    git branch: 'master', credentialsId: 'github', url: 'git@github.com:DarkGarik/myapp.git'
  }
  stage ('test'){
    println env.TAG_NAME
    println env.BUILD_NUMBER
    echo "${env.TAG_NAME}"
    echo "${env.BUILD_NUMBER}"
  }
}

