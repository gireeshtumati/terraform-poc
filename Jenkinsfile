pipeline {

  agent any

  stages {

    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('TF Plan') {
      steps {
          sh 'terraform init'
          sh 'terraform plan -out myplan'
      }      
    }

    stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
    }

    stage('TF Apply') {
      steps {
          sh 'terraform apply -input=false myplan'
      }
    }

    stage('Do you want to destroy the Infra?') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Destroy Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Destroy terraform', name: 'confirm'] ])
        }
      }
    }

    stage('TF Destroy') {
      steps {
          sh 'terraform destroy -input=false myplan'
      }
    }
  } 

}
