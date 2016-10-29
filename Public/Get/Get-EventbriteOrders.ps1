function Get-EventbriteOrders {


<#
.Synopsis
   This Function will Get all EventBrite Orders 
.DESCRIPTION
   To be completed
.EXAMPLE
   Get-EventbriteOrders -EventbrightToken $env:EventbriteToken 
.PARAMETER EventbriteToken
    Unique Token as can be obtained from the EventBrite API Pages
    
#>
[cmdletbinding()]
param (
[Parameter(Mandatory=$true)]
[string]
$EventbriteToken

        )
$orders = Invoke-RestMethod https://www.eventbriteapi.com/v3/users/me/orders/?token=$EventbriteToken


foreach ($order in $orders.orders) {
    Get-EventbriteEvent -EventbriteToken $EventbriteToken -EventID $order.event_id
    }

$orders

}

