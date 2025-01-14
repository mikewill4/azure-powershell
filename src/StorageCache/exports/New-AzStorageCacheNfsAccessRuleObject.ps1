
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create an in-memory object for NfsAccessRule.
.Description
Create an in-memory object for NfsAccessRule.
.Example
New-AzStorageCacheNfsAccessRuleObject -Access 'rw' -Scope 'network' -AnonymousUid "65534" -AnonymousGid "65534" -SubmountAccess:$True -RootSquash:$True -Suid:$False -Filter "10.99.1.0/24"

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Models.Api20230501.NfsAccessRule
.Link
https://learn.microsoft.com/powershell/module/Az.StorageCache/new-AzStorageCacheNfsAccessRuleObject
#>
function New-AzStorageCacheNfsAccessRuleObject {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Models.Api20230501.NfsAccessRule])]
[CmdletBinding(PositionalBinding=$false)]
param(
    [Parameter(Mandatory)]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Support.NfsAccessRuleAccess])]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Support.NfsAccessRuleAccess]
    # Access allowed by this rule.
    ${Access},

    [Parameter(Mandatory)]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Support.NfsAccessRuleScope])]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Support.NfsAccessRuleScope]
    # Scope for this rule.
    # The scope and filter determine which clients match the rule.
    ${Scope},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Category('Body')]
    [System.String]
    # GID value that replaces 0 when rootSquash is true.
    # This will use the value of anonymousUID if not provided.
    ${AnonymousGid},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Category('Body')]
    [System.String]
    # UID value that replaces 0 when rootSquash is true.
    # 65534 will be used if not provided.
    ${AnonymousUid},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Category('Body')]
    [System.String]
    # Filter applied to the scope for this rule.
    # The filter's format depends on its scope.
    # 'default' scope matches all clients and has no filter value.
    # 'network' scope takes a filter in CIDR format (for example, 10.99.1.0/24).
    # 'host' takes an IP address or fully qualified domain name as filter.
    # If a client does not match any filter rule and there is no default rule, access is denied.
    ${Filter},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Category('Body')]
    [System.Boolean]
    # Map root accesses to anonymousUID and anonymousGID.
    ${RootSquash},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Category('Body')]
    [System.Boolean]
    # For the default policy, allow access to subdirectories under the root export.
    # If this is set to no, clients can only mount the path '/'.
    # If set to yes, clients can mount a deeper path, like '/a/b'.
    ${SubmountAccess},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Category('Body')]
    [System.Boolean]
    # Allow SUID semantics.
    ${Suid}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $PSVersionTable.PSVersion.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            __AllParameterSets = 'Az.StorageCache.custom\New-AzStorageCacheNfsAccessRuleObject';
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.StorageCache.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
