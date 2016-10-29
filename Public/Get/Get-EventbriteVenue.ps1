function Get-EventbriteVenue {


<#
.Synopsis
   This Function will return the venue object from an EventBrite event 
.DESCRIPTION
   To be completed
.EXAMPLE
   Get-EventbriteVenue -EventbrightToken $env:EventbriteToken -VenueID $venueID
.PARAMETER VenueID
   An interger that uniquely identifies the venue 
.PARAMETER EventbriteToken
    Unique Token as can be obtained from the EventBrite API Pages   
 
   #>
[cmdletbinding()]
param (
[Parameter(Mandatory=$true)]
[string]
$EventbriteToken,

[Parameter(Mandatory=$true)]
[string]
$VenueID

        )
$Venue = Invoke-RestMethod https://www.eventbriteapi.com/v3/venues/$VenueID/?token=$EventbriteToken

$Venue        

}

