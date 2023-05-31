# Automation Scripts

These scripts are used to ease our everyday lives, in the following script I'm creating
a piece of code to check if a particular Service stored in `$ServiceName` variable is running and if it isn't we start it using `Start-Service` and check again.

If everything seems fine, we exit the script using `exit`.


## Checking Website Status using PowerShell Script

`status.ps1` is the file which contains code to check if a website is running and return the `status-code` and storing the same in a custom log file. This can be used to create bots and automate website validation tasks.

## Checking if a site is up and running using Python

`probe.py` file uses the Python requests module to request any website for its status using an HTTPRequest and if the site responds with status `<Response [200], OK>` then it is confirmed that the site is running.

special part about this code is that it does not hardcode the value, rather it takes all the site names from a txt file, included herein as `sites.txt`