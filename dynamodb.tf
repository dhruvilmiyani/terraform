resource "aws_dynamodb_table" "tws-dynamodb" {
  name = var.dynamo_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"
  attribute {
    name = "id"
    type = "S"
  }
}