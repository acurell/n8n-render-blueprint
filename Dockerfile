FROM docker.io/n8nio/n8n:1.102.3

# Set Node.js heap size to 90% of available memory for n8n, reserving 10% for Docker
ENV NODE_OPTIONS="--max-old-space-size=460"

# Crypto for Zoho SalesIQ Security
ENV NODE_FUNCTION_ALLOW_BUILTIN=crypto

# No additional configuration needed, using the official image directly

# Render injects a default "start" argument for docker web services; discard
# whatever gets appended and always launch n8n with no arguments.
ENTRYPOINT ["sh", "-c", "exec n8n"]
