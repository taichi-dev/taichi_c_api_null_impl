#!/bin/bash
if [ -z "$TAICHI_REPO_DIR" ]; then
    echo "TAICHI_REPO_DIR must be set"
fi

cp "scripts/generate_c_api_null_impl.py" "$TAICHI_REPO_DIR/misc"
pushd $TAICHI_REPO_DIR
python "misc/generate_c_api_null_impl.py"
popd

cp -r $TAICHI_REPO_DIR/c_api/include/* "include"
cp "$TAICHI_REPO_DIR/c_api/src/c_api_null_impl.cpp" "src"
