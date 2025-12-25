import subprocess
import os
import sys

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
CONFIG_FILE = os.path.join(BASE_DIR, "mysettings.conf")
SCRIPT_PATH = os.path.join(BASE_DIR, "main_script.sh")

def run_automated():
    if not os.path.exists(CONFIG_FILE):
        return

    with open(CONFIG_FILE, "r") as f:
        inputs = f.read().strip()

    process = subprocess.Popen(
        ['sudo', '/run/current-system/sw/bin/bash', SCRIPT_PATH],
        stdin=subprocess.PIPE,
        text=True,
        cwd=BASE_DIR  
    )

    process.communicate(input=inputs)

if __name__ == "__main__":
    run_automated()
