# PHTV Homebrew tap migration

[PHTV](https://github.com/PhamHungTien/PHTV) is now available in the official
[Homebrew Cask repository](https://formulae.brew.sh/cask/phtv).

## Install

```bash
brew install --cask phtv
```

Requires macOS 14 or later. Apple Silicon and Intel downloads are supported.

## Existing tap users

This repository remains available with `tap_migrations.json` so Homebrew can
resolve the old `phamhungtien/tap/phtv` name to `homebrew/cask/phtv`.

```bash
brew update
brew info --cask phtv
```

The `From` line confirms the official cask is available; it does not prove
that an existing installation has changed taps. If you installed from this
tap and have not switched manually, quit PHTV and run:

```bash
brew uninstall --cask phamhungtien/tap/phtv
brew install --cask homebrew/cask/phtv
```

Do not use `--zap` during migration: it removes PHTV settings and user data.
Confirm the official cask is available before uninstalling your existing copy:

```bash
brew info --cask homebrew/cask/phtv
```

After a successful switch, if you do not use any other packages from this tap:

```bash
brew untap phamhungtien/tap
```

macOS may ask you to grant PHTV its input-control permission again after replacing
the application. Follow the [installation guide](https://github.com/PhamHungTien/PHTV/blob/main/docs/INSTALL.md).

Future cask updates are maintained in `Homebrew/homebrew-cask`; this tap no
longer publishes its own PHTV cask. PHTV also supports updates via Sparkle.

## Links

- [PHTV homepage](https://phamhungtien.com/PHTV/)
- [Official cask](https://formulae.brew.sh/cask/phtv)
- [Source and releases](https://github.com/PhamHungTien/PHTV)
- [Report PHTV issues](https://github.com/PhamHungTien/PHTV/issues)
