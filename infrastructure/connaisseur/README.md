## Configuration
Make sure to change the Public Key to the one you generated on line `121` in the `values.yaml` file

In the current setup connaissuer is configured to validate workloads only on namespaces that have `securesystemsengineering.connaisseur/webhook: validate` label.

This is configured by uncommenting the following lines in `values.yaml` file.
```yaml
namespacedValidation:
    mode: validate
```
The following command can be used to lable a namespace
```sh
kubectl label ns production securesystemsengineering.connaisseur/webhook=validate
```