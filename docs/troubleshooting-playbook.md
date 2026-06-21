# Troubleshooting Playbook

## Execution Policy Error

### Error

Scripts cannot be loaded because running scripts is disabled.

### Solution

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

## GitHub Push Error 403

### Error

Permission denied.

### Solution

- Remove old GitHub credentials from Credential Manager.
- Sign in with the correct GitHub account.

---

## DNS Resolution Failure

### Solution

- Verify internet connectivity.
- Check DNS server settings.
- Run:

```powershell
Resolve-DnsName google.com
```

---

## Port Connectivity Failure

### Solution

Run:

```powershell
Test-NetConnection google.com -Port 443
```

---

## Network Diagnostics

Run:

```powershell
.\network-scripts\report-generator.ps1
```