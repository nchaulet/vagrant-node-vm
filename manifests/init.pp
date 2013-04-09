# dependecies for node
package { 'g++':
    ensure => present
} ->

package { 'make':
    ensure => present
}

include nodejs

# essentials package

package { 'git':
    ensure => present
} ->

package { 'vim':
    ensure => present
} ->
package { 'mongodb':
    ensure => present
}

# npm modules

package { 'mocha':
  provider => npm
} ->
package { 'coffee-script':
  provider => npm
}

