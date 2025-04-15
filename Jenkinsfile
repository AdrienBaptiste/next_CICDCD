pipeline {
    agent {
        label 'nodejs-agent'
    }

    environment {
        NODE_VERSION = '14'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/AdrienBaptiste/next_CICDCD.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                script {
                    sh 'nvm install ${NODE_VERSION}'
                    sh 'nvm use ${NODE_VERSION}'

                    sh 'npm install'
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    sh 'npm run build'
                }
            }
        }

        stage('Start Production') {
            steps {
                script {
                    sh 'npm run start'
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
