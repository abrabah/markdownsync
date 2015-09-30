#!/usr/bin/python
import sys
import markdown2

MARKDOWN_ARGS = ["fenced-code-blocks"]


if len(sys.argv) < 2:
    print "Wrong numer of arguments, usage <markdown file>"
    sys.exit()



markdownfile = open(sys.argv[1])

#TODO svave markdown file content to mongodb
print markdown2.markdown(markdownfile.read(), extras=MARKDOWN_ARGS) 

markdownfile.close()

#TODO read all file references copy static resource (images, for instace) over to the server



# convert the file to markdown
# send file to server 
