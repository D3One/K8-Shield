#!/bin/bash

# K8-Shield TUI (Text User Interface)
# Based on 'dialog' utility

# Check if dialog is installed
if ! command -v dialog &> /dev/null; then
    echo "ERROR: 'dialog' utility is not installed. Please install it to use the TUI."
    echo "For Ubuntu/Debian: sudo apt-get install dialog"
    echo "For CentOS/RHEL: sudo yum install dialog"
    exit 1
fi

# Main menu function
show_main_menu() {
    # Create a dialog menu with options
    choice=$(dialog --clear \
                --backtitle "K8-Shield - Kubernetes Security Scanner" \
                --title "MAIN MENU" \
                --menu "Choose an option:" \
                15 60 5 \
                1 "Run Full Security Scan" \
                2 "Check Network Policies" \
                3 "Check Pod Security Standards" \
                4 "Show Previous Report" \
                5 "Exit" \
                2>&1 >/dev/tty)

    # Handle the user's choice
    case $choice in
        1)
            run_full_scan
            ;;
        2)
            run_network_scan
            ;;
        3)
            run_pod_security_scan
            ;;
        4)
            show_report
            ;;
        5)
            clear
            echo "Thank you for using K8-Shield! Stay secure!"
            exit 0
            ;;
        *)
            clear
            echo "Invalid option. Exiting."
            exit 1
            ;;
    esac
}

# Function to run full scan
run_full_scan() {
    (# Start a subshell for progress dialog
    echo "10" ; sleep 1
    echo "XXX" ; echo "Checking RBAC settings..." ; echo "XXX"
    echo "20" ; sleep 1
    
    echo "XXX" ; echo "Scanning network policies..." ; echo "XXX"
    echo "40" ; sleep 1
    
    echo "XXX" ; echo "Checking pod security..." ; echo "XXX"
    echo "60" ; sleep 1
    
    echo "XXX" ; echo "Analyzing container security..." ; echo "XXX"
    echo "80" ; sleep 1
    
    echo "XXX" ; echo "Generating report..." ; echo "XXX"
    echo "100" ; sleep 1
    ) | dialog --title "Scanning in Progress" --gauge "Please wait while K8-Shield scans your cluster..." 10 60 0

    # Here you would call your actual scanning functions
    # For example:
    # ./k8-shield.sh --full-scan | tee /tmp/k8-shield-report.txt
    
    # Show results
    dialog --title "Scan Complete" --msgbox "Full security scan completed successfully!\n\nReport saved to /tmp/k8-shield-report.txt" 10 60
}

# Function to run network scan
run_network_scan() {
    # Simulate network scan
    (echo "30" ; sleep 1
     echo "XXX" ; echo "Checking ingress policies..." ; echo "XXX"
     echo "60" ; sleep 1
     echo "XXX" ; echo "Analyzing egress rules..." ; echo "XXX"
     echo "100" ; sleep 1
    ) | dialog --title "Network Scan" --gauge "Scanning network policies..." 10 60 0
    
    # Your actual network scanning command here
    # ./k8-shield.sh --network | tee /tmp/k8-shield-network.txt
    
    dialog --title "Network Scan Results" --msgbox "Network policy scan completed.\n\n$(head -n 10 /tmp/k8-shield-network.txt 2>/dev/null || echo "No network issues found")" 15 60
}

# Function to run pod security scan
run_pod_security_scan() {
    # Your pod security scanning logic here
    # ./k8-shield.sh --pod-security | tee /tmp/k8-shield-pod.txt
    
    dialog --title "Pod Security Results" --textbox /tmp/k8-shield-pod.txt 20 60
}

# Function to show previous report
show_report() {
    if [ -f "/tmp/k8-shield-report.txt" ]; then
        dialog --title "Previous Scan Report" --textbox /tmp/k8-shield-report.txt 20 60
    else
        dialog --title "Error" --msgbox "No previous report found.\nPlease run a scan first." 10 60
    fi
}

# Cleanup function
cleanup() {
    clear
    rm -f /tmp/dialog_*
}

# Set trap for cleanup
trap cleanup EXIT

# Start the interface
while true; do
    show_main_menu
done
