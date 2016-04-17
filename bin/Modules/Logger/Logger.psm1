#
#
#

Function Write-Logger{
        <#
    .Synopsis
        Write message to logger
    .Description
        Write message to 
    .Parameter FilePath
        Log file path
    .Parameter Level
        Default Level is info
    .Parameter  Message
        log message
    .Example
        $bios = get-ciminstance win32_bios
        $bios | ConvertTo-HashTable
    #>
param(
    [ValidateSet("Debug", "Info", "Warn", "Error","Fatal")]
    [String]$Level = "Info",
    [String]$FilePath="${env:TEMP}\AppLogger.log",
    [String]$Message=""
)
    $data=Get-Date 
    "$data [$Level] $Message"|Out-File -FilePath $FilePath -Append 
}