if(!($VMs)) {
    $VMs = Get-VM
} 
    $VMs | Get-CDDrive | Where-Object { $_.IsoPath} | Format-List Parent, IsoPath
