#!/bin/bash

# Check if a project directory is supplied
if [ -z "$1" ]
  then
    echo "Please provide a project directory."
    exit 1
fi

# Change to the provided project directory
cd $1

# Navigate to the public directory to remove unnecessary files
cd public
echo "Removing unnecessary files in public directory..."
rm logo192.png logo512.png manifest.json robots.txt

# Clean up index.html by deleting unnecessary lines
echo "Cleaning up public/index.html..."
sed -i '12,26d' ./index.html
sed -i '17,26d' ./index.html

# Navigate to the src directory to remove unnecessary files
cd ../src
echo "Removing unnecessary files in src directory..."
rm App.css App.tsx App.test.tsx index.css logo.svg reportWebVitals.ts setupTests.ts

# Create a new App.tsx with basic structure
echo "Creating a new App.tsx..."
echo "function App() {
  return <div className='App'>Hello World</div>;
}
export default App;" > App.tsx

# Clean up index.tsx by deleting unnecessary lines
echo "Cleaning up src/index.tsx..."
sed -i '3d' ./index.tsx
sed -i '4d' ./index.tsx
sed -i '12,15d' ./index.tsx

# Print a success message
echo "Project cleanup is complete."
