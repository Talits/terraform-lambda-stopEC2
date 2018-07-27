variable "schedule_expression" {
  default     = "cron(30 22 ? * MON-SAT *)"
  description = "the aws cloudwatch event rule scheule expression that specifies when the scheduler runs."
}

variable "schedule_tag_force" {
  type        = "string"
  default     = "false"
  description = "Whether to force the EC2 instance to have the default schedule tag is no schedule tag exists for the instance."
}

variable "default" {
  default     = "{\"mon\": {\"start\": 7, \"stop\": 20},\"tue\": {\"start\": 7, \"stop\": 20},\"wed\": {\"start\": 7, \"stop\": 20},\"thu\": {\"start\": 7, \"stop\": 20}, \"fri\": {\"start\": 7, \"stop\": 20}}"
  description = "the default schedule tag containing json schedule information to add to instance when schedule_tag_force set to true."
}

variable "time" {
  default     = "gmt"
  description = "timezone to use (gmt/local)."
}

variable "ec2_schedule" {
  type        = "string"
  default     = "true"
  description = "Whether to do scheduling for EC2 instances."
}
