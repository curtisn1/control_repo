node default {
}
node 'ip-192-168-0-247.eu-north-1.compute.internal' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
   }
 }
 node /^web/ {
  include role::app_server
 } 
node /^db/ {
  include role::db_server
 }
node 'minetest.puppet.vm' {
  include role::minecraft_server
 }
