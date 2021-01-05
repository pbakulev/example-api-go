@Library('jenkins-shared-libraries@master') _

pipeline {
    stdPipeline (
        """
        git clone https://github.com/pbakulev/example-api-go
        cd example-api-go
        IMAGE_TAG=$(git log -n 1 --pretty=format:'%H' | cut -c1-8)
        IMAGE_NAME=registry.example.com/example-api-go
        docker build . -t $IMAGE_NAME:$IMAGE_TAG
        echo "$IMAGE_TAG" > $WORKSPACE\\image_tag
        echo "$IMAGE_NAME" > $WORKSPACE\\image_name
        """        
    )
}