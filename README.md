# homelab-shared

Shared configurations, files, and CI workflows.

## Setup

On macOS run the following command to install just:

```shell
brew install just
```

For other operating systems, have a look at the installation section in the [just documentation](https://github.com/casey/just/tree/df8eabb3ef705e0807b863db2a0c99061f691bbe#packages=).

Subsequently, setup the repository:

```shell
# install the required tooling: the install step uses brew and therefore works only on macos;
# on other operation systems check the needed tools in the justfile.shared and install these manually
just install
# initialize the tooling
just init
```

## Development

Use [act](https://github.com/nektos/act) to run the GitHub Actions CI flow locally.
