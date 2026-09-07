docker compose up -d --wait

tokens=("$@")

for i in "${!tokens[@]}"; do
  docker exec -it "gitlab-runner-$i" gitlab-runner register \
    --url "https://gitlab.com" \
    --token "${tokens[$i]}" \
    --name "runner-$i" \
    --executor "docker" \
    --docker-image "docker:29" \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-volumes "/cache"
done
