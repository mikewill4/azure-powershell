// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.PaloAltoNetworks.Models.Api20220829
{
    using static Microsoft.Azure.PowerShell.Cmdlets.PaloAltoNetworks.Runtime.Extensions;

    /// <summary>The identities assigned to this resource by the user.</summary>
    public partial class AzureResourceManagerManagedIdentityPropertiesUserAssignedIdentities :
        Microsoft.Azure.PowerShell.Cmdlets.PaloAltoNetworks.Models.Api20220829.IAzureResourceManagerManagedIdentityPropertiesUserAssignedIdentities,
        Microsoft.Azure.PowerShell.Cmdlets.PaloAltoNetworks.Models.Api20220829.IAzureResourceManagerManagedIdentityPropertiesUserAssignedIdentitiesInternal
    {

        /// <summary>
        /// Creates an new <see cref="AzureResourceManagerManagedIdentityPropertiesUserAssignedIdentities" /> instance.
        /// </summary>
        public AzureResourceManagerManagedIdentityPropertiesUserAssignedIdentities()
        {

        }
    }
    /// The identities assigned to this resource by the user.
    public partial interface IAzureResourceManagerManagedIdentityPropertiesUserAssignedIdentities :
        Microsoft.Azure.PowerShell.Cmdlets.PaloAltoNetworks.Runtime.IJsonSerializable,
        Microsoft.Azure.PowerShell.Cmdlets.PaloAltoNetworks.Runtime.IAssociativeArray<Microsoft.Azure.PowerShell.Cmdlets.PaloAltoNetworks.Models.Api20220829.IAzureResourceManagerUserAssignedIdentity>
    {

    }
    /// The identities assigned to this resource by the user.
    internal partial interface IAzureResourceManagerManagedIdentityPropertiesUserAssignedIdentitiesInternal

    {

    }
}