# Linux Server Health Monitor

A Bash Shell Scripting project that monitors the health of a Linux server and generates a simple health report.

## 📌 Project Overview

The **Linux Server Health Monitor** is a Bash script designed to check important Linux server resources and services.

It helps administrators quickly identify resource usage and potential issues such as high CPU, memory, or disk usage.

## 🚀 Features

* Check Linux server hostname
* Monitor CPU usage
* Monitor memory usage
* Monitor disk usage
* Check `/etc` directory availability
* Check Nginx service status
* Count `ERROR` messages in log files
* Display warnings when resource usage is high
* Generate a simple server health report

## 🛠️ Technologies Used

* Linux
* Bash Shell Scripting
* Git
* GitHub

## 📂 Project Structure

```text
server-health-monitor/
│
├── health_check.sh
└── README.md
```

## 🔧 Linux Commands Used

The project uses several Linux commands:

```text
hostname
df
top
free
systemctl
grep
awk
tail
tr
wc
```

## ▶️ How to Run

### 1. Clone the repository

```bash
git clone <your-github-repository-url>
```

### 2. Enter the project directory

```bash
cd server-health-monitor
```

### 3. Give execute permission

```bash
chmod +x health_check.sh
```

### 4. Run the script

```bash
./health_check.sh
```

You can also run it using:

```bash
bash health_check.sh
```

## 📊 Sample Output

```text
================================
     SERVER HEALTH REPORT
================================
Hostname : ip-172-31-11-6
Disk Usage : 42%
CPU Usage  : 10%
Memory Usage : 34%
/etc : EXISTS
nginx : RUNNING
ERROR count : 0
Disk Status : NORMAL
CPU Status : NORMAL
Memory Status : NORMAL
================================
   HEALTH CHECK COMPLETED
================================
```

## ⚠️ Health Checks

The script checks resource usage against a threshold.

For example:

```bash
if [ "$disk" -ge 80 ]
then
    echo "WARNING : Disk usage is HIGH"
else
    echo "Disk Status : NORMAL"
fi
```

If disk, CPU, or memory usage reaches **80% or higher**, the script displays a warning.

## 🎯 Learning Outcomes

Through this project, I practiced:

* Bash scripting
* Variables
* Command substitution
* Conditional statements
* Functions
* Exit status
* Pipes and redirection
* `grep`
* `awk`
* `sed`
* `cut`
* `find`
* Linux system monitoring commands
* Git and GitHub

## 🔮 Future Improvements

* Add email alerts
* Add Slack notifications
* Monitor multiple servers
* Monitor Docker containers
* Add Jenkins pipeline integration
* Store health reports in log files
* Schedule automatic monitoring using Cron

## 👨‍💻 Author

**Ganesh Nangili**

GitHub: https://github.com/ganesh939259-dotcom

LinkedIn: https://www.linkedin.com/in/nangili-ganesh-8b1a02262/
