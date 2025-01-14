// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Management.CognitiveServices.Models
{
    using Newtonsoft.Json;
    using System.Collections;
    using System.Collections.Generic;
    using System.Linq;

    /// <summary>
    /// Cognitive Services account commitment plan.
    /// </summary>
    public partial class CommitmentPlan : ProxyResource
    {
        /// <summary>
        /// Initializes a new instance of the CommitmentPlan class.
        /// </summary>
        public CommitmentPlan()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the CommitmentPlan class.
        /// </summary>
        /// <param name="id">Fully qualified resource ID for the resource. Ex -
        /// /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}</param>
        /// <param name="name">The name of the resource</param>
        /// <param name="type">The type of the resource. E.g.
        /// "Microsoft.Compute/virtualMachines" or
        /// "Microsoft.Storage/storageAccounts"</param>
        /// <param name="etag">Resource Etag.</param>
        /// <param name="kind">The Kind of the resource.</param>
        /// <param name="tags">Resource tags.</param>
        /// <param name="location">The geo-location where the resource
        /// lives</param>
        /// <param name="properties">Properties of Cognitive Services account
        /// commitment plan.</param>
        public CommitmentPlan(string id = default(string), string name = default(string), string type = default(string), SystemData systemData = default(SystemData), string etag = default(string), string kind = default(string), Sku sku = default(Sku), IDictionary<string, string> tags = default(IDictionary<string, string>), string location = default(string), CommitmentPlanProperties properties = default(CommitmentPlanProperties))
            : base(id, name, type)
        {
            SystemData = systemData;
            Etag = etag;
            Kind = kind;
            Sku = sku;
            Tags = tags;
            Location = location;
            Properties = properties;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "systemData")]
        public SystemData SystemData { get; private set; }

        /// <summary>
        /// Gets resource Etag.
        /// </summary>
        [JsonProperty(PropertyName = "etag")]
        public string Etag { get; private set; }

        /// <summary>
        /// Gets or sets the Kind of the resource.
        /// </summary>
        [JsonProperty(PropertyName = "kind")]
        public string Kind { get; set; }

        /// <summary>
        /// </summary>
        [JsonProperty(PropertyName = "sku")]
        public Sku Sku { get; set; }

        /// <summary>
        /// Gets or sets resource tags.
        /// </summary>
        [JsonProperty(PropertyName = "tags")]
        public IDictionary<string, string> Tags { get; set; }

        /// <summary>
        /// Gets or sets the geo-location where the resource lives
        /// </summary>
        [JsonProperty(PropertyName = "location")]
        public string Location { get; set; }

        /// <summary>
        /// Gets or sets properties of Cognitive Services account commitment
        /// plan.
        /// </summary>
        [JsonProperty(PropertyName = "properties")]
        public CommitmentPlanProperties Properties { get; set; }

        /// <summary>
        /// Validate the object.
        /// </summary>
        /// <exception cref="Rest.ValidationException">
        /// Thrown if validation fails
        /// </exception>
        public virtual void Validate()
        {
            if (Sku != null)
            {
                Sku.Validate();
            }
        }
    }
}
