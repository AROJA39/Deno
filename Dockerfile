FROM denoland/deno:1.10.3

WORKDIR /app

# Prefer not to run as root.
USER deno



ADD . .
RUN deno cache index.ts

CMD ["run", "-A", "--allow-net", "index.ts"]