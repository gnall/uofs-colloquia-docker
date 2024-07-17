# Instructions
Execute the following commands in order

```
docker build -t share-run .
```

```
docker run --rm -v "$(pwd)":/app/src share-run HelloWorld.java
```
