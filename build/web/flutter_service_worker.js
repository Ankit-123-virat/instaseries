'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".idea/modules.xml": "9e76b956e97dbf7d14a4b3d83c8c2375",
".idea/web.iml": "24742e734b568c3f23d56498828ad0f3",
".idea/workspace.xml": "a01e00fc102350c1202ec223594e1dc6",
"assets/AssetManifest.bin": "fd2c6f619eb33f3ecb865a4b251ee350",
"assets/AssetManifest.bin.json": "d812d2668e8706c308270813490b6f3b",
"assets/assets/fonts/Inter_18pt-Regular.ttf": "37dcabff629c3690303739be2e0b3524",
"assets/assets/images/Camera%2520Icon.png": "8ac50d4f1ecc3770fbed9db4c481bec3",
"assets/assets/images/Camera1.png": "96a9aa557835548d8f7eec1de8454ef0",
"assets/assets/images/Comment.png": "8cfa748c7ce9e9aee2b6cd7003c920b9",
"assets/assets/images/Home.jpg": "7c9d2d4f2086c7ff8be349ca26837171",
"assets/assets/images/Icon%2520(1).png": "aa828494d422349ec056c9f72d5c9b8e",
"assets/assets/images/Icon%2520(3).png": "e479d0ccfc2a109e1e4843587186499d",
"assets/assets/images/Icon.png": "aa828494d422349ec056c9f72d5c9b8e",
"assets/assets/images/IGTV.png": "dd66e60f93319548d0d3c60b07d2acd6",
"assets/assets/images/image1.png": "e8e1aad9380e9a385b929e12377a69ee",
"assets/assets/images/image2.png": "b3fe76562b5d67875b0c827dc3c74f5e",
"assets/assets/images/Instagram%2520Logo%2520(1).png": "f67e1ee0324bb4896821a3e2f2b76db0",
"assets/assets/images/Like.png": "befbb7f9c0e2fd9cda4397b86d1c0949",
"assets/assets/images/Live%2520(1).png": "fb4014fd84cea2871961f9bc73555ad1",
"assets/assets/images/Messanger.png": "2eb3f452ae7f2b0cfb9702a12c1a5b0f",
"assets/assets/images/More%2520Icon.png": "26dc5d3236191908964b8427f5da2551",
"assets/assets/images/Oval(0).png": "ab3936c4554ee93a4bc6c2c15ade82b6",
"assets/assets/images/Oval.png": "93e6321294fb9b9cfe7d34d5d330a8fa",
"assets/assets/images/Private%2520Icon.png": "05b32570cad0cc4dd7cf5f61a639e794",
"assets/assets/images/Private.png": "05b32570cad0cc4dd7cf5f61a639e794",
"assets/assets/images/Profile%2520Photo%2520(1).png": "f10c964bae9bcdd5b7a0c577d42600a6",
"assets/assets/images/Profile%2520Photo%2520(2).png": "7c2b94b47572ddca67a8845ffcd9bc33",
"assets/assets/images/Profile%2520Photo%2520(3).png": "1937ec02afe0a45cb0ed3f589e656fef",
"assets/assets/images/Profile%2520Photo%2520(4).png": "fb3fd8860db39729176e224e8d216adc",
"assets/assets/images/Profile%2520Photo%2520(5).png": "c7a7cf90ecb7a8f1fa3b243c9f3fe6c3",
"assets/assets/images/Profile%2520Photo(6).png": "1ca2361fe7e52d9b500f6f370a0f83ef",
"assets/assets/images/Profile%2520Photo.png": "beccf166863e284bd383382cee2c63a6",
"assets/assets/images/profileimg.png": "ba1329d19fdc0b2ee07c09205d0af242",
"assets/assets/images/Rectangle%2520(1).png": "189c51e4d6043905659153cd5f4b67bd",
"assets/assets/images/Rectangle.png": "44e3765c43595c340191725217d4b30d",
"assets/assets/images/Shape.png": "96a9aa557835548d8f7eec1de8454ef0",
"assets/assets/images/Shapee.png": "042c08684185e6870ea9edb7c8e3d5f8",
"assets/assets/images/story1.png": "0f6fb6323e0deb0e4a28283255882305",
"assets/assets/images/story2.png": "f46e95deff9edd7c84d0b6ca340551fd",
"assets/assets/images/story3.png": "b631edb4319d7810ef3e489be107226a",
"assets/assets/images/Tab%25201.png": "5af3f9ec6a7ee9a58c19e0f9ccdfcd9b",
"assets/assets/images/Tab%25202.png": "f8fe46f106afa19bfe87280069e26212",
"assets/assets/images/Tab%25203.png": "f202eb19bf86e99639bc4dc0d13adb0f",
"assets/assets/images/Tab%25204.png": "a0cf7055c46ef9a6913b8a1caf43daec",
"assets/assets/images/Tab%25205.png": "4cb178852f9957bab888b77104938814",
"assets/assets/images/Tab1.png": "4f74d55621b193068916862438918e5f",
"assets/assets/images/Tab2.png": "7dd5dd2feeff2b8bbba79e4b9603d721",
"assets/assets/images/you1.png": "2e73f2b1759dc83d3a96682bfa7ed674",
"assets/assets/images/you10.png": "987192a68a00d67d04f9b2d3afd01393",
"assets/assets/images/you11.png": "31bbff5529f86661640172c23985496f",
"assets/assets/images/you12.png": "06eafdaa00627a5065402c88b368990a",
"assets/assets/images/you13.png": "c8a08c2f488a67a3bfe4e5da405f585a",
"assets/assets/images/you14.png": "3a330b99b26bed34807c47f74ab85155",
"assets/assets/images/you2.png": "987192a68a00d67d04f9b2d3afd01393",
"assets/assets/images/you20.png": "57a88f5761e9ab1b10027adc7d8023fc",
"assets/assets/images/you21.png": "0caee92ece5c515840bd3d4ca78629d1",
"assets/assets/images/you3.png": "31bbff5529f86661640172c23985496f",
"assets/assets/images/you4.png": "3ae407002b74f6cdb69695f8dbf91dac",
"assets/assets/images/you5.png": "3b1650502678eaaa109f86b25642a63c",
"assets/assets/images/you6.png": "987192a68a00d67d04f9b2d3afd01393",
"assets/assets/images/you7.png": "7210d7fc158af49d610b13e439c7c8d5",
"assets/assets/images/you8.png": "987192a68a00d67d04f9b2d3afd01393",
"assets/assets/images/you9.png": "31bbff5529f86661640172c23985496f",
"assets/FontManifest.json": "c560205b7dd20c3281cd8fe792a9a672",
"assets/fonts/MaterialIcons-Regular.otf": "ed66ed173c9ab8db71e96bbd1cdb7627",
"assets/NOTICES": "9a3f2a265604e0f14aa613aee9678bdd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "9d7fc783d76547e0a07bffd917ad3a6d",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "ebb663ec3ad2603fc9ee4cf5813afd1a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "bf7cd03adc18cf0a38236093cdd7b859",
"/": "bf7cd03adc18cf0a38236093cdd7b859",
"main.dart.js": "c3217b87e0d4c84ee24d77427193b423",
"manifest.json": "19774f4b95902b7cbc8c1bbf89e4d314",
"version.json": "32bfdfeaf931a239f065db79f6889916"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
