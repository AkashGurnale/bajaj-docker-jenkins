pipeline {
    agent any

    environment {
        // Define any environment variables needed
        JAVA_HOME = '/path/to/your/java/home'
        MAVEN_HOME = '/path/to/your/maven/home'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from your SCM (e.g., Git)
checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/AkashGurnale/bajaj-docker-jenkins.git']])
            }
        }

        stage('Build') {
            steps {
                // Use Maven to build the project
                sh "mvn clean install -DskipTests"
            }
        }

        stage('Deploy') {
            steps {
                // Deploy the built artifact (e.g., deploy to Tomcat)
                // Modify this step according to your deployment process
                sh "docker compose up --build"
            }
        }
    }

    post {
        success {
            // Notification if the build is successful
            echo "Build successful! Deployed to production."
        }
        failure {
            // Notification if the build fails
            echo "Build failed! Check the Jenkins logs for details."
        }
    }
}
