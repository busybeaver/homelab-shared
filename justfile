set dotenv-load := true
set shell := ["zsh", "-cu"]

@default:
  just --list

# from the shared justfile

alias init := initialize
alias fmt := format

_run_shared cmd *args:
  @just -f {{justfile_directory()}}/.github/justfile.shared -d {{justfile_directory()}} {{cmd}} {{args}}

install:
  @just _run_shared install
  brew install pulumi snapcraft git-crypt fnm

initialize:
  @just _run_shared initialize

format:
  @just _run_shared format

check:
  @just _run_shared check

ci *args:
  @just _run_shared ci {{args}}
