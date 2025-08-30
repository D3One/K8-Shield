# K8-Shield 🛡️

**K8-Shield** is a powerful command-line tool for auditing Kubernetes clusters against security best practices. It automatically scans your cluster configuration, detects common misconfigurations, and provides actionable recommendations to enhance your security posture.

[![GitHub License](https://img.shields.io/github/license/D3One/K8-Shield)](https://github.com/D3One/K8-Shield/blob/main/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

---

### ✨ Features

*   **Comprehensive Auditing:** Checks for a wide range of security issues based on the CIS Kubernetes Benchmark and other best practices.
*   **Clear Reporting:** Provides a clear, color-coded (Red/Yellow/Green) output in the CLI for immediate visibility into critical issues.
*   **Easy to Run:** A single Bash script with no complex dependencies—just run it against your `kubeconfig` context.
*   **Namespace Scoping:** Ability to scan a specific namespace (`-n` or `--namespace`) or all namespaces.
*   **Pod Security Standards Check:** Audits workloads against the Kubernetes Pod Security Standards (Baseline/Restricted).

---

### 📦 Requirements

*   `kubectl` installed and configured with access to the target cluster.
*   `bash` shell.
*   Utilities: `grep`, `awk`, `sed` (typically pre-installed on most Unix-like systems).

---

### 🚀 Installation & Usage

#### Direct Download and Run (Quick Start)
```bash
# Download the script directly
curl -LO https://raw.githubusercontent.com/D3One/K8-Shield/main/K8-Shield.sh

# Make it executable
chmod +x K8-Shield.sh

# Run the audit against the current kubeconfig context
./K8-Shield.sh
```

#### Clone the Repository
```bash
git clone https://github.com/D3One/K8-Shield.git
cd K8-Shield
chmod +x K8-Shield.sh
./K8-Shield.sh
```

#### Scan a Specific Namespace
```bash
./K8-Shield.sh -n <your-namespace>
# or
./K8-Shield.sh --namespace <your-namespace>
```

---

### 📋 Sample Output

The tool provides a summary table with color-coded results:
*   `[RED]` - Critical security issue that needs immediate attention.
*   `[YELLOW]` - Warning or recommendation for improvement.
*   `[GREEN]` - Check passed successfully.

```
== K8-Shield Security Audit Results ==
...
[RED]    Check 2: Ensure ... (High Risk)
[YELLOW] Check 5: Consider ... (Medium Risk)
[GREEN]  Check 7: Passed ... (Low Risk)
...
== Summary: 5 passed, 3 warnings, 2 critical issues found ==
```

---

### 🗂️ Project Structure

```
.
├── K8-Shield.sh      # Main audit script
├── LICENSE          # MIT License file
└── README.md        # This file
```

---


### ChangeLog

2025 -  Major update
2022 -  Added more audit modules for master node k8s
2020 -  The first release

---

### 🤝 Contributing

Contributions are always welcome! We are looking for help in:
*   Adding new security checks.
*   Improving the code and output formatting.
*   Testing the script on various Kubernetes distributions and versions.

Feel free to open an **Issue** or submit a **Pull Request**.

1.  Fork the project.
2.  Create your feature branch (`git checkout -b feature/AmazingCheck`).
3.  Commit your changes (`git commit -m 'Add some AmazingCheck'`).
4.  Push to the branch (`git push origin feature/AmazingCheck`).
5.  Open a Pull Request.

---

### ⚠️ Disclaimer

This tool is designed for educational and security improvement purposes. Always run audits in a test environment before executing them in production. The authors are not responsible for any damage or misuse of this tool.

---

### 📄 License

This project is distributed under the **MIT License**. See the `LICENSE` file for more information.

---

### 🙏 Acknowledgments

*   Inspired by the CIS Kubernetes Benchmarks.
*   Thanks to the Kubernetes community for the best practices and guidelines.
```
