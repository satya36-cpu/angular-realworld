pipeline {
    agent { label 'JDK-17-MVN-3.6' }
    stages {
        stage('vcs') {
            steps {
                git branch: 'https://github.com/satya36-cpu/angular-realworld.git',
                url: 'master'
            }
        }
        stage('image build') {
            steps {
                sh 'docker image build -t angular:1.0 .'
            }
        }
    }
}