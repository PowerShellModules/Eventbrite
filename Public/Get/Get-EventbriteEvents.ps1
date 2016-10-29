function Get-EventbriteEvents {


<#
.Synopsis
   This Function will Get all EventBrite Events 
.DESCRIPTION
   To be completed
.EXAMPLE
   Get-EventbriteEvents -EventbrightToken $env:EventbriteToken 
.PARAMETER EventbriteToken
    Unique Token as can be obtained from the EventBrite API Pages
    
       #>
[cmdletbinding()]
param (
[Parameter(Mandatory=$true)]
[string]
$EventbriteToken

        )
$Events = Invoke-RestMethod https://www.eventbriteapi.com/v3/users/me/owned_events/?token=$EventbriteToken 

Foreach ($event in $events.events ) 
{
$event.Name = $event.Name.Text
$event.start = (([DateTime]($event.start.local)).ToUniversalTime())
$event.end = (([DateTime]($event.end.local)).ToUniversalTime())
Add-Member -Name Year -InputObject $event -MemberType NoteProperty -Value $event.start.Year
}
$Events

}

