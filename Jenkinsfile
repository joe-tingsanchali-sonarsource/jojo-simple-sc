node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarScanner';
    withSonarQubeEnv() {
      sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=joe-tingsanchali-sonarsource_jojo-simple_AYaEV8i99sRgntN2NZGC"
    }
  }
}
