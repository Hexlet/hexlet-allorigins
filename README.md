All Origins
=======

[![github action status](https://github.com/Hexlet/hexlet-allorigins/workflows/Node%20CI/badge.svg)](../../actions)

Pull contents from any page via API (as JSON/P or raw) and avoid [Same-origin policy](https://en.wikipedia.org/wiki/Same-origin_policy) problems.


----

A free and open source javascript clone of [AnyOrigin](https://web.archive.org/web/20180807170914/http://anyorigin.com/), inspired by [Whatever Origin](http://WhateverOrigin.org), but with support to gzipped pages. Forked from https://github.com/gnuns/allorigins

### Examples

To `fetch` data from http://wikipedia.org:

```js
fetch(`https://allorigins.hexlet.app/get?url=${encodeURIComponent('https://wikipedia.org')}`)
  .then(response => {
    if (response.ok) return response.json()
    throw new Error('Network response was not ok.')
  })
  .then(data => console.log(data.contents));
```

Or with jQuery

```js
$.getJSON('https://allorigins.hexlet.app/get?url=' + encodeURIComponent('https://wikipedia.org'), function (data) {
    alert(data.contents);
});
```
### Options


###### charset
**Description:** Set the response character encoding (charset)  \
**Example:** `https://allorigins.hexlet.app/get?charset=ISO-8859-1&url=https://pt.wikipedia.org/`


###### raw
**Description:** Get the raw contents ([CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS))  \
**Example:** `https://allorigins.hexlet.app/raw?url=https://example.org/`

###### callback
**Description:** Get a [JSONP](https://www.w3schools.com/js/js_json_jsonp.asp) response  \
**Example:** `https://allorigins.hexlet.app/get?callback=myFunc&url=https://example.org/`


###### disableCache
**Description** Disable caching responses \
**Example** `https://allorigins.hexlet.app/get?disableCache=true&url=https://pt.wikipedia.org/`


### On your own server
```sh

# Clone the repo
git clone https://github.com/Hexlet/hexlet-allorigins

# Install dependencies
cd allOrigins
npm install

# Fire it up!
npm start # the default port is 1458
```
