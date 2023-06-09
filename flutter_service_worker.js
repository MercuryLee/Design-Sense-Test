'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.json": "4ec741bc7ea67ba815b6a556f7a89c5d",
"assets/AssetManifest.smcbin": "0094e5a18f759eb402f2ded497ed68f7",
"assets/assets/fonts/SUIT-Bold.otf": "1eda1397d40924ecf239c4fa60de64fe",
"assets/assets/fonts/SUIT-ExtraBold.otf": "cdc93dd3a2cda0734e83004f188de8c9",
"assets/assets/fonts/SUIT-ExtraLight.otf": "2a770e1638fe4a53f1052526822e228a",
"assets/assets/fonts/SUIT-Heavy.otf": "096f0f359e2ab428292a8745bd344744",
"assets/assets/fonts/SUIT-Light.otf": "940509e10da1c3cbb3620481430ca51f",
"assets/assets/fonts/SUIT-Medium.otf": "e6a104e243d98ae8091fc535cea1fb6b",
"assets/assets/fonts/SUIT-Regular.otf": "1b775c1631505fc383317347f7ae4e35",
"assets/assets/fonts/SUIT-SemiBold.otf": "e706b11c5f8b9614492588d28994e9de",
"assets/assets/fonts/SUIT-Thin.otf": "5d05773df23d1d65dfff24bb85c7b7df",
"assets/assets/fonts/Tenada.ttf": "0ba8366fb06b6b4c2fe9d6b83ac85bcf",
"assets/assets/icons/logo.png": "c8cdeb24e172d01068817101fbb8e352",
"assets/assets/image/10A.svg": "8174a8161c8afdd94fe5d55812b05cc1",
"assets/assets/image/10B.svg": "50bed0d7fbb85c28c8b03876af7a574f",
"assets/assets/image/1A.svg": "7975aa4aebb591375960d3eaa38fd214",
"assets/assets/image/1B.svg": "34d2c81c35ea49bdc9d3763df351d4d1",
"assets/assets/image/4A.svg": "3fd5f1571dddb4ec553a652a03086d48",
"assets/assets/image/4B.svg": "35585636a32f336c065880524c551aaa",
"assets/assets/image/5B.svg": "4f1a0349afa8d55c50870a41ea05fc9c",
"assets/assets/image/6A.svg": "185976c340c9037b654f367b8505339e",
"assets/assets/image/6B.svg": "61059005044021d30fba7c4d4f8c7af5",
"assets/assets/image/7A.svg": "8ec983481f1db7dd59852b3f88a727e6",
"assets/assets/image/7B.svg": "d2ccf1c1384e43d3cabe7a5f09b03606",
"assets/assets/image/8A.svg": "8ea9a870f620bae263b5d96b74dc64c2",
"assets/assets/image/8B.svg": "316192a8545ed61384f756e0d548911a",
"assets/assets/image/9A.svg": "8ea9a870f620bae263b5d96b74dc64c2",
"assets/assets/image/9B.svg": "3c5d509697d185ff55dd4fbbd75a2ed5",
"assets/FontManifest.json": "5319a10ff8eef25ebda6825ae6cda018",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/NOTICES": "c748af3e53d4099994486df286587efb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "59ed8478b398a8966eee147930f3d966",
"canvaskit/canvaskit.wasm": "641ba6d615314c42874bf914ef2d093e",
"canvaskit/chromium/canvaskit.js": "853c6cebea386c05aa9d954f11b2c1ca",
"canvaskit/chromium/canvaskit.wasm": "ffc522e9ff0a7bbe6bfd2a6f54f974e4",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "0d7c2e198fc5420d3940de2d44c19023",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"index.html": "0b17dbc32e74b9ac818d381f3a2ef3e1",
"/": "0b17dbc32e74b9ac818d381f3a2ef3e1",
"main.dart.js": "1d9f6cf189550bbf0f5b4e5a5956ffd4",
"version.json": "fb5375e36c7f03c1232a0f7dfb658023"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
