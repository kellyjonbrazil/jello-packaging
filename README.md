# Jello Packages

Filter JSON and JSON Lines data with Python syntax. For more information, please see the project on [GitHub](https://github.com/kellyjonbrazil/jello).

## Installing Jello
You can install `jello` via `pip`, via OS Package Repository, MSI installer for Windows, or by downloading the correct binary for your architecture and running it anywhere on your filesystem.

### Pip (macOS, linux, unix, Windows)
For the most up-to-date version and the most cross-platform option, use `pip` or `pip3` to download and install `jello` directly from [PyPi](https://pypi.org/project/jello/):

![Pypi](https://img.shields.io/pypi/v/jello.svg)


```bash
pip3 install jello
```

### OS Packages

| OS                    | Command                                                                       | 
|-----------------------|-------------------------------------------------------------------------------|
| Debian linux          | `apt-get install jello`                                                          |
| Arch linux            | `pacman -S jello`                                                             |
| macOS                 | `brew install jello`                                                          |

[![Packaging status](https://repology.org/badge/vertical-allrepos/jello.svg)](https://repology.org/project/jello/versions)

### MSI Installer (Windows 2016+)
The MSI Installer packages for Windows are built from PyPi and can be installed on modern versions of Windows. These installers may not always be on the very latest `jello` version, but are regularly updated.

| Version   | File                                                                                    | SHA256 Hash                                                       |
|-----------|-----------------------------------------------------------------------------------------|-------------------------------------------------------------------|
| 1.4.4     | [jello-1.4.4.msi](https://jello-packages.s3-us-west-1.amazonaws.com/jello-1.4.4.msi)    | d9ad008ec26119aa3de645d2390d6653f11d533d5dc3e0f0b3dcb5d243c14fe0  |
| 1.4.0     | [jello-1.4.0.msi](https://jello-packages.s3-us-west-1.amazonaws.com/jello-1.4.0.msi)    | 7021241155e162b4f3f951d51dd8c2625b4f43ac6899648a266107c571f41bfb  |
| 1.3.6     | [jello-1.3.6.msi](https://jello-packages.s3-us-west-1.amazonaws.com/jello-1.3.6.msi)    | 1d0919eb7277c04d15480a782b7f65438855f3556497e7c31f11154a081610ad  |
| 1.3.3     | [jello-1.3.3.msi](https://jello-packages.s3-us-west-1.amazonaws.com/jello-1.3.3.msi)    | 27ab9c84278cca966af8292e0118d9fc54807f54f2b057f7a99b6ac0ef6c6b28  |
| 1.2.11    | [jello-1.2.11.msi](https://jello-packages.s3-us-west-1.amazonaws.com/jello-1.2.11.msi)  | 08da1c91e5d1930542529473350dc10ffc3d4adf5c06cc365c333663ac82a8fc  |

### Binaries (x86_64)
Linux and macOS x86_64 binaries are built from PyPi and can be copied to any location in your path and run. These binaries may not always be on the very latest `jello` version, but are regularly updated.

#### Linux (Fedora, RHEL, CentOS, Debian, Ubuntu)

| Version   | File                                                                                                               | SHA256 Hash (binary file)                                         |
|-----------|--------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
| 1.4.5     | [jello-1.4.5-linux.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.4.5-linux-x86_64.tar.gz)  | 29b8d5a0cdcccb78ffb85fbe231d601a75818ae6259fa89255b80095d9762c34  |
| 1.4.4     | [jello-1.4.4-linux.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.4.4-linux-x86_64.tar.gz)  | 9f0b241350425193c13105f50059493e2484620276b3cf6665c7012dfc48e76d  |
| 1.4.0     | [jello-1.4.0-linux.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.4.0-linux-x86_64.tar.gz)  | ea97482bee7112e77c27023014e640dfd942991719cec38116cf3905f679b874  |
| 1.3.6     | [jello-1.3.6-linux.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.3.6-linux-x86_64.tar.gz)  | 73915541c1985c259d2ceed5f7ade109b156da4ff59f7af0a3c0298057884884  |
| 1.3.3     | [jello-1.3.3-linux.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.3.3-linux-x86_64.tar.gz)  | ac27dd672de794ec26477994d40ff4d060537691f3ca6eafd84c2ab2bf1470ca  |
| 1.2.9     | [jello-1.2.9-linux.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.2.9-linux.tar.gz)         | ffe8dfe2cc1dc446aeade32078db654de604176976be5dee89f83f0049551c45  |


#### macOS (Mojave and higher)

| Version   | File                                                                                                                 | SHA256 Hash (binary file)                                         |
|-----------|----------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
| 1.4.5     | [jello-1.4.5-darwin.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.4.5-darwin-x86_64.tar.gz)  | 7e7a9b8dfe9e8d988930bcafc69f0ea97382f08c02550d2fd4b5bfeca6ec7ecb  |
| 1.4.4     | [jello-1.4.4-darwin.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.4.4-darwin-x86_64.tar.gz)  | dda4efd5de2ff56806f545f15a2d6095845c05106fab046737a5e27c9d22dfb9  |
| 1.4.0     | [jello-1.4.0-darwin.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.4.0-darwin-x86_64.tar.gz)  | 56f94e08524be8aecc66a91b6886df09b1dc7089755c8d4f7bdca3ba088fa413  |
| 1.3.6     | [jello-1.3.6-darwin.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.3.6-darwin-x86_64.tar.gz)  | acb9c04a7a7e32e10cff83b6f2ff06407fae7172d6ff633bb3221487763c5521  |
| 1.3.3     | [jello-1.3.3-darwin.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.3.3-darwin-x86_64.tar.gz)  | c5fa3c08960d2e11a6bbab9755a1b3b42897526b3e2b5bc49f686b59704d9ed8  |
| 1.2.9     | [jello-1.2.9-darwin.tar.gz](https://jello-packages.s3-us-west-1.amazonaws.com/bin/jello-1.2.9-darwin.tar.gz)         | 9355bf19212cce60f5f592a1a778fdf26984f4b86968ceca2a3e99792c258037  |
