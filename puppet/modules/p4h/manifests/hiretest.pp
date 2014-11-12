

class p4h::hiretest ($some_var = "not welcome") {

    notify { "blippy foo":
            message => "${welcome}"}

     notify { "foo bar":
            message => "${some_var}"}
}
