> **:warning: Still in Development :warning:**
>
> This fork will remove most dependencies and replace them with [handlebarsjs](http://handlebarsjs.com/) and remove support for CDN dependencies[*](https://www.sitepoint.com/7-reasons-not-to-use-a-cdn/).

# HeaderFM

A simple way to administer a WebDAV filesystem in a browser.

# Currently Supported

Firefox (Unsure of specific version, works on latest)
Chrome (Unsure of specific version, works on latest)

## Install

Download and unzip release

Using `Apache`'s `HeaderName` directive.
See `/examples/apache/webdav.conf` as example

## Supports

 - Browsing WebDAV shares by folder
 - Previewing ~~font, image, video, audio and anything supplied by the server with `text/` mime-types~~
 - Directory creation
 - Drag and drop file upload

## Development

This requires [Docker](https://docs.docker.com/install/) on a 64bit processor.

```shell
# build image
npm run test:build

# run image with files
npm run test

# remove added docker image and container
npm run test:clean
```

## TODO

 - Removal of old dependencies
 - Use HandlebarsJS
 - Add style
 - Add image lightbox using [baguettebox](https://www.npmjs.com/package/baguettebox.js)
