# Automation Scripts

These scripts are used to ease our everyday lives, in the following script I'm creating
a piece of code to check if a particular Service stored in `$ServiceName` variable is running and if it isn't we start it using `Start-Service` and check again.

If everything seems fine, we exit the script using `exit`.


## Checking Website Status using PowerShell Script

`status.ps1` is the file which contains code to check if a website is running and return the `status-code` and storing the same in a custom log file. This can be used to create bots and automate website validation tasks.