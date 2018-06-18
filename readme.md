The files cloudbuild.yaml and Dockerfile are used in trigger triggers...

*cloudbuild.yaml has a more complete aproach by setting the deployment with the new image 
  ->A new deployment is trigger when a new Tag is created (https://console.cloud.google.com/gcr/triggers?authuser=1&project=projectdenimar01)
*npm run deploy deploy a App Engine image using app.yaml. More easy, but is not a continuous integration
