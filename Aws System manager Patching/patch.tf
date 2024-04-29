resource "aws_ssm_patch_baseline" "patch-example" {
  name             = "patch-example-baseline"
  description      = "Amazon Linux 2023 Patch Baseline"
  operating_system = "AMAZON_LINUX_2023"
  approval_rule {
    enable_non_security = false # Set to true to install non-security updates
    approve_after_days  = 7
    patch_filter {
      key    = "CLASSIFICATION"
      values = ["*"]
    }
  }
}


resource "aws_ssm_patch_group" "patch-example" {
  baseline_id = aws_ssm_patch_baseline.patch-example.id
  patch_group = "my-patch"
}

resource "aws_ssm_maintenance_window" "patch-example" {
  name        = "patch-example-maintenance-install"
  schedule    = "cron(0 0 ? * SUN *)" # Every Sunday at 12 AM UTC
  duration    = 3
  cutoff      = 1
}


resource "aws_ssm_maintenance_window_target" "patch-example" {
  window_id     = aws_ssm_maintenance_window.patch-example.id
  resource_type = "INSTANCE"

  targets {
    key    = "tag:Name"
    values = ["DEV"]
  }
}

resource "aws_ssm_maintenance_window_task" "patch-example" {
  window_id        = aws_ssm_maintenance_window.patch-example.id
  task_type        = "RUN_COMMAND"
  task_arn         = "AWS-RunPatchBaseline"
  priority         = 1
  max_concurrency  = "100%"
  max_errors       = "100%"

  targets {
    key    = "WindowTargetIds"
    values = ["aws_ssm_maintenance_window.patch-example.id"]
  }

   task_invocation_parameters {
    run_command_parameters {
      comment          = "Amazon Linux 2023 Patch Baseline Install"
      document_version = "$LATEST"
      timeout_seconds  = 3600
     
    }
  }
}


