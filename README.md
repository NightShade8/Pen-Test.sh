# Pen-Test-Script
A simple Bash script that automates common penetration testing tasks: Nmap scan, directory brute-forcing with Dirb, and web application scanning with Nikto. The results are saved in a timestamped report file.

## 🚀 Features

* Accepts a target (IP address or domain) as a command-line argument.

* Performs the following tests:

* Nmap scan on HTTP/HTTPS ports (80, 443) with specific scripts.

* Dirb scan for common directories on the target website.

* Nikto scan for web application vulnerabilities.

* Saves the results to a timestamped report file in the ~/pen_test_reports directory.

## 🛠 Prerequisites Ensure you have the following installed:

`nmap` (for network scanning)

`dirb` (for directory brute-forcing)

`nikto` (for web application vulnerability scanning)

You can install the required tools using:

```
sudo apt install nmap dirb nikto  # Debian/Ubuntu
sudo yum install nmap dirb nikto  # RHEL/CentOS
brew install nmap dirb nikto      # macOS
```
## 📌 Usage

Clone the repository and run the script:
```
git clone https://github.com/NighShade8/Pen-Test-Script.git
cd Pen-Test-Script
chmod +x pen-test.sh  # Make the script executable
./pen-test.sh <target>
```
Replace <target> with the IP address or domain of the target you want to test.

## ⚡ Alias for Quick Access

To run the script from anywhere, create a shell alias. Add this line to your ~/.bashrc or ~/.zshrc file:

`alias pentest="~/Pen-Test-Script/pen-test.sh"`

Then, reload your shell configuration:

```
source ~/.bashrc  # For Bash
source ~/.zshrc   # For Zsh
```
Now, you can run the penetration test with a simple command:

`pentest <target>`

The results will be saved in a timestamped report file located in ~/pen_test_reports.

Feel free to modify the script to include additional scans or customize the report format!
