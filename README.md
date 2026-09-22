# Ada Programs — Learning and Experiments

A growing collection of Ada programs written while learning the language — from "Hello World" upward.

## Prerequisites

- [Alire](https://alire.ada.dev/) — the Ada package manager (install via `alr` binary or Homebrew)
- GNAT toolchain — Alire fetches it automatically on first build

```bash
# Install Alire (Apple Silicon)
curl -sL "https://github.com/alire-project/alire/releases/download/v2.1.1/alr-2.1.1-bin-aarch64-macos.zip" -o /tmp/alr.zip
unzip -o /tmp/alr.zip -d /tmp
mkdir -p ~/bin && mv /tmp/bin/alr ~/bin/alr && chmod +x ~/bin/alr

# Install the GNAT toolchain (first time only)
alr toolchain --select gnat_native=16.1.0
```

## Building

```bash
cd hello_ada
alr build
./bin/hello_ada
```

Or directly with the toolchain in your PATH:

```bash
export PATH="$HOME/.local/share/alire/toolchains/gnat_native_16.1.0_657cf254/bin:$HOME/bin:$PATH"
cd hello_ada
gnatmake src/hello_ada.adb -o hello_ada
./hello_ada
```

## Programs

| Directory | Description |
|-----------|-------------|
| `hello_ada/` | First program — Hello World with a demo of strong typing (range-constrained `Altitude_Ft`) |

More programs to come as we explore: tasks/concurrency, protected types, generics, SPARK contracts, and formal verification.

## Resources

- [Ada 2012 Reference Manual (ISO/IEC 8652:2012)](https://www.iso.org/standard/62242.html)
- [AdaCore Learn — Ada and SPARK tutorials](https://learn.adacore.com/)
- [ Alire — Ada package manager](https://alire.ada.dev/)
- *Programming in Ada 2012* by John Barnes
- *Building High Integrity Applications with SPARK* by Barret, Taft, et al.
