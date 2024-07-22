# Instructions for Setting up Aliases
## Docker build
Execute the following commands in order

```
docker build -t alias-jcr .
```

```
docker run --rm -v $(pwd):/app/src alias-jcr HelloWorld.java
```


## For Unix (Mac/Ubuntu) Users

Execute the following command;
```
echo $0
```

**If the result is `bin/bash`**

Execute the following commands:
```
alias_name="jcr"
command='docker run --rm -v $(pwd):/app/src share-run $@'
echo "alias ${alias_name}='${command}'" >> ~/.bash_profile
source ~/.bash_profile
```



**If the result is `zsh`**

Execute the following commands:
```
alias_name="jcr"
command='docker run --rm -v $(pwd):/app/src share-run $@'
echo "alias ${alias_name}='${command}'" >> ~/.zshrc
source ~/.zshrc
```

Now you can run
```
jcr HelloWorld.java
```

---
## For Windows Users (Untested)