resource "aws_s3_bucket" "terraform-s3" {
    bucket = var.bucket_name
    versioning {
        enabled = true
    }

    lifecycle {
        prevent_destroy = true
    }

    tags = {
        Name = var.tag_name
    }
}
