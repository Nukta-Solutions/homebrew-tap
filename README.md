# Nukta Solutions Homebrew tap

```sh
brew install --cask nukta-solutions/tap/nukta-bangla
```

| Cask | What it is |
|---|---|
| `nukta-bangla` | [নুকতা বাংলা](https://github.com/Nukta-Solutions/nukta-bangla-keyboard): Bijoy and phonetic Bangla keyboard for macOS 13+ |

After installing, log out and back in, then add the keyboard in System Settings → Keyboard →
Input Sources → Edit… → **+** → Bangla → **নুকতা বাংলা**.

`brew uninstall --cask nukta-bangla` removes it; add `--zap` to also delete its settings and
learned words.

The cask is updated automatically by the release workflow in
[nukta-bangla-keyboard](https://github.com/Nukta-Solutions/nukta-bangla-keyboard/blob/main/.github/workflows/release.yml).
