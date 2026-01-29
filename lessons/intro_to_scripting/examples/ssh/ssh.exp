#!/usr/bin/expect

set timeout 20
set host $env(CHPC_HOST)
set user $env(CHPC_USER)
set password $env(CHPC_PASS)

spawn ssh -o ConnectTimeout=$timeout $user@$host

expect {
    "The authenticity of host '$host (" {
        send "yes\n";
        exp_continue;
    }
    "*?assword:*" {
        send "$password\n";
        exp_continue;
    }
    "Duo two-factor login*" {
        send "1\n";
    }
    timeout {
        puts "Connection timed out."
        exit 1
    }
    eof {
        puts "Unexpected end of file."
        exit 1
    }
}

interact 