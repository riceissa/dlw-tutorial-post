
# stripped version without header info, for posting to EA Forum
stripped.html: post.md
	pandoc --template=tem.html --base-header=2 --toc \
		-f markdown+smart -t html \
		-o "$@" "$<"

.PHONY: clean
clean:
	rm -f stripped.html
