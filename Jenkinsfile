pipeline{
    agent{label 'ubuntu'}
    stages{
        stage('git clone dockerfile'){
            steps{
                git url: 'https://github.com/kishorebittu3003/devopslearning.git',
                branch: 'main'

            }
        }
        stage('running commands of dockerfile'){
            steps{
                sh 'docker image build -t spc1.0 .'
            }
        }
        stage('command for running docker container'){
            steps{
                sh 'docker container run --name bittu -d -P spc1.0'
            }
        }
    }
}