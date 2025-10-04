locals {
  base_source_url     = "git::git@github.com:ss0x44/tf-modules.git//v${TF_VERSION}/aws_modules/gl-runner"
  app_id              = include.root.locals.app_id
  app_prefix          = include.root.locals.app_prefix
  account_id          = include.root.locals.account_id
  account_type        = include.root.locals.account_type
  region              = include.root.locals.region
  region_short        = include.root.locals.region_short 
  env_short           = include.root.locals.env_short
  app_tags            = include.root.locals.common_tags
}

inputs = {
  runner_token_01     = get_env("RUNNER_TOKEN_01")
  runner_token_02     = get_env("RUNNER_TOKEN_02")
  runner_token_03     = get_env("RUNNER_TOKEN_03")
  tf_version          = get_env("TF_VERSION")
  tg_version          = get_env("TG_VERSION")
  mvn_version         = get_env("MVN_VERSION")
  java_version        = get_env("JAVA_VERSION")
  gitlab_url          = get_env("GITLAB_URL")
  asg_group_name      = "${local.app_id}-${local.app_prefix}-gitlab-runner-${local.env_short}"
  runner_sg           = "${local.app_id}-${local.app_prefix}-gitlab-runner-${local.env_short}"
  gl_runner_name      = "${local.app_id}-${local.app_prefix}-gitlab-runner-${local.env_short}"
}
