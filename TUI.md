
# K8-Shield TUI (Text User Interface)

A sleek, user-friendly terminal interface for the K8-Shield Kubernetes security scanner. This TUI wrapper enhances the original command-line tool with an interactive menu-driven experience, making security audits more intuitive and accessible.

<img width="1664" height="928" alt="image" src="https://github.com/user-attachments/assets/918d77ba-03bf-4d7b-9152-62e50cded51f" />

## Overview

K8-Shield TUI provides a pseudo-graphical interface within your terminal, built using the `dialog` utility. It allows users to navigate various security scanning options without memorizing complex command-line arguments, streamlining the process of securing Kubernetes clusters.

## Features

- **Interactive Main Menu**: Easy navigation through different scan types.
- **Visual Progress Indicators**: Real-time progress bars for ongoing scans.
- **Report Visualization**: View scan results directly in the terminal.
- **User-Friendly**: No need to remember command-line flags; ideal for both beginners and experts.

## Installation

### Prerequisites
- **K8-Shield**: Ensure the original [K8-Shield](https://github.com/D3One/K8-Shield) script is installed and functional.
- **`dialog` Utility**: Required for the TUI interface. Install it using your package manager:
  ```bash
  # Ubuntu/Debian
  sudo apt-get install dialog

  # CentOS/RHEL
  sudo yum install dialog
  ```

### Setup
1. Clone this repository or download the `k8-shield-tui.sh` script.
2. Make the script executable:
   ```bash
   chmod +x k8-shield-tui.sh
   ```
3. Ensure the script has access to the original `k8-shield` executable (adjust paths inside the script if necessary).

## Usage

Run the TUI interface by executing:
```bash
./k8-shield-tui.sh
```

### Navigation
- Use **Arrow Keys** to navigate menu options.
- Press **Enter** to select an option.
- Press **Esc** or select "Exit" to quit.

### Options
1. **Run Full Security Scan**: Comprehensive audit of RBAC, network policies, pod security, and container configurations.
2. **Check Network Policies**: Focused scan on Kubernetes network policies.
3. **Check Pod Security Standards**: Validate pods against security best practices.
4. **Show Previous Report**: Display the last generated scan report.
5. **Exit**: Close the application.

## Examples

### Full Scan
1. Select `1` from the main menu.
2. Watch the progress bar as checks are performed.
3. Review results in the pop-up window or check the detailed report at `/tmp/k8-shield-report.txt`.

### Network Policy Audit
1. Select `2` from the main menu.
2. Results will highlight misconfigured network policies.

## Disclaimer

This tool is designed to assist in Kubernetes security auditing but **does not guarantee absolute protection**. Always:
- Review findings manually in critical environments.
- Stay updated with Kubernetes security advisories.
- Use as part of a broader security strategy, not as a sole solution.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

Developed with ❤️ by [Ivan Piskunov](https://github.com/D3One).  
Contributions and feedback are welcome!  

---
**Note**: This TUI is a wrapper for the original [K8-Shield](https://github.com/D3One/K8-Shield) tool. Ensure you comply with its licensing and usage terms.

---
