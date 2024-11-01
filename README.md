# HashiCorp Packer templates

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

Packer templates for building portable OVA virtual machines images.

Useful for IoT edge sites, [Kubernetes](https://github.com/nholuongut/kubernetes-configs) base servers etc.

Bare metal servers can be installed using each Linux distro's native [automated installers](https://github.com/nholuongut/packer/tree/main/installers).

Virtual Machines as appliances in portable OVA format are 100% automated using the installers above.

The primary templates are for the main Linux distributions:

- Ubuntu - using Ubuntu [AutoInstaller](https://github.com/nholuongut/packer/blob/main/installers/autoinstall-user-data)
- Debian - using Debian [Preseeding](https://github.com/nholuongut/packer/blob/main/installers/preseed.cfg)
- Redhat - using Redhat [Kickstart](https://github.com/nholuongut/packer/blob/main/installers/anaconda-ks.cfg)
  - Redhat Enterprise Linux (RHEL)
  - CentOS (end-of-life)
  - Rocky Linux (CentOS replacement)
  - Fedora

VM OVA appliances can be created in any number of different virtualization systems supported by Packer.

You must install your virtualization system before running Packer.

The following builds are provided for these combinations of Linux distros, arches and virtualization systems:

- [VirtualBox](https://www.virtualbox.org/)
  - x86_64:
    - [debian-x86_64.vbox.pkr.hcl](https://github.com/nholuongut/packer/blob/main/debian-x86_64.vbox.pkr.hcl)
    - [fedora-x86_64.vbox.pkr.hcl](https://github.com/nholuongut/packer/blob/main/fedora-x86_64.vbox.pkr.hcl)
    - [rocky-x86_64.vbox.pkr.hcl](https://github.com/nholuongut/packer/blob/main/rocky-x86_64.vbox.pkr.hcl)
    - [ubuntu-x86_64.vbox.pkr.hcl](https://github.com/nholuongut/packer/blob/main/ubuntu-x86_64.vbox.pkr.hcl)
- [Qemu](https://www.qemu.org/)
  - x86_64:
    - [debian-x86_64.qemu.pkr.hcl](https://github.com/nholuongut/packer/blob/main/debian-x86_64.qemu.pkr.hcl)
    - [fedora-x86_64.qemu.pkr.hcl](https://github.com/nholuongut/packer/blob/main/fedora-x86_64.qemu.pkr.hcl)
    - [rocky-x86_64.qemu.pkr.hcl](https://github.com/nholuongut/packer/blob/main/rocky-x86_64.qemu.pkr.hcl)
    - [ubuntu-x86_64.qemu.pkr.hcl](https://github.com/nholuongut/packer/blob/main/ubuntu-x86_64.qemu.pkr.hcl)
  - arm64:
    - [debian-arm64.qemu.pkr.hcl](https://github.com/nholuongut/packer/blob/main/debian-arm64.qemu.pkr.hcl)
    - [fedora-arm64.qemu.pkr.hcl](https://github.com/nholuongut/packer/blob/main/fedora-arm64.qemu.pkr.hcl)
    - [rocky-arm64.qemu.pkr.hcl](https://github.com/nholuongut/packer/blob/main/rocky-arm64.qemu.pkr.hcl)
    - [ubuntu-arm64.qemu.pkr.hcl](https://github.com/nholuongut/packer/blob/main/ubuntu-arm64.qemu.pkr.hcl)
- [Tart](https://tart.run/)
  - arm64:
    - [debian-arm64.tart.http.pkr.hcl](https://github.com/nholuongut/packer/blob/main/debian-arm64.tart.http.pkr.hcl)
    - [fedora-arm64.tart.http.pkr.hcl](https://github.com/nholuongut/packer/blob/main/fedora-arm64.tart.http.pkr.hcl)
    - [rocky-arm64.tart.http.pkr.hcl](https://github.com/nholuongut/packer/blob/main/rocky-arm64.tart.http.pkr.hcl)
    - [ubuntu-arm64.tart.http.pkr.hcl](https://github.com/nholuongut/packer/blob/main/ubuntu-arm64.tart.http.pkr.hcl)

## Quick Start

Running `make <distro>` will build the portable virtual machine OVA for that Linux distribution 100% automated using that distro's native installer's automation method:

```shell
make debian
```

results in:

```none
output-debian/debian-12.ova
output-debian/debian-12.md5
output-debian/debian-12.sha512
```

You can then just import the `debian.ova` file on any virtualization platform such as VMware vSphere or your local VirtualBox.

## Easy Customization

Tweak the corresponding text files for that distro eg.

```none
*.pkr.hcl
installers/*
scripts/*
```

and then re-run

```shell
make <distro>
```

or for a specific build:

```shell
make <distro>-<major_version>
```

# 🚀 I'm are always open to your feedback.  Please contact as bellow information:
### [Contact ]
* [Name: nho Luong]
* [Skype](luongutnho_skype)
* [Github](https://github.com/nholuongut/)
* [Linkedin](https://www.linkedin.com/in/nholuong/)
* [Email Address](luongutnho@hotmail.com)
* [PayPal.me](https://www.paypal.com/paypalme/nholuongut)

![](https://i.imgur.com/waxVImv.png)
![](Donate.png)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/nholuong)