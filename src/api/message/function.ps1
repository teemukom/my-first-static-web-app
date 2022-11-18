# d_ExploreAzureEnvironment

# Script to explore the Azure Functions PowerShell environment
# by running commands from a menu and returning their output
# as a string.

using namespace System.Net

param($Request, $TriggerMetadata)

    $status = [HttpStatusCode]::OK
    $body   = $PSVersionTable | Out-String


Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = $status
    Body       = $body
})
