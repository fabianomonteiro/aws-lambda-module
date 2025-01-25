provider "aws" {
  region = var.region
}

resource "aws_lambda_function" "lambda" {
  function_name = var.function_name
  runtime       = var.runtime
  handler       = var.handler
  role          = var.iam_role_arn
  filename      = var.deployment_package
  
  environment {
    variables = var.environment_variables
  }
  
  timeout      = var.timeout
  memory_size  = var.memory_size
}

resource "aws_lambda_permission" "api_gw_permission" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lambda.function_name
  principal     = var.permission_principal
}

resource "aws_cloudwatch_log_group" "lambda_logs" {
  name              = "/aws/lambda/${aws_lambda_function.lambda.function_name}"
  retention_in_days = var.log_retention_days
}
