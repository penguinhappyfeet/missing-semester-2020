**Solutions for lecture 2 exercises [Shell Tools and Scripting](https://missing.csail.mit.edu/2020/shell-tools/)** 
1. `ls -alhtc`
2. [marco.sh](https://github.com/penguinhappyfeet/missing-semester-2020/blob/main/lecture2/marco.sh)
3. [fail.sh](https://github.com/penguinhappyfeet/missing-semester-2020/blob/main/lecture2/fail.sh) to be run within [debug.sh](https://github.com/penguinhappyfeet/missing-semester-2020/blob/main/lecture2/debug.sh)
4. `touch {1,2,3}.html file\ with\ spaces.html image-{a,b,c}.jpg` <- to create some testing files
- `find . -name '*.html' -print0 | xargs -0 tar -rvf html.tar` <- on macOS
5. `find . -type f -exec ls -lt {} + | head -n 1` <- to find the most recently modified file
- `find . -type f -exec ls -lt {} +` or `find . -type f -exec ls -lt {} \;`<- to list all files by recency
- The main difference is that the first command with `+` optimizes the execution by passing multiple file names to `ls -lt` at once, reducing the number of invocations. This can be more efficient when dealing with a large number of files.
- On the other hand, the second command with `\;` executes `ls -lt` individually for each file found. This can result in a higher number of invocations and potentially slower performance, especially with a large number of files.
- By adding the escape `\` before the semicolon `;`, you prevent the shell from interpreting it as the end of the command. 
