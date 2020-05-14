# factorio-server
factorio server in docker


# Deployment
1. Update ./server-settings.json (refer to headless server setup example)
  - Set password?
  - Set whitelist?
  - Set admins?
2. Copy a factorio save file to /external/factorio/saves (note /external is at the root directory)
3. $ ./run.sh [SAVEFILENAME] [PORT]
  - SAVEFILENAME will be the file from step 2
  - PORT will be the incoming port users will connect to
