# AWS Lambda Module

This Terraform module provisions an AWS Lambda function with associated resources.

## Usage

```hcl
module "lambda" {
  source = "git::https://github.com/fabianomonteiro/aws-lambda-module.git"

  region                = "us-east-1"
  function_name         = "my-lambda"
  runtime               = "nodejs14.x"
  handler               = "index.handler"
  iam_role_arn          = "arn:aws:iam::123456789012:role/lambda-role"
  deployment_package    = "path/to/package.zip"
  environment_variables = {
    ENV_VAR = "value"
  }
  timeout              = 30
  memory_size          = 256
  log_retention_days   = 14
}
```

## Inputs

| Name                 | Description                          | Type   | Default       | Required |
|----------------------|--------------------------------------|--------|---------------|----------|
| `region`             | AWS region                          | string | `"us-east-1"` | no       |
| ...                  | ...                                  | ...    | ...           | ...      |

## Outputs

| Name                 | Description                          |
|----------------------|--------------------------------------|
| `lambda_arn`         | ARN of the Lambda function          |
| ...                  | ...                                  |