# Supercorp's Homebrew tap

```sh
brew install supercorp-ai/tap/supercov   # coverage for coding agents and software factories
brew install supercorp-ai/tap/superci    # GitHub Actions and GitLab CI jobs on your own clouds
```

Each formula installs the same prebuilt binary every other channel ships, at the
same version. Nothing is compiled on install.

The formulas are generated — each carries a checksum per platform, so it is
rewritten for each release by the publish workflow of its own repository. Do not
edit them by hand.

- `Formula/supercov.rb`: [supercorp-ai/supercov](https://github.com/supercorp-ai/supercov)
- `Formula/superci.rb`: [supercorp-ai/superci](https://github.com/supercorp-ai/superci)
