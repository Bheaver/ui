Step 1: Run npm init -y (if it fails, here’s a fix)
Step 2: Run npm install babel-cli@6 babel-preset-react-app@3

npx babel --watch static/js --out-dir . --presets react-app/prod