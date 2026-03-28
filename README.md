# 🐍 The Open Source Audit — Python
### Shell Script Tasks | Open Source Software (OSS) Capstone Project

---

## 👩‍🎓 Student Details

| Field | Details |
|---|---|
| **Student Name** | Ishika Mittal |
| **Registration Number** | 24BAI10301 |
| **Course** | Open Source Software (OSS) |
| **Software Audited** | Python |
| **Units Covered** | 1 – 5 |

---

## 🖥️ System Requirements & Dependencies

| Requirement | Details |
|---|---|
| **OS** | Ubuntu 20.04 / 22.04 LTS (or any Debian-based Linux) |
| **Shell** | Bash (pre-installed on all Linux systems) |
| **WSL** | WSL2 on Windows 11 also supported |
| **Tools needed** | `bash`, `dpkg`, `awk`, `du`, `ls`, `grep`, `uname`, `date` |

> ✅ All tools used in these scripts come **pre-installed** on Ubuntu/Linux — no extra installations required.

---

## ⚙️ How to Set Up & Run All Scripts

### Step 1 — Clone the Repository

```bash
git clone https://github.com/<your-username>/OSS-Capstone-Python.git
cd OSS-Capstone-Python/scripts
```

### Step 2 — Give Execute Permission to All Scripts

```bash
chmod +x *.sh
```

---

## 📜 Script Descriptions & Run Instructions

---

### 📄 Script 1 — System Identity Report
**File:** `script1_system_identity.sh`
**Units:** 1 & 2

**What it does:**
Displays a formatted system identity report including the OS distribution, kernel version, logged-in user, home directory, system uptime, and current date/time. Also confirms the open-source license of the running OS and Python. Demonstrates variables, command substitution `$()`, and `echo`.

**Dependencies:** `uname`, `whoami`, `uptime`, `date`, `cat` — all pre-installed.

**How to run:**
```bash
./script1_system_identity.sh
```

**Expected output:**
```
========================================================
        OPEN SOURCE AUDIT — SYSTEM IDENTITY REPORT
========================================================

--- Student Information ---
Name              : Ishika Mittal
Registration No.  : 24BAI10301
Software Audited  : Python

--- System Information ---
Distribution      : Ubuntu 22.04.3 LTS
Kernel Version    : 5.15.90.1-microsoft-standard-WSL2
Logged In User    : ishika
Home Directory    : /home/ishika
System Uptime     : up 2 hours, 15 minutes
Date and Time     : 28 March 2026, 10:45:00

--- Open Source License ---
This system runs on Linux, licensed under GPL v2.
Python is licensed under the PSF License —
a permissive open-source license granting all four freedoms.
```

---

### 📄 Script 2 — FOSS Package Inspector
**File:** `script2_foss_inspector.sh`
**Units:** 2

**What it does:**
Checks whether `python3` is installed using `dpkg`. If installed, displays the package version, maintainer, and description. Uses a `case` statement to print a human-readable description. Demonstrates `if/else` conditional logic, `case` statements, and `grep` with pipes.

**Dependencies:** `dpkg`, `grep` — pre-installed on all Debian/Ubuntu systems.

**How to run:**
```bash
./script2_foss_inspector.sh
```

**Expected output:**
```
========================================================
           FOSS PACKAGE INSPECTOR
========================================================

✔ python3 is installed.

--- Package Details ---
Version: 3.10.6-1~22.04
Maintainer: Ubuntu Developers
Description: interactive high-level object-oriented language

--- Software Description ---
Python: A powerful open-source programming language.
```

---

### 📄 Script 3 — Disk and Permission Auditor
**File:** `script3_disk_permission.sh`
**Units:** 2

**What it does:**
Loops through key Linux system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and shows each directory's permissions, owner, group, and disk usage. Also checks Python's config directory at `/etc/python3`. Demonstrates `for` loops, `ls`, `du`, `awk`, and directory existence checks.

**Dependencies:** `ls`, `du`, `awk` — all pre-installed.

**How to run:**
```bash
./script3_disk_permission.sh
```

**Expected output:**
```
========================================================
           DISK AND PERMISSION AUDITOR
========================================================

--- Directory Audit Report ---

/etc
  Permissions : drwxr-xr-x root root
  Size        : 7.6M

/var/log
  Permissions : drwxrwxr-x root syslog
  Size        : 44M

--- Python Config Directory ---
drwxr-xr-x 2 root root 4096 Jan 10 12:00 /etc/python3
```

---

### 📄 Script 4 — Log File Analyzer
**File:** `script4_log_analyzer.sh`
**Units:** 2 & 5

**What it does:**
Reads a log file line by line and counts how many times a keyword appears. Defaults to `"error"` if no keyword is given. Shows the total count and last 5 matching lines. Demonstrates file handling, `while` loops, `if` conditions, and `grep`.

**Dependencies:** `grep` — pre-installed.

**How to run:**
```bash
# Usage: ./script4_log_analyzer.sh <logfile> [keyword]

# Option 1 — Use system syslog, search for "error"
./script4_log_analyzer.sh /var/log/syslog error

# Option 2 — Create a test log file first, then run
echo -e "error: disk full\ninfo: all good\nerror: connection refused" > test.log
./script4_log_analyzer.sh test.log error
```

**Expected output:**
```
========================================================
              LOG FILE ANALYZER
========================================================

Log File : test.log
Keyword  : 'error'

--- Result ---
Keyword 'error' found 2 times in test.log

--- Last 5 Matching Lines ---
error: disk full
error: connection refused
```

> **Note:** You must pass a valid log file path as the first argument. Use `/var/log/syslog` or create a `test.log` file as shown above.

---

### 📄 Script 5 — Open Source Manifesto Generator
**File:** `script5_manifesto_generator.sh`
**Units:** 5

**What it does:**
Interactively asks the user three questions and generates a personalized open-source manifesto, saved as `manifesto_<username>.txt`. Demonstrates interactive input (`read`), string handling, and file writing (`>` and `>>`).

**Dependencies:** `date`, `whoami` — pre-installed.

**How to run:**
```bash
./script5_manifesto_generator.sh
```

**Follow the interactive prompts:**
```
1. What open-source tool do you use daily? Python
2. What does freedom mean to you? The right to learn, modify and share
3. What do you want to build and share? An AI-powered open-source tool
```

**Expected output (printed and saved to file):**
```
=======================================================
        MY OPEN SOURCE MANIFESTO
=======================================================

Date: 28 March 2026

On 28 March 2026, I believe in open source.
I use Python in my daily life.
Freedom means The right to learn, modify and share to me.
I want to build An AI-powered open-source tool and share it with the world.

--- Signed ---
ishika
=======================================================

✔ Manifesto saved to: manifesto_ishika.txt
```

---

## 🔑 Quick Reference — All Run Commands

```bash
# Step 1: Give execute permissions to all scripts
chmod +x *.sh

# Script 1 — No arguments needed
./script1_system_identity.sh

# Script 2 — No arguments needed
./script2_foss_inspector.sh

# Script 3 — No arguments needed
./script3_disk_permission.sh

# Script 4 — Requires a log file path; keyword is optional (default: error)
echo -e "error: disk full\ninfo: ok\nerror: timeout" > test.log
./script4_log_analyzer.sh test.log error

# Script 5 — No arguments; will prompt you for input
./script5_manifesto_generator.sh
```

---

## 📜 License

This project is submitted as academic coursework for the **Open Source Software** course at **VIT**.
The audited software — **Python** — is licensed under the [PSF License](https://docs.python.org/3/license.html).

---

## 🙌 Acknowledgements

- [Python Software Foundation](https://www.python.org/psf/)
- [GNU Free Software Foundation](https://www.gnu.org/)
- VITyarthi | Open Source Software Course (NGMC)
