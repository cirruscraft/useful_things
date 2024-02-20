


# ./inspect_test_dbs.py

This script looks in a directory for sqllite files and outputs information on what database tables exists, and the number of rows.

## Usage

```bash
./inspect_test_dbs.py <directory>
```



## Making Scripts Executable

To make a script executable in Unix-like operating systems such as Linux or macOS, you can use the `chmod` command followed by the `u+x` option and the name of the script file. For example:

```bash
chmod u+x script.sh
```

If you dont remember this, it will look like the following:

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
