#!/bin/bash

file_path="C:/inetpub/wwwroot/atomcms/public/client/nitro/nitro-react/dist/index.html"

awk '{
  gsub("/favicon.ico", "./favicon.ico");
  gsub("/apple-touch-icon.png", "./apple-touch-icon.png");
  gsub("/favicon-32x32.png", "./favicon-32x32.png");
  gsub("/favicon-16x16.png", "./favicon-16x16.png");
  gsub("/site.webmanifest", "./site.webmanifest");
  gsub("/safari-pinned-tab.svg", "./safari-pinned-tab.svg");
  gsub("/assets/index-[^.]*\\.js", "./assets/index.js");
  gsub("/assets/vendor-[^.]*\\.js", "./assets/vendor.js");
  gsub("/assets/nitro-renderer-[^.]*\\.js", "./assets/nitro-renderer.js");
  gsub("/src/assets/index.css", "./src/assets/index.css");
  gsub("/renderer-config.json", "./renderer-config.json");
  gsub("/ui-config.json", "./ui-config.json");
  print
}' "$file_path" > "$file_path.tmp"

# Overwrite the original file with the modified content
mv "$file_path.tmp" "$file_path"

echo "File updated successfully."
