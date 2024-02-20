



# check_http_server.sh

This script checks if an HTTP server is running on a specified port and starts it if it's not already running.

## Usage

```bash
./check_http_server.sh <port> <directory>
```




# start_process.sh

This script checks if the process is running, and if it is not it will execute the second command provided. (Contrived) Example is starting a node server

## Usage

```bash
./start_process.sh "node" "node /path/to/your/server.js" 
```






## Making Scripts Executable

To make a script executable in Unix-like operating systems such as Linux or macOS, you can use the `chmod` command followed by the `u+x` option and the name of the script file. For example:

```bash
chmod u+x script.sh
```

If you do not remember this, you will encounter a "permission denied" error:

```bash
markd@bluesky:scratch % echo "echo Hello" >> script.sh
markd@bluesky:scratch % ./script.sh 
zsh: permission denied: ./script.sh
markd@bluesky:scratch % ls -l ./script.sh
-rw-rw-r-- 1 markd markd 11 Feb 15 14:21 ./script.sh
markd@bluesky:scratch % chmod u+x ./script.sh
markd@bluesky:scratch % ls -la ./script.sh 
-rwxrw-r-- 1 markd markd 11 Feb 15 14:21 ./script.sh
markd@bluesky:scratch % ./script.sh 
Hello
markd@bluesky:scratch % 
```
