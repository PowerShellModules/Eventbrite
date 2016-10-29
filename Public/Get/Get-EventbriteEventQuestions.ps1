function Get-EventbriteEventQuestions {


<#
.Synopsis
   This Function will Get all Questions from a specificed EventBrite Event
.DESCRIPTION
   To be completed
.EXAMPLE
   Get-EventbriteEventQuestions -EventbrightToken $env:EventbriteToken -EventID 1232786423
.PARAMETER EventbriteToken
    Unique Token as can be obtained from the EventBrite API Pages
.PARAMETER EventID
    Unique identifer for the event listing    
       #>
[cmdletbinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]
    $EventbriteToken,
    
    [Parameter(Mandatory=$true)]
    [string]
    $EventID
        )
$questions = (Invoke-RestMethod https://www.eventbriteapi.com/v3/events/$eventid/questions/?token=$EventbriteToken ).questions

$questions

}

