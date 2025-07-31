# Minimal Terraform Module

This is a minimal example of a Terraform module that creates a random string.

## Usage

### Local Usage

```hcl
module "minimal_example" {
  source = "./misc/module"
  prefix = "my-app"
}
```

### env0 Private Module Registry Usage

To use this module from the env0 Private Module Registry, first publish it to the registry from your Git repository. Once published, you can reference it in your code like this:

```hcl
module "minimal_example" {
  source  = "api.env0.com/<YOUR_ORGANIZATION_ID>/<MODULE_NAME>/<PROVIDER>"
  version = "1.0.0"

  prefix = "my-app"
}
```

**Note:** Replace `<YOUR_ORGANIZATION_ID>`, `<MODULE_NAME>`, and `<PROVIDER>` with the actual values from your env0 module registry page.

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
