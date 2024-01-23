Tasks
0. Give me a page!
Be sure to read the Docker concept page

In this first debugging project, you will need to get Apache to run on the container and to return a page containing Hello Holberton when querying the root of it.
Here we can see that after starting my Docker container, I curl the port 8080 mapped to the Docker container port 80, it does not return a page but an error message. Note that you might also get the error message curl: (52) Empty reply from server.
After connecting to the container and fixing whatever needed to be fixed (here is your mission), you can see that curling port 80 return a page that contains Hello Holberton. Paste the command(s) you used to fix the issue in your answer file.
