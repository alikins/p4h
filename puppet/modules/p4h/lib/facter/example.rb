require 'facter'


Facter.add("an_example_fact") do
    example_fact = "lesson8"
    setcode (8)
    example_fact
end
