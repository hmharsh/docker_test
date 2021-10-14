# build app
docker image build . -t myusername/myappname:1

# run the app 
 docker run -p 8080:8080 --restart=always myusername/myappname:1

# by default if we don't set any limit on docker contaier it will able to use entire system's resources (in terms of cpu)
