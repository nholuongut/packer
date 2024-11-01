#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Nho Luong
#  Date: 2023-06-02 05:26:55 +0100 (Fri, 02 Jun 2023)
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
srcdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Packer Environment Variables:"
echo
env | grep PACKER | sort || :
echo
dir="$srcdir/../share"
echo "Creating $dir"
mkdir -p -v "$dir"
echo
echo "Adding Shared Folder '$dir' to VM"
VBoxManage sharedfolder add "${VM_NAME:-$PACKER_BUILD_NAME}" --name vboxsf --hostpath "$dir" --automount --transient
