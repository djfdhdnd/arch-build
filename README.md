Use Github Actions to build Arch packages.

For more information, please read [this post](https://viflythink.com/Use_GitHubActions_to_build_AUR/) (Chinese).

The uploadToOneDrive job is optional, you can use [urepo](https://github.com/vifly/urepo) to create your package repositorie after upload to OneDrive.

---

### Usage

add commands below into `/etc/pacman.conf`

```

[packages]
SigLevel = Never
Server = https://github.com/aggjjfd/arch-build/releases/download/packages
Server = https://hub.fastgit.xyz/aggjjfd/arch-build/releases/download/packages
# Server = https://git.aya1.top/aggjjfd/arch-build/releases/download/packages

```
