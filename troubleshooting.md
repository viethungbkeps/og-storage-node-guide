# Troubleshooting Guide

This document lists common issues and possible solutions when operating an OG Storage Node.

---

## Service Failed to Start

### Symptoms

- systemctl shows failed
- Node exits immediately

### Solution

```bash
sudo systemctl status zgs
journalctl -u zgs -n 100
```

Check configuration files and service logs.

---

## Node Cannot Sync

### Symptoms

- Sync progress stays at 0%
- Block height does not increase

### Solution

- Check Internet connection.
- Verify peer configuration.
- Restart the service.

---

## Port Already in Use

### Symptoms

Address already in use.

### Solution

Find the process.

```bash
sudo lsof -i :5678
```

Kill the process if necessary.

```bash
sudo kill -9 PID
```

---

## Low Disk Space

### Symptoms

Storage is full.

### Solution

```bash
df -h
```

Clean unnecessary files or expand the disk.

---

## High Memory Usage

### Check

```bash
free -h
```

```bash
htop
```

Restart the service if required.

---

## Log Files

View logs.

```bash
journalctl -u zgs -f
```

---

## Still Need Help?

- Check the official documentation.
- Ask the community on Discord.
- Search existing GitHub Issues.
