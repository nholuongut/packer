#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Nho Luong
#  Date: 2023-06-02 05:08:31 +0100 (Fri, 02 Jun 2023)
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

packer_version="$1"

sudo=""
if [ "$EUID" -ne 0 ]; then
    sudo=sudo
fi

echo "Environment:"
echo
env
echo
echo "Built using Packer version '${packer_version}'" | $sudo tee /etc/packer-version
