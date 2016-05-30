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
      case $::operatingsystemmajrelease {
        '8': {
          $lsb_package = 'lsb-release'
        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem}${::operatingsystemmajrelease} distribution.")
        }
      }
    }
    'RedHat': {
      case $::operatingsystemmajrelease {
        '6': {
          $lsb_package = 'redhat-lsb'
        }
        '7': {
          $lsb_package = 'redhat-lsb'
        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem}${::operatingsystemmajrelease} distribution.")
        }
      }
    }
    'Linux': {
      case $::operatingsystem {
        'Amazon': {
          $lsb_package = 'redhat-lsb'
        }
        default: {
          fail("The ${module_name} module is not supported on an ${::operatingsystem} distribution.")
        }
      }
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }
}