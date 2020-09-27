set -ex

main() {
    cargo check --target $TARGET --features $FEATURES

    if [ $TARGET = x86_64-unknown-linux-gnu ]; then
        cargo clean
        cargo build
    fi
}

main