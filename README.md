# Markdown for Teams

Microsoft Teams understands some Markdown as you type, but pasted Markdown stays as literal text. Teams does accept a limited set of rich HTML from the clipboard.

This app renders Markdown locally and copies simplified HTML that you can paste into Teams with formatting intact.

## How transformation works

Markdown is rendered locally, then copied as simplified rich HTML because Teams does not render pasted Markdown.

The default **Teams-optimized** heading mode normalizes the relative hierarchy, maps the first two levels to H1/H2, and converts deeper levels to bold body text. **Native headings** keeps every normalized level as a heading, while **All bold text** converts all headings to bold body text. The selected mode is remembered in browser `localStorage`.

Microsoft Teams renders pasted H3 and deeper headings smaller than normal body text in messages and replies, making them look absurdly tiny, so Teams-optimized mode keeps only explicit bold H1/H2 and converts H3+ into bold body text.

Two-space indentation creates nested lists. Ordinary paragraph breaks are preserved, while headings and lists use native spacing to avoid doubled gaps.

**Copy for Teams** places rich HTML and plain text on the clipboard. If clipboard permissions are blocked, **Select manually** provides a Ctrl/Cmd+C path. The **Rendered / HTML** switch shows either the formatted preview or the exact simplified HTML.

Content and settings remain local to the browser.

## Local

Requires [Node.js](https://nodejs.org/) and [`just`](https://github.com/casey/just). The command uses `npx` to download and run `serve` automatically at `http://localhost:3000`.

```sh
just run-node
```
