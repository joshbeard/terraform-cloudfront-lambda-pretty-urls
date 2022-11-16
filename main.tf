module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = var.name
  description   = var.description
  handler       = "index.handler"
  runtime       = var.runtime

  source_path = "./src"

  create_function = false  # to control creation of the Lambda Function and related resources
  create_role     = false  # to control creation of the IAM role and policies required for Lambda Function

  attach_dead_letter_policy = false
  attach_network_policy     = false
  attach_tracing_policy     = false
  attach_async_event_policy = false

  tags = var.tags
}
