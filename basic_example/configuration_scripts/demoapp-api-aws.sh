
#!/bin/bash

echo 'Install NodeJs'
curl -sL https://deb.nodesource.com/setup_6.x | /bin/bash -E;
apt-get update && apt-get install --no-install-recommends --no-install-suggests -y nodejs;

echo 'Unzip'
cd $ARTIFACTS_PATH;
tar -xvf demoapp-api.tar.gz; #demoapp-api is in tar

echo 'Run App'
cd $ARTIFACTS_PATH/demoapp-api/;
node app.js > /dev/null &
