pipeline {
    agent { label 'JDK-17-MVN-3.6' }
    stages {
        stage('vcs') {
            steps {
                git branch: 'https://github.com/gothinkster/angular-realworld-example-app.git',
                url: 'main'
            }
        }
        stage('image build') {
            steps {
                sh 'docker image build -t angular:1.0 .'
            }
        }
    }
}