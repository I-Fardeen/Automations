#to ping a website and get the status code returned in a variable and store it in a log file

function Get-StatusCodeWeb($url) {
    $Response = Invoke-WebRequest -Uri $url
    $StatusCode = $Response.StatusCode
    $date = Get-Date
    Add-Content -Path C:\Users\user\Documents\Test_Python\logs.txt -Value $date
    Add-Content -Path C:\Users\user\Documents\Test_Python\logs.txt -Value "-----------------------------------------------------------------------"
    if ($StatusCode -eq 200) {
        $str = "The Website " + $url  + " is running successfully with status code: " +  $StatusCode
        
        Add-Content -Path C:\Users\user\Documents\Test_Python\logs.txt -Value $str
    }
    else {
        $str = "Oops! something went wrong! " +  $url  + " is not working!"
        
        Add-Content -Path C:\Users\user\Documents\Test_Python\logs.txt -Value $str
    }
    
}

Get-StatusCodeWeb 'www.google.com'
Get-StatusCodeWeb 'www.twitter.com'
Get-StatusCodeWeb 'www.microsoft.com'
Get-StatusCodeWeb 'www.facebook.com'
Get-StatusCodeWeb 'www.instagram.com'
Get-StatusCodeWeb 'www.infosys.com'