# Get access to environment variables
set -a && . ~/.hocus-mount/.generated/.env && set +a

# Copy the readme so that the user sees it after they open the project for the first time
cp ~/.hocus-mount/misc/readme.txt ~/code/readme.txt

echo "Hello $HELLO from the init.sh script!"

# Give the user some time to read the message printed by the last command
sleep 2
