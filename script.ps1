$Service_name = 'ClickToRunSvc'

$Service_info = Get-Service -Name $Service_name

function Get-ServiceStatus {        
    if ($Service_info.Status -eq 'Running') {
        Write-Host -Message 'The' $Service_info.DisplayName 'Service is running perfectly!'
        exit
    }

    else {
        Write-Host -Message "Something went wrong!" $Service_info.DisplayName "is not running!"
        Start-ServiceAndRefresh
    }
}

function Start-ServiceAndRefresh {
    Write-Host -Message "Starting the service now!"
    Start-Service -Name $Service_name
    $Service_info.Refresh()
    Get-ServiceStatus
}

Get-ServiceStatus


