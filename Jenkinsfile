node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarScanner';
    withSonarQubeEnv('ee89') {
      sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=joe-tingsanchali-sonarsource_jojo-simple"
    }
  }
}
