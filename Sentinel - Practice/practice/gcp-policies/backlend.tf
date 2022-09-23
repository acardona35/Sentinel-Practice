terraform {
  cloud {
    organization = "TCS_Practice"

    workspaces {
      name = "Policy"
    }
  }
}