Copy-Item -Force \\nas.evelyn.internal\terraform\.files\vault-ca\ca.pem ca.pem
Copy-Item -Force \\nas.evelyn.internal\terraform\.files\vault-ca\ca-int.pem ca-int.pem

$buildCommand = "$env:EVELYN_CI_BUILDCTL --debug build --frontend=dockerfile.v0 --local context=. --local dockerfile=. --output type=image,name=registry.evelyn.internal/evelyn/gradle-builder,push=true"

Invoke-Expression -Command $buildCommand
