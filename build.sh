#Clean
rm -rf pages/*.html
rm -rf blog/*.html

# Pages
livemark build pages/001-01-terminal-101.md --target pages/001-01-terminal-101.html && \
livemark build pages/001-02-version-control-system-101.md --target pages/001-02-version-control-system-101.html && \
livemark build pages/002-01-setup.md --target pages/002-01-setup.html && \
livemark build pages/002-02-variables.md --target pages/002-02-variables.html && \
livemark build pages/contrib.md --target pages/contrib.html && \

# Blog
livemark build blog/index.md --target blog/index.html && \
livemark build blog/2022-07-04-blog-test.md --target blog/2022-07-04-blog-test.html && \
livemark build blog/2022-07-04-new-test.md --target blog/2022-07-04-new-test.html && \

# Start server...
livemark start index.md --target index.html --config livemark.yaml