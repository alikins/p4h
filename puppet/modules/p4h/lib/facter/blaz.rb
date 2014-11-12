require 'facter'

Facter.add("zaxxon_fact") do
    example_fact = "lesson8"
    setcode do
       # blah blah, load facts from files
        ["laser1", "laser2", "laser5"]
    end
    example_fact
end
