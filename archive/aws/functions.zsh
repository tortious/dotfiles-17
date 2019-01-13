# CodeCommit
function gclcc() {
  profile=$1
  region=$2
  repo=$3

  repository_endpoint=$(aws codecommit get-repository \
    --region "$region" \
    --repository-name "$repo" \
    --output text \
    --query 'repositoryMetadata.cloneUrlHttp')

  git clone \
    --config 'credential.helper=!aws codecommit --profile '$profile' --region '$region' credential-helper $@' \
    --config 'credential.UseHttpPath=true' \
    $repository_endpoint
}

function ave() {
  local profile=$1
  shift
  aws-vault exec $profile -- $@
}

function avee() {
  local profile
  if [ -z "$AWS_VAULT_PROFILE" ]; then
    profile=$1
    shift
  else
    profile="$AWS_VAULT_PROFILE"
  fi

  aws-vault exec $profile -- $@
}
