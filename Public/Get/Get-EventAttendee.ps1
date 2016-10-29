function Get-EventAttendee {


<#
.Synopsis
   This Function will return the attendees for an EventBrite event 
.DESCRIPTION
   To be completed
.EXAMPLE
   Get-EventAttendees -EventbrightToken $env:EventbriteToken -Location Manchester -Month February -Year 2016
.PARAMETER EventbriteToken
    Unique Token as can be obtained from the EventBrite API Pages
.PARAMETER
    Unique Token as can be obtained from the EventBrite API Pages
.PARAMETER EventbriteToken
    Unique Token as can be obtained from the EventBrite API Pages 
.PARAMETER EventbriteToken
    Unique Token as can be obtained from the EventBrite API Pages              
   
   #>
[cmdletbinding()]
param (
    [Parameter(Mandatory=$true)]
    [string]
    $EventbriteToken

     )

Get-EventbriteEvents -EventbriteToken $EventbriteToken

$event = $($events.events.Where({$_.Name.contains($location)}).where({$_.name.contains($month)}).where({$_.Year -eq $year}))
$AttendeesOutput = New-Object System.Collections.Arraylist

    $eventid = $event.id
 
    $Attendees = Invoke-RestMethod -Uri https://www.eventbriteapi.com/v3/events/$eventID/attendees/?token=$EventbriteToken 
    $Orders = Invoke-RestMethod -Uri https://www.eventbriteapi.com/v3/events/$eventID/orders/?token=$EventbriteToken 

    
    $pscustom = [PSCustomObject]@{Attendees = $Attendees.attendees ; Orders = $Orders.orders}
    
        foreach ($attendee in $pscustom.Attendees)
        {
            if($attendee.status -eq 'Attending')
               {
                if ($pscustom.Orders.Id -contains $attendee.order_id)
                      {
                        $details = $pscustom.Orders | Where-Object {$_.Id -eq $attendee.order_id} | Select-Object name,first_name,last_name,email
                        $AttendeesOutput.add($details) | Out-Null
                      }
                }
        }
    $AttendeesOutput

 

}

