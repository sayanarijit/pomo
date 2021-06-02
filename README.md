# pomo
Probably the simplest pomodoro timer CLI for Linux

### Installation

You don't have to install it. Just copy the following snippet in your `.profile` / `.bashrc` / `.zshrc`.

```bash

function pomo() {
    arg1=$1
    shift
    args="$*"

    sec=${arg1:?Example: pomo 15 Take a break}
    msg="${args:?Example: pomo 15 Take a break}"
    while true; do
        sleep "${sec:?}" && notify-send "${msg:?}"
    done
}
```

### Usage

```bash
pomo 15 Take a break
```
