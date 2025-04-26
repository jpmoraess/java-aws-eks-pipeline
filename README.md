## Kube Config

aws eks update-kubeconfig --region <region> --name <cluster_name> --kubeconfig=~/.kube/config

## CI Variables

alias pbcopy="xclip -selection clipboard"

**KUBE_CONFIG_DATA:** base64 representation of ~/.kube/config file
cat ~/.kube/config | base64 | pbcopy # pbcopy will copy the secret to the clipboard

**AWS_ACCESS_KEY_ID** and **AWS_SECRET_ACCESS_KEY:** AWS credentials with access to the EKS cluster