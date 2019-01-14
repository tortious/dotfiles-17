function avs -d 'aws-vault metadata server using AWS_VAULT_PROFILE'
    set profile
    if set -q AWS_VAULT_PROFILE
        set profile $AWS_VAULT_PROFILE
    else
        set profile $argv[1]
    end

    echo "Starting aws-vault metadata server for profile: $profile"
    aws-vault exec $profile --server
end

