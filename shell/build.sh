# 清空dist目录中的旧文件
echo '正在清除原有的dist文件...'
rm -rf dist/*.css

# 打包出不压缩的CSS文件emmanuel-ui.css
echo '正在生成emmanuel-ui.css文件...'
npx postcss src/emmanuel-ui.css -o dist/emmanuel-ui.css -u postcss-import autoprefixer --no-map


# 打包出被压缩的css文件emmanuel-ui.min.css
echo '正在生成emmanul-ui.min.css文件...'
npx postcss src/emmanuel-ui.css -o dist/emmanuel-ui.min.css -u postcss-import autoprefixer cssnano --no-map