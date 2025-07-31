# Minimal Terraform Module

This is a minimal example of a Terraform module that creates a random string.

## Usage

```hcl
module "minimal_example" {
  source = "./misc/module"
  prefix = "my-app"
}
```

## Resources

This module creates a `random_string` resource.

## Inputs

| Name   | Description                        | Type   | Default | Required |
| ------ | ---------------------------------- | ------ | ------- | :------: |
| `prefix` | A prefix to add to the random string. | `string` | `"test"`  |    no    |

## Outputs

| Name            | Description               |
| --------------- | ------------------------- |
| `random_string` | The generated random string. |
