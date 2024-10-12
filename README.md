# Gleam Lustre Pwa Example
(this is not using the best practices please help us finding it)

## Why a PWA? 

1. very nice to have your website to have an app like feel ...
this is nice if your webapp is a tool

for example a drawing tool like https://excalidraw.com you can install it in your phone or pc also it works 100% offline and stores your drawing in your browser storage

2. if you want your site to cache data workbox helps with this (maybe someone that knows gleam more than me can figure a better way)


## Install

you need Workbox cli to make a service worker for you it has really nice features just in
GenerateSw or if you want advanced features like web push notification you can use InjectManifest

this is the docs for workbox it will help you make service workers with ease

https://developer.chrome.com/docs/workbox/modules/workbox-cli

then you can run 
```sh
gleam run -m lustre/dev build app ; workbox generateSW

```

then run it like this if you want to setup things for yourself

```sh 
workbox wizard
```


## Development

```sh
gleam run -m lustre/dev build app   # Run the project
# gleam test  # Run the tests
```

you don't need to test the SW in dev it might mess things up also if you run the pwa on the same port it will 
