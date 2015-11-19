param
(
  [String]
  [Parameter(Mandatory=$true)]
  $Server
)

# Loading vmware powershell environment
#& "C:\Program Files (x86)\VMware\Infrastructure\vSphere PowerCLI\Scripts\Initialize-PowerCLIEnvironment.ps1" | Out-Null
if(Connect-VIServer $server -ErrorAction SilentlyContinue -WarningAction SilentlyContinue) {
	$TotalSnapshots = (Get-VM | Get-Snapshot | Where-Object {$_.Description -like '*VEEAM*'}).count
}
$TotalSnapshots
Disconnect-VIServer -Confirm:$false
