#!/usr/bin/env bash
#  vim:ts=4:sts=4:sw=4:et
#
#  Author: Nho Luong
#  Date: 2023-06-03 02:04:01 +0100 (Sat, 03 Jun 2023)
#
#  https://github.com/nholuongut/packer
#
#  License: see accompanying nholuongut LICENSE file
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback to help steer this or other code I publish
#
#  https://www.linkedin.com/in/nholuong
#

# Downloads the Ubuntu ISO and generates an ISO with the Ubuntu AutoInstaller configs on which to boot the tart

set -euo pipefail
[ -n "${DEBUG:-}" ] && set -x
srcdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# https://ubuntu.com/download/server/arm
"$srcdir/prepare_ubuntu.sh" "ubuntu-23.04-live-server-arm64.iso"
