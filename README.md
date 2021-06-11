### Download tibcli
Download tibcli from tibco cloud and add it to the root.

Integration apps -> Environment & Tools -> TIBCO® Cloud - Command Line Interface -> Linux version

### Build the images
```
./build-images.sh
```

### Run log stream
```
docker run -d --name my-app-log-stream \
	-e USER='user@tibco.com' \
	-e PASSWORD='password' \
	-e ORG='ORG' \
	-e REGION=eu-west-1 \
	-e APP_NAME='MyAppName' \
	-e HC_MIN='5' \
	-v /cloud/logs:/tci/logs \
	--restart=unless-stopped \
	tci/logs/stream:latest
```
*HC_MIN: Stream healthcheck in minutes
