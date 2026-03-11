# Homebrew Tap for openhook

Webhook relay service for AI agents.

## Installation

```bash
brew tap openhook-dev/openhook
brew install openhook
```

## Usage

```bash
# Authenticate
openhook auth login --key oh_live_xxxxxxxx

# Subscribe to events
openhook subscribe github --repo owner/repo --events push,pull_request

# Start daemon
openhook daemon start --openclaw
```

## Links

- **Website**: https://openhook.dev
- **Documentation**: https://docs.openhook.dev
- **GitHub**: https://github.com/openhook-dev/openhook
