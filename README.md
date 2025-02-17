# NanoMDM Project
# NanoMDM Project - Required Tools & Dependencies

## 🔹 CLI Tools
- **Homebrew** - Package Manager for macOS
- **Git** - Version Control System
- **Terraform** - Infrastructure as Code for Automating Setup
- **NanoMDM** - MDM Solution for Apple Devices
- **jq** - JSON Parsing (For API Responses)
- **yq** - YAML Parsing (For MDM Configs)
- **wget** - Command-line file downloader
- **bash-completion** - Improves shell auto-completion
- **unzip** - Extracts NanoMDM from downloaded ZIP files
- **curl** - Handles HTTPS downloads for NanoMDM

## 🔹 VS Code Extensions
- **Terraform Extension** - Provides syntax support for Terraform in VS Code
- **YAML Extension** - Used to edit .mobileconfig MDM profiles
- **Remote SSH Extension** - Allows connecting to remote servers via SSH
- **Bracket Pair Colorizer** - Helps visualize nested brackets in Terraform files
- **GitLens** - Advanced Git integration for better version control

## 🔹 Cloud/Storage Services
- **SQLite** - Stores device information for MDM
- **PostgreSQL (Optional)** - Optional database for larger-scale deployments
- **S3 (Future Option)** - Future-proof storage for cloud-based MDM setups

## 🔹 Languages Used
- **Shell Scripting (Bash)** - Used for automation and scripting
- **HCL (Terraform)** - Used in Terraform for defining infrastructure
- **Python** - Used for scripting automation with Munki & AutoPkg
- **Go** - Language used in NanoMDM’s source code (optional for development)

## 🔹 API & Web Debugging Tools
- **Postman** - Used to send API requests for testing NanoMDM APIs
- **JSON Formatter (Chrome Extension)** - Formats JSON responses in Chrome for easier reading
- **Apple Configurator 2** - Used for manual Mac enrollments

## 🔹 MDM & Deployment Tools
- **Munki** - Used for software deployment & package management
- **MunkiReport** - Web UI for Munki reporting & device tracking
- **AutoPkg** - Automates software packaging for Munki
- **FleetDM** - Provides device visibility & management via osquery
- **MicroMDM** - Alternative to NanoMDM with better documentation & API integrations

## 🔹 Dependencies
- **OpenSSL** - Used for generating TLS certificates
- **APNS Certificates** - Required for Apple MDM push notifications
- **Let’s Encrypt (Optional)** - Free SSL certificates for public-facing MDM deployments
