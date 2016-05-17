#### lladvbashscr
#####1
######2 command substitution
```
cd /lib/modules/`uname -r`
```
######3 argu
```
[-z $1]  //user arg exists?
```
```
declare -r var=1  (readonly)
declare -i var=1 (number)
declare -a var (array)
declare -f fun_name (func)
declare -x var=1 (export)
```

######4 iter1
```
[-n $var] the option is correct?
 ```
 ######6 arrays
 ```
 ${arr[*]} all values  
 ${!arr[*]} all index values currently in use  
 ${#arr[*]} how many items there are in the array  
 ```
 ######exer 1 solution
 show last command(script) exit code
 ```
 $?
 ```
 #####2
 ######3
 type command
 ```
 type time
 ```
 ######4 rbash
 r(estricted)bash
 ```
 bash -r
 ```
 or
 ```
 ln -s /bin/bash /bin/rbash
 ```
 no cd to root, no modify of env and path, no functions, no output redirection  
 never use evel on user input.
 ######exer 2 solution
 to improve performance:
 ```
 echo 1+1|bc  #slow
 echo $((1+2)) #better
 ```
 
 
