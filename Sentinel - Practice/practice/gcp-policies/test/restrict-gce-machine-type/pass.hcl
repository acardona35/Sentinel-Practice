module "tfplan-functions" {
  source = "../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2"{
    module {
        source = "<file path on local machine for mock-tfplan-pass/faile.sentinel file>"
    }
}
test {
    rules = {
        main = true
    }
}
    