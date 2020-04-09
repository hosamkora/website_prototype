'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "e8b7df5e90259bdb37dcc0a3c32b0c86",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/AssetManifest.json": "a14666be3e991041f9fb7e40dc872bd6",
"assets/LICENSE": "438af65b2a3c24ddc0c2f2bcb4363747",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/flutter_brand_icons/fonts/brands.ttf": "c68086e056cc711231ec09ea8b005516",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "60af892a1ddfb4320790d6af45718d5a",
"main.dart.js": "348ba4720e4d0c251fb69fc8f51bdbca",
"index.html": "c967ff635e93b4bff8b9f9a5191389bd",
"/": "c967ff635e93b4bff8b9f9a5191389bd"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
