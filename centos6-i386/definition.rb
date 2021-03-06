Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '1024',
  :disk_size => '2048',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'RedHat6',
  :iso_file => "CentOS-6.5-i386-minimal.iso",
  :iso_src => "http://yum.singlehop.com/CentOS/6.5/isos/i386/CentOS-6.5-i386-minimal.iso",
  :iso_md5 => "a4f27ab51d0d2c9d36b68c56b39f752b",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "2222", :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "shutdown -H",
  :postinstall_files => [ ],
  :postinstall_timeout => "10000"
})
