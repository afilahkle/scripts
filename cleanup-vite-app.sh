#!/bin/bash

# Check if project directory is supplied
if [ -z "$1" ]
  then
    echo "Please provide a project directory."
    exit 1
fi

# Move into the project directory
cd $1

# Remove the demo content
echo "Removing demo content..."
rm -rf src/logo.svg src/assets/react.svg src/index.css public/vite.svg .eslintrc.cjs

# Set basic CSS in index.css
echo "body {
  margin: 0px;
  overflow: hidden;
}" > src/App.css

# Cleanup src/App.jsx
echo "import React from 'react';
import './App.css';

function App() {
  return (
    <div>
      <h1>Hello, World!</h1>
    </div>
  );
}

export default App;" > src/App.jsx

# Cleanup src/main.js
echo "import { createRoot } from 'react-dom/client';
import App from './App';

const rootElement = document.getElementById('root');
const root = createRoot(rootElement);
root.render(<App />);" > src/main.jsx

# Remove the line containing 'vite' from index.html
sed -i '/vite/d' index.html

# Update the title in index.html
sed -i 's/<title>Vite + React<\/title>/<title>My App<\/title>/' index.html

# Initialize a Git repository
git init

# Add all files and make an initial commit
git add .
git commit -m "Clean up"

echo "Vite-React project cleaned up and Git initialized."
