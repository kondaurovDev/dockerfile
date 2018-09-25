#!/usr/bin/expect

set timeout 20

set cmd [lindex $argv 0]
set username [lindex $argv 1]
set password [lindex $argv 2]

eval spawn $cmd

expect "Username: "
send "$username\r";

expect "Password: "
send "$password\r";

expect "Email: (this IS public) "
send "dev@dev.dev\r";

expect eof

puts $expect_out(buffer)