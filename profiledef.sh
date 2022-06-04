#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="myArch"
iso_label="MYARCH_$(date +%Y%m)"
iso_publisher="myArch Linux"
iso_application="myArch Installer"
iso_version="$(date +%Y.%m.%d)"
install_dir="myarch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/gshadow"]="0:0:400"	
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/usr/local/bin/myarch-before"]="0:0:755"
  ["/usr/local/bin/myarch-final"]="0:0:755"
)
