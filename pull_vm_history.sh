#!/bin/bash

# -------- CONFIGURE THESE VALUES --------
VM_USER="kishan"                # your Ubuntu username in the VM
VM_HOST="192.168.64.2"          # your VM IP (update if it changes)
VM_HISTORY_FILE="~/dumps.txt"   # where the dump will be created in the VM

# Where to store history dumps on your Mac
LOCAL_BASE="$HOME/Documents/devops-mastery-journal/command-dumps"
DATE_STAMP=$(date +%Y-%m-%d)
LOCAL_FILE="$LOCAL_BASE/history-$DATE_STAMP.txt"
# ---------------------------------------

echo "[*] Connecting to $VM_USER@$VM_HOST and generating history dump..."

# 1) On the VM: write Bash history into dumps.txt
ssh "$VM_USER@$VM_HOST" 'history > ~/dumps.txt'

# 2) Ensure local target directory exists
mkdir -p "$LOCAL_BASE"

echo "[*] Copying history file to your Mac: $LOCAL_FILE"

# 3) Copy from VM -> Mac
scp "$VM_USER@$VM_HOST:$VM_HISTORY_FILE" "$LOCAL_FILE"

echo "[✔] Done. Saved VM commands to: $LOCAL_FILE"

