# Yab's Homebrew tap

Yab, Yet Another Browser: a free WebKit browser for the Mac, for people and for their AI agents.

```sh
brew install --cask yetanotherbrowser/tap/yab
```

This installs `yab.app` in Applications and the `yab` command. Needs macOS 15.4 or later. Already have Yab from the website? Add `--adopt` and Homebrew takes over the copy you have.

- Yab updates itself, several times a day when there's something new, so `brew upgrade` leaves it alone. The cask always downloads the newest build.
- The `yab` command is the app's own binary with `YAB_CLI=1` set, the same as the one Yab's Settings › Developers puts in `~/.local/bin`. Either works; you need only one.
- To connect your agents, run `yab setup` (Claude Code and Codex), or see [yab-mcp](https://github.com/yetanotherbrowser/yab-mcp) for Cursor, VS Code and other MCP clients.
- `brew uninstall --cask yab` removes the app and the command. `--zap` also removes Yab's data: tabs, history, settings and saved sign-ins. Run `yab remove` first to take Yab out of Claude Code, Codex and `~/.local/bin`.

More: [yetanotherbrowser.com](https://yetanotherbrowser.com/?ref=brew) · [Manual](https://yetanotherbrowser.com/manual)

## License

The cask is MIT, see [LICENSE](LICENSE). Yab itself is free and closed source.
