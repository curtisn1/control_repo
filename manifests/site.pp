node default {
}
node 'ip-192-168-0-247.eu-north-1.compute.internal' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => $fqdn,
   }
 }
 node /^web/ {
  include role::app_server
 } 
node /^db/ {
  include role::db_server
 }
