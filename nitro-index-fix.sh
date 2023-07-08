#!/bin/bash

file_path="/home/dennis/dev/habgencms/public/client/nitro/nitro-react/dist/index.html"

# Read the content of the file
content=$(<"$file_path")

# Replace the paths in the content
content="${content//\/favicon.ico/\.\/favicon.ico}"
content="${content//\/apple-touch-icon.png/\.\/apple-touch-icon.png}"
content="${content//\/favicon-32x32.png/\.\/favicon-32x32.png}"
content="${content//\/favicon-16x16.png/\.\/favicon-16x16.png}"
content="${content//\/site.webmanifest/\.\/site.webmanifest}"
content="${content//\/safari-pinned-tab.svg/\.\/safari-pinned-tab.svg}"
content="${content//\/assets\/index-f42fc6a0.js/\.\/assets\/index-f42fc6a0.js}"
content="${content//\/assets\/vendor-56d266b8.js/\.\/assets\/vendor-56d266b8.js}"
content="${content//\/assets\/nitro-renderer-0af3579c.js/\.\/assets\/nitro-renderer-0af3579c.js}"
content="${content//\/src\/assets\/index.css/\.\/src\/assets\/index.css}"
content="${content//\/renderer-config.json/\.\/renderer-config.json}"
content="${content//\/ui-config.json/\.\/ui-config.json}"

# Write the modified content back to the file
echo "$content" > "$file_path"

echo "File updated successfully."
