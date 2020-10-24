# Get access to environment variables
set -a && . ~/.hocus-mount/.env && set +a

# Copy the readme so that the user sees it after they open the project for the first time
cp ~/.hocus-mount/misc/readme.txt ~/code/readme.txt

echo "
Hello from the init.sh script!

It is run only the first time you open a Hocus environment. It's the place where you should put
stuff like cloning git repositories and running database migrations.

You can edit this script by running:

$ hocus edit \$PROJECT_NAME

on your host machine (you should change \$PROJECT_NAME to the project's actual name).

If you set it up right, you can access your project's environment variables from within. Here's the
value of \$HELLO, defined in this project's .env file: \$HELLO = $HELLO

init.sh can also be interactive. Here's a little showcase: what's your name?
"

printf "Your name: "
read NAME
echo "
Hey there $NAME! Glad you are trying out Hocus.
"

# Give the user some time to read the message printed by the last command
sleep 2
