# Puppet for Hackers course module by James
# Copyright (C) 2013-2014+ James Shubin
# Written by James Shubin <james@shubin.ca>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# README: this is a module built for use with: Oh My Vagrant!

class p4h::lesson5() {

	file { '/root/README':
		content => "##lesson5
For this lesson, please do the following:
* Run facter
* Run facter -p
** What's the difference ?
* Write a custom fact that is self contained inside your module (ruby)
** Use it inside of your module to accomplish something
* Have a type inside your module write small text files to a certain folder
** That folder should be somewhere underneath: $var/lib/puppet/tmp/$modulename/
*** Have a fact pull in the data from each text file and present it as an array
**** The array can be comma separated
***** Remember to run sort before building the fact ... Why?
****** Do not reuse variables inside the fact ... Why?
* Write a fact in a different language by dropping it into /etc/facter/facts.d/
** Try dropping a similar one into $modulename/facts.d/
*** These would be better than 'original' facts, except for one crucial issue:
**** They can't reference other facts :(

Bonus:
* Write a structured fact and test it with a notify or similar

Happy hacking!\n",
	}

	# XXX: write your code here...

       $fact_message = inline_template("<% @an_example_fact %>")
       notify { 'foo_blip_example_fact':
                message => $fact_message
       }

       file { "/root/this_has_facts.txt":
           content => $fact_message 
        }
       
        file { "${var}/lib/puppet/tmp/":
                ensure => directory
        }
        
        file { "${var}/lib/puppet/tmp/lesson5":
                ensure  => directory,
                require => File["{var}/lib/puppet/tmp/"]
        }

        #* Have a type inside your module write small text files to a certain folder
        file { "${var}/lib/puppet/tmp/lesson5/example_fact_blorp":
           content => "blorpy blorpy blorpy",
           ensure  => present,
           require => File["$var}/lib/puppet/tmp/lesson5"]
        }

        file { "${var}/lib/puppet/tmp/lesson5/example_fact_zaxxon":
           content => "zaxxon laser",
           ensure  => present
        }

        #*** Have a fact pull in the data from each text file and present it as an array

        #**** The array can be comma separated
  
        #***** Remember to run sort before building the fact ... Why?
        
        # no idea..  does it effect precendence?
        #****** Do not reuse variables inside the fact ... Why?
}
