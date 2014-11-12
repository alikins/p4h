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

class p4h::lesson12() {

	file { '/root/README':
		content => "##lesson12
For this lesson, please do the following:
* Name two uses (specific pieces of software) for a 'fact exchange'
* Implement a simple fact exchange
** The code must be the same for all hosts that use it
** It should work for N different hosts
** Be sure that it does some parameter validation
*** Remember: data from the host must be validated before it goes into a fact!

Bonus:
* Implement a fact exchange that can generate a unique (UUID) default
* What happens if a node goes down without saying goodbye?
** What are some workarounds to deal with this scenario?

Level 42:
* Generalize the fact exchange process into a ruby library / function

Happy hacking!\n",
	}

	# XXX: write your code here...

        # fact exchange?

        # can we write out the info on the node
        # as a side effect of fact collection?

          # system keys?
          # shared secrets for hmacs etc?
          # (ignoring oddity of transporting secrets)
          # shard ids? container instance ids?

        # create a custom fact 
        # decide on a place to share it
        # generate something unique
        #  verify it's unique
        #  store it

        # some period of time goes buy
        #  were rootish, in root owned dirs, but
        #  also potentially predictable, careful with values
        #  canonicalize id's

        # veirfy fact values
}

# vim: ts=8
