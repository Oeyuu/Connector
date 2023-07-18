locals {
  acc_id       = "143805577160"
  company_name = "teclify"
  app          = "msk"
  prefix       = "${local.company_name}-sandbox-${local.acc_id}"
  full_prefix  = "${local.prefix}-${local.app}"

}
