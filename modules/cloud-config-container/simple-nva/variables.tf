/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "cloud_config" {
  description = "Cloud config template path. If null default will be used."
  type        = string
  default     = null
}

variable "config_variables" {
  description = "Additional variables used to render the cloud-config and FRR templates."
  type        = map(any)
  default     = {}
}

variable "daemons" {
  description = "FRR daemons configuration path, if null default will be used."
  type        = string
  default     = null
}

variable "enable_bgp" {
  description = "Configures FR Routing Countainer to run BGP server on the NVA"
  type        = bool
  default     = false
}

variable "enable_health_checks" {
  description = "Configures routing to enable responses to health check probes."
  type        = bool
  default     = false
}

variable "files" {
  description = "Map of extra files to create on the instance, path as key. Owner and permissions will use defaults if null."
  type = map(object({
    content     = string
    owner       = string
    permissions = string
  }))
  default = {}
}

variable "frr_config" {
  description = "FRR configuration path, if null default will be used."
  type        = string
  default     = null
}

variable "network_interfaces" {
  description = "Network interfaces configuration."
  type = list(object({
    routes = optional(list(string))
  }))
}