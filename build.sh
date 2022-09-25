APP_VER=0.1.9
APP_NAME=rust-test-k8s
USER_NAME=solists

docker build -t $USER_NAME/$APP_NAME:$APP_VER .
docker push $USER_NAME/$APP_NAME:$APP_VER

helm upgrade --install  $APP_NAME ./$APP_NAME
