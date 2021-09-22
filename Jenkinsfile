pipeline {
    agent any

    stages {
        stage('CI') {
            steps {
                sh '''
                pwd
                cd ../server-frontend/ec2-frontend/
                terraform init
                terraform plan -out "frontend"
                terraform apply "frontend"
                '''
            }
        }
        stage('CD') {
            steps {
                sh '''
                pwd
                cd ../server-frontend/ansible/
                ansible-playbook -i front-end.yml
               '''
            }
        }
    }
}
