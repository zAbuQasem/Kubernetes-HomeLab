# Configuration
MailHog is deployed with Basic Auth enabled, with Creds set to `admin:SuperSecretPassword@123`.

You can disable the Basic Auth by setting the `auth.enabled` to `false` on line 79 in the `values.yaml` file
```yml
auth:
  enabled: false
  existingSecret: ""
  fileName: auth.txt
  fileContents: |
    mailhog:$2a$04$tcg0CjEdPvj22opBecurOOzaC00KhmMkqx0OsV7NnrwCNeiyNsbSO # MailHog bcrypt 'SuperSecretPassword@123'
```
## Testing MailHog
```sh
sudo apt install swaks
kubectl port-forward --namespace mailhog  mailhog-595588c7df-vrc68 1025
swaks -f zeyad.abuqasem@gmail.com -t emusk@tesla.com -s 127.0.0.1 -p 1025 --body 'Hello World!' --header "Subject: Testing MailHog"
```