Wow, you've just set up a Hocus environment! That's a stellar achievement – you should be proud of
yourself. We are all proud of you here at the Hocus headquarters! By we, I mean me – Hugo. By Hocus
headquarters I mean my apartment. And by proud I mean totally clueless you just did it because
I don't receive any notifications about people setting up these environments. So yeah.

Anyway, you have a Hocus environment now. It's pretty barebones though. Feel free to begin doing
stuff here, like starting a new programming project. Everything you put in your home folder
(/home/hocus/) will be persisted between environment restarts.

If you want to install some tools then you should go back to your host machine and run:

$ hocus edit $PROJECT_NAME

(Remember to change $PROJECT_NAME to the project's actual name)

It will open VSCode in this project's directory. There you will find a Dockerfile,
a docker-compose.yml, and other files that make up what this environment is. To install a tool you
would put a relevant script in the Dockerfile and run:

$ hocus open $PROJECT_NAME

This would close the Hocus environment, install the tool, and open the environment for you again.
The tool would be persisted through restarts.

If you go back to the project's directory and look around, you will realize it's a Git repository.
Since this is a template, feel free to delete the existing repo and start a new one for yourself.
Inside the directory, run:

$ rm -rf .git
$ git init

Wrapping up, I hope you find Hocus useful. After you try it out, please let me know what you think.
If by some miracle you don't know me personally, shoot me an email at contact@hugodutka.com.

Have fun!
