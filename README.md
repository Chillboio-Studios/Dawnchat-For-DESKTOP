<div align="center">
<h1>DawnChat for Desktop</h1>
Application for Windows, macOS, and Linux.
</div>
<br/>

## Installation

- All downloads and instructions for DawnChat can be found on our [Website](https://dawn-chat.com/download).

## Development Guide

_Contribution guidelines for Desktop app TBA!_

<!-- Before contributing, make yourself familiar with [our contribution guidelines](https://developers.revolt.chat/contrib.html), the [code style guidelines](./GUIDELINES.md), and the [technical documentation for this project](https://revoltchat.github.io/frontend/). -->

Before getting started, you'll want to install:

- [Git](https://git-scm.com/install/)
- [mise-en-place](https://mise.jdx.dev/getting-started.html)

Then proceed to setup:

```bash
# clone the repository
git clone https://git.chillboiostudios.com/Chillboio-Studios-Internal/dawnchat-for-desktop.git
cd dawnchat-for-desktop

# Install tools from mise
mise install

# install all packages
mise install:frozen

# start the application
mise dev
# ... or build the bundle
mise build
# ... or build all distributables
mise make
```

Various useful commands for development testing:

```bash
# connect to the development server
mise exec -- pnpm start -- --force-server http://localhost:5173

# test the flatpak (after `make`)
mise exec -- pnpm install:flatpak
mise exec -- pnpm run:flatpak
# ... also connect to dev server like so:
mise exec -- pnpm run:flatpak --force-server http://localhost:5173

# Nix-specific instructions for testing
nix develop
pnpm package
pnpm run:nix
# ... as before:
pnpm run:nix --force-server=http://localhost:5173
# a better solution would be telling
# Electron Forge where system Electron is
```
