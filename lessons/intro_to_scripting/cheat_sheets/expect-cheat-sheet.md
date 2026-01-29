# Expect Scripting Cheat Sheet

## What Is Expect?

Expect is a scripting language used to **automate interactive programs**.

It works by:
- Running a program
- Waiting for specific output
- Sending responses automatically

Common uses:
- Login prompts
- Password requests
- Menus
- Confirmation questions

---

## Basic Expect Script Structure

```tcl
#!/usr/bin/expect

set timeout 10

spawn ./some_interactive_program

expect "Prompt text"
send "response\r"

expect eof
```

---

## Shebang (Very Important)

```tcl
#!/usr/bin/expect
```

Always use this as the first line of your Expect scripts.

---

## Running Programs with `spawn`

```tcl
spawn ssh user@host
spawn ./ask_me.sh
```

Starts an interactive program and lets Expect monitor it.

---

## Waiting for Output with `expect`

```tcl
expect "Username:"
```

Expect waits until it sees matching output.

---

## Sending Input with `send`

```tcl
send "alice\r"
```

Always include `\r` (Enter key).

---

## Using Environment Variables (Best Practice)

```bash
set user $env(DEMO_USER)
set password $env(DEMO_PASS)
```

Set before running in a terminal, or use .bashrc or custom.sh

```bash
export DEMO_USER=alice
export DEMO_PASS=secret
```

---

## Handling Multiple Prompts

```tcl
expect {
    "Username:" {
        send "$user\r"
        exp_continue
    }
    "*assword:*" {
        send "$password\r"
        exp_continue
    }
}
```

---

## `exp_continue`

Tells Expect to keep waiting after responding.

---

## Timeouts and Errors

```tcl
expect {
    timeout {
        puts "Operation timed out"
        exit 1
    }
    eof {
        puts "Program exited unexpectedly"
        exit 1
    }
}
```

---

## Giving Control Back with `interact`

```tcl
interact
```

Hands control back to the user after automation.

---

## Logging Expect Sessions

```tcl
log_file expect.log
```

---

## Making Expect Scripts Executable

```bash
chmod +x run_expect.exp
./run_expect.exp
```

---

## Common Mistakes to Avoid

❌ Forgetting `\r`:
```tcl
send "yes"
```

✔ Correct:
```tcl
send "yes\r"
```

❌ Hardcoding secrets  
❌ Expecting exact text when output varies

---

## Simple Example

### Interactive Program
```bash
echo -n "What is your name? "
read NAME
echo "Hello $NAME"
```

### Expect Script
```tcl
#!/usr/bin/expect

set timeout 5
set name $env(DEMO_NAME)

spawn ./ask_me.sh

expect "What is your name?"
send "$name\r"

expect eof
```

---

## When to Use Expect

✔ Automating interactive programs  
✔ No flags or APIs available  

❌ Prefer flags or config files when possible

---

## Resources

- `man expect`
- https://linux.die.net/man/1/expect
- Stack Overflow
