set shell := ["zsh", "-uc"]

# lists all available commands
@default:
  just --list

alias init := initialize
alias fmt := format

# internal helper command to easier run commands from the shared justfile
_run_shared cmd *args:
  @just -f {{justfile_directory()}}/.github/justfile.shared -d {{justfile_directory()}} {{cmd}} {{args}}

# install all required tooling for development (osx only)
install:
  @just _run_shared install

# initializes the tooling for working with this repository
initialize:
  @just _run_shared initialize

# formats files according to the used standards and rules
format *files:
  @just _run_shared format {{files}}

# checks if the files comply to the used standards and rules
check *files:
  @just _run_shared check {{files}}

# runs the CI workflows locally
ci *args:
  @just _run_shared ci {{args}}
