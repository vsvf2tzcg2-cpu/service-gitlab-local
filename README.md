# service-gitlab-local
service gitlab local

guide pour l'instalation du runner:
docker compose up -d
docker exec -it gitlab-runner gitlab-runner register \
  --url "https://url-de-ton-gitlab.com" \
  --token "TON_TOKEN_GLRT_ICI" \
  --executor "docker" \
  --docker-image "docker:29" \
  --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
  --docker-volumes "/cache"

  executor: docker
  image: docker:latest
