node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarScanner';
    withSonarQubeEnv('ee98') {
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
}
