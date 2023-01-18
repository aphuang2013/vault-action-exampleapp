tee -a .github/workflows/image-builder.yml <<EOF
      - name: Import Secrets
        uses: hashicorp/vault-action@v2
        with:
          url: https://hpe-hcp-vault-cluster-public-vault-e39badf3.e063269b.z1.hashicorp.cloud:8200
          tlsSkipVerify: true
          token: \${{ secrets.VAULT_TOKEN }}
          secrets: |
            secret/data/ci app_secret
EOF
