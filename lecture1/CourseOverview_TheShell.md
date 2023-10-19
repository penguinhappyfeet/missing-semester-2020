1. `echo $SHELL`
2. `mkdir -p /tmp/missing`
3. `man touch`
4. `cd tmp/missing; touch semester`
5. `echo '#!/bin/sh' > semester; echo 'curl --head --silent https://missing.csail.mit.edu' >> semester`
6. `ls -l semester` the permission is `-rw-r--r--`
7.  `sh semester` vs. `./semester`
- The difference between calling a shell script using `sh semester` and `./semester` is related to the execution permission of the script and how it is interpreted.

- `sh semester`: This command tells the system to execute the script using the `sh` interpreter explicitly. It assumes that the script has read permission, and the `sh` interpreter has execute permission. This method relies on the sh interpreter being available on the system.

- `./semester`: This command runs the script as an executable file, assuming it has the execute permission (`chmod +x semester`). The `./` prefix specifies that the script should be executed from the current directory. This method does not require explicitly specifying the interpreter, as it is determined by the shebang (`#!/bin/sh` or similar) at the beginning of the script.

- Regarding permissions:

- When using `sh semester`, the script file itself does not need to have the execute permission. Only the `sh` interpreter needs the execute permission.

- When using `./semester`, the script file must have the execute permission (`chmod +x semester`) to be executed directly.

- It's important to note that the `./semester` method is more common and convenient for executing shell scripts, as it allows you to execute the script directly without explicitly specifying the interpreter. However, both methods can be used depending on the requirements and permissions of the script and interpreter.
  
8.  `man chmod`
9.  `chmod +x semester; ./semester`
- The `./` prefix specifies that the script should be executed from the current directory. This method does not require explicitly specifying the interpreter, as it is determined by the shebang (`#!/bin/sh` or similar) at the beginning of the script.
10. `./semester | grep -i last-modified > last-modified.txt`
