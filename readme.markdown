# Tic tac toe in Cyber

## Useful references 

### Cyber resources
* [Cyber 0.1 docs](https://github.com/fubark/cyber/blob/master/docs/docs.md)
* [Some examples of Cyber code](https://github.com/fubark/cyber/tree/master/examples)

### How I've implemented tic tac toe in while learning other languages in the past
* [My tic-tac-toe game in Go](https://github.com/sts10/tic-tac-go/blob/main/game.go) and in [Rust](https://github.com/sts10/rusty-tac).

## Installation: Building Cyber 0.1 from source (with Zig)

Following [this guide](https://github.com/fubark/cyber/blob/master/docs/build.md):

```bash
git clone https://github.com/fubark/cyber.git
cd cyber/
zig version # => Verify that you have 0.11 or higher
zig build test # => Hopefully all tests pass! 
zig build cli -Drelease-fast
./zig-out/cyber/cyber help
cp ./zig-out/cyber/cyber ~/.local/bin/
```

Now test your install with `cyber --help`

### Hello world

`touch hello_word.cy`

```cyber
worlds = ['World', '世界', 'दुनिया', 'mundo']
for worlds each w:
    print 'Hello, {w}!'

```

`cyber hello_word.cy`

## Running this program

`cyber run.cy`
