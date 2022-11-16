variable "name" {
    default     = "lambda-edge-nice-urls"
    description = "A name for the function."
    type        = string
}

variable "description" {
    default     = "Make URLs prettier."
    description = "The function description."
    type        = string
}

variable "runtime" {
    default     = "nodejs16.x"
    description = "The Lambda runtime (node)."
    type        = string
}

variable "tags" {
    default     = {}
    description = "A map of tags to apply to the resource."
    type        = map
}