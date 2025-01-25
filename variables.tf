variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "runtime" {
  description = "Runtime for the Lambda function (e.g., nodejs14.x, python3.8)"
  type        = string
}

variable "handler" {
  description = "Handler for the Lambda function"
  type        = string
}

variable "iam_role_arn" {
  description = "ARN of the IAM role for Lambda execution"
  type        = string
}

variable "deployment_package" {
  description = "Path to the deployment package (.zip file)"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables for the Lambda function"
  type        = map(string)
  default     = {}
}

variable "timeout" {
  description = "Timeout in seconds for the Lambda function"
  type        = number
  default     = 15
}

variable "memory_size" {
  description = "Memory size for the Lambda function in MB"
  type        = number
  default     = 128
}

variable "permission_principal" {
  description = "Principal for Lambda permissions (e.g., 'apigateway.amazonaws.com')"
  type        = string
  default     = "apigateway.amazonaws.com"
}

variable "log_retention_days" {
  description = "Number of days to retain logs"
  type        = number
  default     = 7
}
