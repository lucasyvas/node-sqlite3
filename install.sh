RUNTIME=$(node -e 'process.stdout.write(process.env.npm_config_runtime || "")')
TARGET=$(node -e 'process.stdout.write(process.env.npm_config_target || "")')
PLATFORM=$(node -e 'process.stdout.write(process.env.npm_config_platform || "")')
ARCH=$(node -e 'process.stdout.write(process.env.npm_config_arch || "")')

node-pre-gyp install --runtime="${RUNTIME}" --target="${TARGET}" --target_platform="${PLATFORM}" --target_arch="${ARCH}"
