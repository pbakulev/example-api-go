@Library('jenkins-shared-libraries@master') _

stdPipeline (
    '''        
        IMAGE_TAG=$(git log -n 1 --pretty=format:'%H' | cut -c1-8)
        IMAGE=registry.example.com:5000/example-api-go:$IMAGE_TAG
        docker build . -t $IMAGE
        docker push $IMAGE
        echo "$IMAGE" > $WORKSPACE/image
    '''        
)