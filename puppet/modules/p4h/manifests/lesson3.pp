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

class p4h::lesson3() {

	file { '/root/README':
		content => "##lesson3
For this lesson, please do the following:
* Know about the `concat`, `count`, `delete`, `flatten`, `getvar`, `has_key`,
`join`, `keys`, `member`, `merge`, `parseyaml` and `type` functions from stdlib

Bonus:
* Can you think about what `getvar` is useful for ?
* Can you think about what `parseyaml` could be useful for ?

Happy hacking!\n",
	}

	# XXX: write your code here...

        # concat:
        $faux_list = "blip,blah,baz"
        $faux_list2 = "blippy, zappy"

        $some_array = split($faux_list, ',')
        $some_array2 = split($faux_list2, ',')

        $combined = concat($some_array,
                           $some_array2)

        # count
        $combined_count = count($combined)

        # delete

        $no_blah = delete($combined, 'blah')

        notify { $no_blah: }
        # flatten

        $flattened = flatten(['johnson', ['rambis', 'cooper', 'worthy'], 'kareem'])

        notify { $flattened: }
        # getvar

        $msg = getvar('p4h::init::message')

        notify { $msg: }
        # has_key

        $my_hash = {'some_key' => 'the value'}
        #        notify { inline_template("<% @var.inspect %> ") }
        # join

        $flattened_join = join($flattened, ' --> ')
        notify { $flattened_join: }
        # keys

        # member

        # parseyaml
        # type

        # getvar

        # parseyaml
}

# vim: ts=8
