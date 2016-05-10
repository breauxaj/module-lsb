# Class: lsb::params
#
# This class sets parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#
class lsb::params {
  case $::osfamily {
    'debian': {
      $lsb_package = 'lsb-release'
    }
    'redhat': {
      $lsb_package = 'redhat-lsb'
    }
    default: { }
  }

}
