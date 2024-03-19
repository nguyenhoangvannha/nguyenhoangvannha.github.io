'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "37a25fd85546c1765e1e4d20009dd6a5",
"splash/img/light-2x.png": "2cd13baed2101e40eae49b5883bbd080",
"splash/img/dark-4x.png": "f7189d1db5333161d510083624fc3337",
"splash/img/light-3x.png": "08ffefbd6047c3dee30f74778c53a77f",
"splash/img/dark-3x.png": "08ffefbd6047c3dee30f74778c53a77f",
"splash/img/light-4x.png": "f7189d1db5333161d510083624fc3337",
"splash/img/dark-2x.png": "2cd13baed2101e40eae49b5883bbd080",
"splash/img/dark-1x.png": "b5a5a8d35d962c99d47e73dfd8946be7",
"splash/img/light-1x.png": "b5a5a8d35d962c99d47e73dfd8946be7",
"index.html": "c112cf51cc253e583fe9712edc8909fa",
"/": "c112cf51cc253e583fe9712edc8909fa",
"main.dart.js": "3b6c144ff2068a00b7731ab564f0d6a0",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "8aa7f88f93c4a3291670953de6193b1e",
"icons/Icon-192.png": "cf6ac8ba7170b515d6c9ffaf3d68d632",
"icons/Icon-maskable-192.png": "cf6ac8ba7170b515d6c9ffaf3d68d632",
"icons/Icon-maskable-512.png": "46f5244534b97f9af2c097bd0d6c533d",
"icons/Icon-512.png": "46f5244534b97f9af2c097bd0d6c533d",
"manifest.json": "73fb3b15e459ce558109415730c0d52a",
"assets/AssetManifest.json": "ee84fba88b00f4e2aadf3bb15c86e2fb",
"assets/NOTICES": "9518926931aba6f25da67e4b8dcd2afa",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "5d8bbd6edc1fdd025a3a8246afbd99b1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/nha_portfolio/assets/images/nhaForest.jpeg": "56daee0a355f78247c5f7e1bef4a0a91",
"assets/packages/nha_portfolio/assets/images/projectCover.png": "30e5bc8cd700fb45028c05f9f44fed6e",
"assets/packages/nha_portfolio/assets/images/nhaBlack.jpeg": "84c2fdcddd72b52752adfbeea1ee4804",
"assets/packages/nha_portfolio/assets/images/avatar_work.JPG": "09b1d44f274da79e91f72e194ad38348",
"assets/packages/nha_portfolio/assets/resume/Nguyen_Hoang_Van_Nha_Mobile_Engineer.pdf": "471e52dc6f7860b9f14007b3ed48021f",
"assets/packages/nha_portfolio/assets/icons/icons8-visual-studio-code-48.png": "25ca6f3660a2199bf556e24dcd84f973",
"assets/packages/nha_portfolio/assets/icons/akar-icons_link-chain.png": "949a2276ed06ee99714da79076c03d32",
"assets/packages/nha_portfolio/assets/icons/icons8-agile2-64.png": "181dc744fc6e1e66555e1b06be03d083",
"assets/packages/nha_portfolio/assets/icons/icons8-android-48.png": "849133f2e54b4abd6d6f93f4108dc470",
"assets/packages/nha_portfolio/assets/icons/icons8-javascript-48.png": "d8b359bb45cbe32632e8fc7901b27615",
"assets/packages/nha_portfolio/assets/icons/logos_react.png": "b8f6e21297100e441c6cf385ec9d73a1",
"assets/packages/nha_portfolio/assets/icons/icons8-firebase-48.png": "04aec5a53cd16f26a855e61aa5cd35b5",
"assets/packages/nha_portfolio/assets/icons/icons8-dart-48.png": "918e7c35823c7ad268ba831c6e7eaa64",
"assets/packages/nha_portfolio/assets/icons/icons8-phone-48.png": "bd62cf0369de152e0e219e9598ffcb8a",
"assets/packages/nha_portfolio/assets/icons/github.png": "e429fa5b7c03c524d7c7a87bd3734897",
"assets/packages/nha_portfolio/assets/icons/icons8-kotlin-48.png": "a7388fc60a26cfbeda5adf05dd318cc2",
"assets/packages/nha_portfolio/assets/icons/hcmus.png": "8838caf6e52a5638ba90415a25b53f3d",
"assets/packages/nha_portfolio/assets/icons/icons8-git-48.png": "5b2255699fcb506b570720cdbc8ade1b",
"assets/packages/nha_portfolio/assets/icons/icons8-gmail-48.png": "6c9baa013f158d3e9fc323ecd7afad9b",
"assets/packages/nha_portfolio/assets/icons/icons8-nodejs-48.png": "25578617761bc5f6a1f8d5fe69ae3889",
"assets/packages/nha_portfolio/assets/icons/icons8-flutter-48.png": "8efb797d33c586ef3cb71d4083dd1fdb",
"assets/packages/nha_portfolio/assets/icons/linkedin.png": "f3bddcba9246d6c889a770a7a06b4ff7",
"assets/packages/nha_portfolio/assets/icons/icons8-testing-96.png": "9394c20a94fa85c6b2e598c23ee467fb",
"assets/packages/nha_portfolio/assets/icons/android-studio-stable.png": "98e39d8a3bc87af1ca8e96325c2cf15c",
"assets/packages/nha_portfolio/assets/icons/icons8-agile-64.png": "d87537a295fb6ec5eab2f61569b67df0",
"assets/packages/nha_portfolio/assets/icons/icons8-scrum-64.png": "575ec8646705f5738b27edd7c4ded3a8",
"assets/packages/nha_portfolio/assets/icons/icons8-java-48.png": "7013d3cd840b6bed9697daf954c4c3e2",
"assets/packages/nha_portfolio/assets/icons/manabie.png": "59e9d182804fbf4399541bc43e345944",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "cc58123f9c245b5aa3ce0165b02a9c1d",
"assets/fonts/MaterialIcons-Regular.otf": "0022105e2e91c868e862e786583e0e71",
"assets/assets/resume/Nguyen_Hoang_Van_Nha_Mobile_Engineer.pdf": "471e52dc6f7860b9f14007b3ed48021f",
"assets/assets/resume/nha_flutter_resume.pdf": "471e52dc6f7860b9f14007b3ed48021f",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
