[![English](https://img.shields.io/badge/lang-English-blue)](README.md) [![日本語](https://img.shields.io/badge/lang-日本語-orange)](README.ja.md)

# my-codex-cli-config

This repository manages my AGENTS.md file for Codex CLI.

## Structure

- agents.xml: The actual content backing `AGENTS.md`. Create a symlink from `~/.codex/AGENTS.md` to this file.
- Makefile: Provides commands to create and remove the symlink.

## Usage

Create a symlink from `~/.codex/AGENTS.md` to `agents.xml`:

```sh
cd my-codex-cli-config
make codex-link
```

To remove the symlink:

```sh
make codex-unlink
```

## Why define AGENTS.md in XML

According to the GPT-5 for Coding Cheatsheet (PDF), using XML-like tags to structure instructions is recommended. The cheatsheet clearly states “XML-like syntax to help structure instructions” and provides concrete examples.

The `agents.xml` in this repository was authored with that cheatsheet as a reference.

## References

- [GPT-5 for Coding Cheatsheet (PDF)](https://cdn.openai.com/API/docs/gpt-5-for-coding-cheatsheet.pdf)
- [GPT-5 prompting guide](https://cookbook.openai.com/examples/gpt-5/gpt-5_prompting_guide)
