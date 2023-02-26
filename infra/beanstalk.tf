resource "aws_elastic_beanstalk_application" "beanstalk_app" {
  name        = var.name
  description = var.description
}

resource "aws_elastic_beanstalk_environment" "beanstalk_env" {
  name                = var.env
  application         = aws_elastic_beanstalk_application.beanstalk_app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.5.4 running Docker"

setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = var.instance
  }

setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = var.max
  }

setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = aws_iam_instance_profile.beanstalk_ec2_profile.name
  }

}

resource "aws_elastic_beanstalk_application_version" "default" {
  depends_on = [
    aws_elastic_beanstalk_environment.beanstalk_env,aws_elastic_beanstalk_application.beanstalk_app,aws_s3_bucket_object.docker
  ]
  name        = var.env
  application = var.name
  description = var.description
  bucket      = aws_s3_bucket.beanstalk_deploys.id
  key         = aws_s3_bucket_object.docker.id
}