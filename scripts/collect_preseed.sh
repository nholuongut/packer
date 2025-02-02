#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Nho Luong
#  Date: 2023-06-05 19:07:43 +0100 (Mon, 05 Jun 2023)
#
#  https://github.com/nholuongut/packer
#
#  License: see accompanying nholuongut LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/in/nholuong
#

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
#srcdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sudo=""
if [ $EUID -ne 0 ]; then
    sudo=sudo
fi

distro="$(awk -F= '/^ID=/{print $2}' /etc/os-release)"
version="$(awk -F= '/^VERSION_ID=/{print $2}' /etc/os-release | sed 's/"//g')"

echo "Distro was detemined to be '$distro-$version'"
echo

echo "Dumping debconf-get-selections --installer to preseed.cfg-$distro-$version"
$sudo debconf-get-selections --installer > "/mnt/host/preseed.cfg-$distro-$version"

echo "Dumping debconf-get-selections to debconf-selections.cfg-$distro-$version"
$sudo debconf-get-selections > "/mnt/host/debconf-selections.cfg-$distro-$version"
