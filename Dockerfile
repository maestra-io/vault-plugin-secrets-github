# Release binary from the workflow, verified against SHA256SUMS there. busybox
# because the vault pods' init container copies it out with /bin/sh + cp.
FROM busybox:1.37.0-musl@sha256:f6a95d611e0a8780fabdb2aec43e31275b2720dfefa3e41b16835bfc42454478

ARG TARGETARCH

COPY --chmod=0755 dist/vault-plugin-secrets-github-linux-${TARGETARCH} /usr/local/bin/vault-plugin-secrets-github
