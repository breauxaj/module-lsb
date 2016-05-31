# Class: lsb::params
#
# This class sets parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#
class lsb::params {
  case $::osfamily {
    'Debian': {
      $lsb_package = 'lsb-release'
    }
    'RedHat': {
      $lsb_package = 'redhat-lsb'
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}