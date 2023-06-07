#!/bin/bash

# Check if project directory is supplied
if [ -z "$1" ]
  then
    echo "Please provide a project directory."
    exit 1
fi

# Move into the project directory
cd $1

# Move into the public directory and remove unnecessary files
cd public
rm logo192.png logo512.png manifest.json robots.txt

# Delete unnecessary lines in index.html
# (This assumes that the lines to be deleted are the same across different projects)
sed -i '12,26d' ./index.html
sed -i '17,26d' ./index.html

# Move back into the src directory and remove unnecessary files
cd ../src
rm App.css App.tsx App.test.tsx index.css logo.svg reportWebVitals.ts setupTests.ts

# Create App.tsx and populate it with general boilerplate
echo "function App() {
  return <div className='App'>Hello World</div>;
}
export default App;" > App.tsx

# Delete unnecessary lines in index.tsx
# (This assumes that the lines to be deleted are the same across different projects)
sed -i '3d' ./index.tsx
sed -i '4d' ./index.tsx
sed -i '12,15d' ./index.tsx

echo "Project cleanup is complete."
