
pipeline {
  agent none
    stages {
      stage ('CleanWorkspace') {
        steps { always 
               { cleanWs()}
              }
      }
      stage ('Preparation'){
        steps{
          script {
          properties([[$class: 'GithubProjectProperty', displayName: '', projectUrlStr: 'https://github.com/patelhrn1/JenkinsCI/'], parameters([gitParameter(branch: '', branchFilter: '.*', defaultValue: '', description: '', name: 'Branch', quickFilterEnabled: false, selectedValue: 'NONE', sortMode: 'NONE', tagFilter: '*', type: 'PT_BRANCH')])])
            properties([[$class: 'GithubProjectProperty', displayName: '', projectUrlStr: 'https://github.com/patelhrn1/JenkinsCI/'], parameters([string(defaultValue: '', description: '', name: 'GitURL', trim: false)])])
          }
            echo "CHECKING OUT CODE"
        }
      }
        stage ('Build'){
          steps{
            echo "Building Code"
            //echo ${mvnHome}
          }
        }
      stage ('Test'){
          steps{
            echo "Testing Code"
          }
        }
      stage ('Input'){
        steps {
         input "Do you want to continue?"
        }
        }
      stage ('Deploy'){
          steps{
            echo "Deploy Code"
          }
        }
      
    }
}
