#!/bin/zsh
# Set PUBLIC_PATH to path of public folder
 export PUBLIC_PATH="public/"
 # Build the server
 cd https-server && go build main.go && cd ../
 # Build the client
 cd public/go && GOOS=js GOARCH=wasm go build -o ../main.wasm && cd ../..
