Describe 'Get-EventbriteEventQuestions Tests' {

   Context 'Parameters for Get-EventbriteEventQuestions'{

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
        It 'Has a Parameter called EventID' {
            $Function.Parameters.Keys.Contains('EventID') | Should Be 'True'
            }
        It 'EventID Parameter is Identified as Mandatory being True' {
            [String]$Function.Parameters.EventID.Attributes.Mandatory | Should be 'True'
            }
        It 'EventID Parameter is of String Type' {
            $Function.Parameters.EventID.ParameterType.FullName | Should be 'System.String'
            }
        It 'EventID Parameter is member of ParameterSets' {
            [String]$Function.Parameters.EventID.ParameterSets.Keys | Should Be '__AllParameterSets'
            }
        It 'EventID Parameter Position is defined correctly' {
            [String]$Function.Parameters.EventID.Attributes.Position | Should be '1'
            }
        It 'Does EventID Parameter Accept Pipeline Input?' {
            [String]$Function.Parameters.EventID.Attributes.ValueFromPipeline | Should be 'False'
            }
        It 'Does EventID Parameter Accept Pipeline Input by PropertyName?' {
            [String]$Function.Parameters.EventID.Attributes.ValueFromPipelineByPropertyName | Should be 'False'
            }
        It 'Does EventID Parameter use advanced parameter Validation? ' {
            $Function.Parameters.EventID.Attributes.TypeID.Name -contains 'ValidateNotNullOrEmptyAttribute' | Should Be 'False'
            $Function.Parameters.EventID.Attributes.TypeID.Name -contains 'ValidateNotNullAttribute' | Should Be 'False'
            $Function.Parameters.EventID.Attributes.TypeID.Name -contains 'ValidateScript' | Should Be 'False'
            $Function.Parameters.EventID.Attributes.TypeID.Name -contains 'ValidateRangeAttribute' | Should Be 'False'
            $Function.Parameters.EventID.Attributes.TypeID.Name -contains 'ValidatePatternAttribute' | Should Be 'False'
            }
        It 'Has Parameter Help Text for EventID '{
            $function.Definition.Contains('.PARAMETER EventID') | Should Be 'True'
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


