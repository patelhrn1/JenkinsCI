pipeline {
  def mvnHome = tool "Maven"
  agent none 
    stages {
      stage ('Preparation'){
        steps{
          echo "CHECKING OUT CODE"
          echo ${mvnHome}
        }
      }
        stage ('Build'){
          steps{
            echo "Building Code"
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
