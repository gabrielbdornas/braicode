livemark build blog/index.md --target blog/index.html && \
livemark build blog/2022-07-04-blog-test.md --target blog/2022-07-04-blog-test.html && \
livemark build blog/2022-07-04-new-test.md --target blog/2022-07-04-new-test.html && \

# Start server...
livemark start index.md --target index.html --config livemark.yaml