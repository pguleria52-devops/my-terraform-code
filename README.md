########### To connect to eks cluster
aws eks update-kubeconfig --region us-east-1 --name my-eks-cluster

######### Creating secret when using github as docker container
kubectl create secret docker-registry github-container-registry \
  --docker-server=ghcr.io \
  --docker-username=pguleria52-devops \
  --docker-password=YOUR_GITHUB_TOKEN \
  --docker-email=YOUR_EMAIL

  ########## Decoding argoCD initial password
  echo initial_pasword | base64 --decode
