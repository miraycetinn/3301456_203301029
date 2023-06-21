'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "2ec0ad2da70d66ad7da6740fe5d363cd",
"index.html": "580eea72954c3f6ee82b1b2459658672",
"/": "580eea72954c3f6ee82b1b2459658672",
"main.dart.js": "d7ca1ce490dbbf3d0d45ea10f4fca840",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "eb40398047f10ba8fc5d8b16d2a495cc",
"assets/AssetManifest.json": "1815981fe1a8baf66568f40e4d7a8b2c",
"assets/NOTICES": "74bbefd98c22c3c254adf91a8f76c14d",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/img_1.png": "aab10920c2e8f030a84a3f2562020d54",
"assets/assets/night_log.svg": "6df5e8fc02d7744fd8279ea90fd28e76",
"assets/assets/img_2.png": "5c361a00307948a0ef461651d8d3f555",
"assets/assets/progress_icon.svg": "114f1c354ef12a9d30ce061606fcefd3",
"assets/assets/img_3.png": "99c3ca85b60339a3d9152f4dc3b6fcb8",
"assets/assets/splash_icon.svg": "bdd115da74f0ab1755d29aa02a71a449",
"assets/assets/img_7.png": "299e91f7b6b57c8f5bd28203a15e89ab",
"assets/assets/img_6.png": "b66e3a2d9cd68d51782ed290a767e22b",
"assets/assets/no_activity.svg": "b20b53460308e0eeed54f06e98c9a03e",
"assets/assets/img_4.png": "d91574d1bc430032d8aa427923800daa",
"assets/assets/img_5.png": "ef5f83cc507849d4acef3cdebc39a52b",
"assets/assets/bubble.svg": "cb6fa018944cff89f265b871d5972814",
"assets/assets/my_habit_icon.svg": "360e4aa103e031df25f933e1e6e4e81e",
"assets/assets/diary_log.svg": "70c00478661f5e299d401dd36daba9c4",
"assets/assets/img.png": "ee6f6d52c610ab0a8e1cba77657861a1",
"assets/assets/login_illustration.svg": "380a53a7150fe381fec9be01308315e0",
"assets/assets/night_routine.svg": "2eea3089ddb177f4e4e5835d9d0ae14b",
"assets/assets/skin_log.svg": "697438b63fd55b7dda7d39f1cb816e0b",
"assets/assets/morning_log.svg": "7f24e629661094cf073eb1d7f19842de",
"assets/assets/skin_type_icon.svg": "b6ca94d8775d40a0d5fdbdacfad86303",
"assets/assets/concern_icon.svg": "e59c6e6db0277243eb1bfb1a53855a37",
"assets/assets/age_gender_icon.svg": "e83d7e301dc19d0bcf13e0f43f1bb305",
"assets/assets/morning_routine.svg": "91128098b76c9e54631365fc765e1680",
"assets/assets/setting_icon.svg": "17935fbc96f5cac85a4e69d3dd3f077a",
"assets/assets/home_page_top.svg": "4948f3c292177b80d15865bd5f3012b3",
"assets/assets/right_arrow_icon.svg": "86650a44dd3256afb862934d6134aa4d",
"assets/assets/left_arrow_icon.svg": "92964114717bcbcc8e8bb6299d810691",
"assets/assets/welcome_illustration.svg": "6f648ac4a0e89614b06f9ce28740d699",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
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
