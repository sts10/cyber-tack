# Cyber Tac: Tic tac toe in Cyber

[Cyber](https://cyberscript.dev) is a [very new](https://github.com/fubark/cyber/commit/d21f435e64da3463441da6dde504838810ea1c38) scripting language written in [Zig](https://ziglang.org/). 

I decided to try to write a tic-tac-toe game with it.

## Running this program

`cyber run.cy`

Should work with Cyber v0.3.

## Useful references 

### Cyber resources
* [Cyber's Github repo](https://github.com/fubark/cyber) and [website](https://cyberscript.dev)
* [Cyber's online playground](https://cyberscript.dev/play.html)
* [Cyber 0.1 docs](https://github.com/fubark/cyber/blob/master/docs/docs.md)
* [Some examples of Cyber code](https://github.com/fubark/cyber/tree/master/examples)

### How I implemented this tic tac toe game while learning other languages in the past
In the past, I wrote this same little tic-tac-toe game [Go](https://github.com/sts10/tic-tac-go/blob/main/game.go), [Rust](https://github.com/sts10/rusty-tac) and [Zig](https://github.com/sts10/zig-zac-zoe).

## Installation: Building Cyber from source (with Zig)

Following [this guide](https://github.com/fubark/cyber/blob/master/docs/build.md):

### Prerequisites 

You need [Zig](https://ziglang.org/) version 0.11+ installed. Check with `zig version`. 

If you need to install or upgrade Zig, see [Zig installation wiki](https://github.com/ziglang/zig/wiki/Install-Zig-from-a-Package-Manager) for how to do this on your machine.

### Hello world

`touch hello_word.cy`

```cyber
-- This is a comment
-- Put this code in hello_world.cy
worlds = ['World', 'Mundo']
for worlds each w:
    print 'Hello, {w}!'
```

`cyber hello_word.cy`

## A very basic .cy filetype detection in Vim

No syntax support yet?! Just have vim get out of the way:

```vim
autocmd BufRead,BufNewFile *.cy call SetCyberOptions()
function SetCyberOptions()
  setlocal syntax=off
  setlocal nospell
  setlocal tabstop=4
  setlocal shiftwidth=4
  set filetype=cyber
  " If you have tpope/vim-commentary, this gives you easy commenting
  setlocal commentstring=--\ %s
endfunction
```
