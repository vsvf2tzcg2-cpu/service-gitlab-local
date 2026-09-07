# service-gitlab-local
service gitlab local

guide pour l'instalation du runner:
docker compose up -d
MSYS_NO_PATHCONV=1 docker exec -it gitlab-runner gitlab-runner register \
  --non-interactive \
  --url "https://gitlab.com/" \
  --token "ton token" \
  --executor "docker" \
  --docker-image "docker:24.0.5" \
  --description "Runner Windows" \
  --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
  --docker-volumes "/cache"
