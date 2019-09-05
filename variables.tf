variable "namespace" {
  description = "namespace of the resources"
  type        = "string"
  default     = "nlb"
}

variable "internal" {
  description   = "(Optional) If true, the LB will be internal. default false"
  type          = bool
  default       = false
}

variable "subnets" {
  description   = "(Optional) A list of subnet IDs to attach to the LB. Subnets cannot be updated for Load Balancers of type network. Changing this value for load balancers of type network will force a recreation of the resource."
  type          = "list"
}

variable "listner_port" {
  description   = "(Required) The port on which the load balancer is listening."
  type          = number
  default       = 80
}

variable "idle_timeout" {
  description   = "(Optional) The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type application. Default: 60."
  type          = number
  default       = 60
}
variable "enable_cross_zone_load_balancing" {
  description   = "(Optional) If true, cross-zone load balancing of the load balancer will be enabled. This is a network load balancer feature. Defaults to false."
  type          = bool
  default       = false
}

variable "target_group_arn" {
  description   = "(Required) The ARN of the Target Group to which to route traffic."
  type          = "string"
}


variable "access_logs_bucket" {
  description   = "(Optional) S3 terraform object which put access logs to. If not provided, access logs will be false."
  type          = "map"
  default       = {}
}



