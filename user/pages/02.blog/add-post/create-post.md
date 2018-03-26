---
title: 'Add Blog Post'
template: form
pageconfig:
    parent: '/blog'
    include_username: true
    overwrite_mode: true
pagefrontmatter:
    template: item
    title: My new Blog post
    taxonomy:
        category: blog
        tag: [journal, guest]
form:
    name: addpage.blogpost
    fields:
        -
            name: author
            label: 'Author'
            type: text
        -
            name: title
            label: 'Post Title'
            type: text
        -
            name: taxonomy.tag
            label: 'Tags (comma separated)'
            type: text
        -
            name: content
            label: 'Post Content'
            type: textarea
            size: long
            classes: editor
            size: long
        -
            name: images
            label: 'Images to upload'
            type: file
            multiple: true
            accept:
                - 'image/*'
            destination: '@self'
        -
            name: honeypot
            type: honeypot
    buttons:
        -
            type: submit
            value: Submit
    process:
        -
            addpage: null
        -
            redirect: '/blog'
---

## New Blog Post

Write your blog post: