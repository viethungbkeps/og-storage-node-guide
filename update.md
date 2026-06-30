# OG Storage Node Update Guide

This document describes the recommended process for updating an OG Storage Node.

## Before Updating

- Check the latest release notes.
- Backup important configuration files.
- Ensure sufficient disk space is available.

## Stop the Service

```bash
sudo systemctl stop zgs
```

## Backup Configuration

```bash
cp config.toml config.toml.backup
```

## Pull the Latest Source

```bash
git pull
```

## Rebuild (if required)

```bash
cargo build --release
```

or

```bash
docker compose pull
docker compose up -d
```

## Restart the Service

```bash
sudo systemctl start zgs
```

## Verify

Check the service status.

```bash
sudo systemctl status zgs
```

View logs.

```bash
journalctl -u zgs -f
```

## Post-Update Checklist

- Node is online.
- No sync errors.
- Storage path is accessible.
- Peer connections are healthy.

---

Last updated: July 2026
