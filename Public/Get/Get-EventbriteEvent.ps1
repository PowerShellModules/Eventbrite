function Get-EventbriteEvent {


<#
.Synopsis
   This Function will Get a specific EventBrite Event 
.DESCRIPTION
   To be completed
.EXAMPLE
   Get-EventbriteEvent -EventbrightToken $env:EventbriteToken -EventID 1234376727438
.PARAMETER EventbriteToken
    Unique Token as can be obtained from the EventBrite API Pages
.PARAMETER EventID
    Unique Token as can be obtained from the EventBrite API Pages       

#>
[cmdletbinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]
    $EventbriteToken,
    [Parameter(Mandatory=$true)]
    [string]$EventID
        )
$Event = Invoke-RestMethod https://www.eventbriteapi.com/v3/events/$eventid/?token=$EventbriteToken 
$event.Name = $event.Name.Text
$event.start = (([DateTime]($event.start.local)).ToUniversalTime())
$event.end = (([DateTime]($event.end.local)).ToUniversalTime())

$myevents += $event

$myevents

}

