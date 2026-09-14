# Supercov's Homebrew tap

Coverage for coding agents and software factories.

```sh
brew install supercorp-ai/tap/supercov
```

The formula installs the same prebuilt binary every other channel ships, at the
same version. Nothing is compiled on install.

`Formula/supercov.rb` is generated — it carries a checksum per platform, so it
is rewritten for each release by the `homebrew` job in
[supercorp-ai/supercov](https://github.com/supercorp-ai/supercov)'s publish
workflow. Do not edit it by hand.

Supercov itself lives at [supercorp-ai/supercov](https://github.com/supercorp-ai/supercov).
