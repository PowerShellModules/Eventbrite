Describe 'Get-EventbriteVenue Tests' {

   Context 'Parameters for Get-EventbriteVenue'{

        It 'Has a Parameter called EventbriteToken' {
            $Function.Parameters.Keys.Contains('EventbriteToken') | Should Be 'True'
            }
        It 'EventbriteToken Parameter is Identified as Mandatory being True' {
            [String]$Function.Parameters.EventbriteToken.Attributes.Mandatory | Should be 'True'
            }
        It 'EventbriteToken Parameter is of String Type' {
            $Function.Parameters.EventbriteToken.ParameterType.FullName | Should be 'System.String'
            }
        It 'EventbriteToken Parameter is member of ParameterSets' {
            [String]$Function.Parameters.EventbriteToken.ParameterSets.Keys | Should Be '__AllParameterSets'
            }
        It 'EventbriteToken Parameter Position is defined correctly' {
            [String]$Function.Parameters.EventbriteToken.Attributes.Position | Should be '0'
            }
        It 'Does EventbriteToken Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.EventbriteToken.Attributes.ValueFromPipeline | Should be 'False'
            }
        It 'Does EventbriteToken Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.EventbriteToken.Attributes.ValueFromPipelineByPropertyName | Should be 'False'
            }
        It 'Does EventbriteToken Parameter use advanced parameter Validation? ' {
            $Function.Parameters.EventbriteToken.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should Be 'False'
            $Function.Parameters.EventbriteToken.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should Be 'False'
            $Function.Parameters.EventbriteToken.Attributes.TypeID.Name -contains 'ValidateScript' | Should Be 'False'
            $Function.Parameters.EventbriteToken.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should Be 'False'
            $Function.Parameters.EventbriteToken.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should Be 'False'
            }
        It 'Has Parameter Help Text for EventbriteToken '{
            $function.Definition.Contains('.PARAMETER EventbriteToken') | Should Be 'True'
            }
        It 'Has a Parameter called VenueID' {
            $Function.Parameters.Keys.Contains('VenueID') | Should Be 'True'
            }
        It 'VenueID Parameter is Identified as Mandatory being True' {
            [String]$Function.Parameters.VenueID.Attributes.Mandatory | Should be 'True'
            }
        It 'VenueID Parameter is of String Type' {
            $Function.Parameters.VenueID.ParameterType.FullName | Should be 'System.String'
            }
        It 'VenueID Parameter is member of ParameterSets' {
            [String]$Function.Parameters.VenueID.ParameterSets.Keys | Should Be '__AllParameterSets'
            }
        It 'VenueID Parameter Position is defined correctly' {
            [String]$Function.Parameters.VenueID.Attributes.Position | Should be '1'
            }
        It 'Does VenueID Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.VenueID.Attributes.ValueFromPipeline | Should be 'False'
            }
        It 'Does VenueID Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.VenueID.Attributes.ValueFromPipelineByPropertyName | Should be 'False'
            }
        It 'Does VenueID Parameter use advanced parameter Validation? ' {
            $Function.Parameters.VenueID.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should Be 'False'
            $Function.Parameters.VenueID.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should Be 'False'
            $Function.Parameters.VenueID.Attributes.TypeID.Name -contains 'ValidateScript' | Should Be 'False'
            $Function.Parameters.VenueID.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should Be 'False'
            $Function.Parameters.VenueID.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should Be 'False'
            }
        It 'Has Parameter Help Text for VenueID '{
            $function.Definition.Contains('.PARAMETER VenueID') | Should Be 'True'
            }
    }
    Context "Function $($function.Name) - Help Section" {

            It "Function $($function.Name) Has show-help comment block" {

                $function.Definition.Contains('<#') | should be 'True'
                $function.Definition.Contains('#>') | should be 'True'
            }

            It "Function $($function.Name) Has show-help comment block has a.SYNOPSIS" {

                $function.Definition.Contains('.SYNOPSIS') -or $function.Definition.Contains('.Synopsis') | should be 'True'

            }

            It "Function $($function.Name) Has show-help comment block has an example" {

                $function.Definition.Contains('.EXAMPLE') | should be 'True'
            }

            It "Function $($function.Name) Is an advanced function" {

                $function.CmdletBinding | should be 'True'
                $function.Definition.Contains('param') -or  $function.Definition.Contains('Param') | should be 'True'
            }
    
    }

 }


