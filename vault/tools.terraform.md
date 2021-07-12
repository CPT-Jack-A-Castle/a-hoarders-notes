---
id: GlccMfkU4xwQl5I8vPZxK
title: Terraform Tools
desc: 'Tools that work with Terraform.'
updated: 1626033806842
created: 1626033801495
---

Snippets, docs, guides, and other miscellaneous Terraform information please see the [[iac.terraform]] page in [[iac]].

## Cost Management

### Infracost

<https://www.infracost.io/>
<https://www.infracost.io/docs/>

Estimates costs based off of `terraform plan` output (as far as I can tell). Looking at their [supported resources page](https://www.infracost.io/docs/supported_resources) it doesn't seem that they support every GCP resource type or things like sustained use and commitment discounts. That doesn't mean there wouldn't be value in integrating it into CI.

## Documentation

### Terraform Docs

<https://terraform-docs.io/>

Automatically builds documentation for you Terraform modules. Works best when used with a githook or as a part of a CI pipeline.

----

## Collections

[[#terraform|collections.terraform]]
