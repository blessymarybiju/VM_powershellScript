**Project Report: Automation and Version Control with Git, Linux, and PowerShell in Azure
**

Objective

Automate Azure resource management tasks using PowerShell scripting on Linux and maintain version control of scripts using Git and GitHub.

Solution Steps: 
1. Setting Up the Environment
•	Provisioning the VM:
o	Create a Linux VM in Azure.
o	SSH into the VM.

2. Install Git and PowerShell on Linux VM: 
•	SSH into the Linux VM and install Git and PowerShell Core. 
 
3. Clone GitHub Repository: 
•	Clone a Git repository from GitHub containing sample PowerShell scripts for Azure automation tasks

4. Powershell scripts and linux commands
•	Used some linux commands like ls, cd, chmod

 Navigating the File System:
•	Used ls to list files and directories.
•	Command- ls
•	Used cd to change directories.
Command-  cd /path/to/directory
 
 Managing Permissions:
•	Use chmod to change file permissions.
•	Command- chmod +x create-storage-account.ps1
•	This command makes a script executable.
 
Viewing File Contents:
Command- cat create-storage-account.ps1
 
Editing Files:
Command- nano create-storage-account.ps1
 
Execute Scripts:
•	Command- pwsh ./create-storage-account.ps1
•	Verify that the tasks complete successfully and resources are created or modified as expected

5. Implement Continuous Integration (CI)
•	GitHub Actions:
o	Create a .github/workflows directory in your repository.
o	Add a workflow YAML file (e.g., ci.yml) to automate validation and testing
o	Used commands –
mkdir -p .github/workflows
nano .github/workflows/ci.yml
•	Made sure git repo is up to date.
 
6. Execute Automation Tasks: 
Use scheduled Azure Automation Runbooks to execute PowerShell scripts on a predefined schedule 
Azure Automation Runbooks:
•	Navigate to Azure Automation in the Azure Portal.
•	Create a new runbook and import your PowerShell scripts.
•	Configure schedules.

7. Monitor and Manage Automation Tasks
Azure Monitor:
•	Set up monitoring for your Azure resources and automation tasks.
•	Configure alerts for failures or issues.
Log Analytics:
•	Use Log Analytics to query logs and gain insights into script execution.

7. Benefits of Using Git, Linux, and PowerShell for Azure Automation
7.1. Git
•	Version Control: Track changes, collaborate with team members, and revert to previous versions.
•	Branching: Manage different versions of automation scripts through branches.
•	Collaboration: Share and review changes with pull requests.
7.2. Linux
•	Cost-Effective: Linux VMs are often more cost-effective than Windows VMs.
•	Performance: Lightweight and efficient for running automation scripts.
•	Open Source: Extensive support and community resources available.
7.3. PowerShell
•	Cross-Platform: PowerShell Core supports cross-platform scripting on Linux.
•	Azure Integration: Direct integration with Azure services for resource management.
•	Scripting Flexibility: Supports complex automation scenarios with powerful scripting capabilities.


Conclusion:  
The combination of Git for version control, Linux for the execution environment, and PowerShell for scripting provides a robust framework for automating Azure resource management. This setup offers a cost-effective, flexible, and powerful solution for managing and versioning automation tasks in a cloud environment.





