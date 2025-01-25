output "lambda_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.lambda.arn
}

output "lambda_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.lambda.function_name
}

output "cloudwatch_log_group" {
  description = "CloudWatch Log Group for the Lambda function"
  value       = aws_cloudwatch_log_group.lambda_logs.name
}
