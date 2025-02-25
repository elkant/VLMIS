/*
 Copyright 2016 Google Inc. All Rights Reserved.
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 http://www.apache.org/licenses/LICENSE-2.0
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

// Names of the two caches used in this version of the service worker.
// Change to v2, etc. when you update any of the local resources, which will
// in turn trigger the install event again.
const PRECACHE = 'vl_precache-v65';
const RUNTIME = 'vl_runtimev65';

// A list of local resources we always want to be cached.
const PRECACHE_URLS=[
    'progressbar.json'
    ,'drugs1.json'
    ,'sites6.json'
    ,'css/dataTables.bootstrap.min.css'
    ,'css/jquery.dataTables.min.css'
    ,'css/bootstrap.css'
    ,'css/bootstrap-datepicker.min.css'
    ,'css/select2.css'
    ,'css/styles.css'
    ,'js/jquery.min.js'
    ,'js/bootstrap.js'
    ,'js/scripts.js'
    ,'js/bootstrap-datepicker.min.js'
    ,'js/select2.js'
    ,'js/pouchdb-7.2.1.js'
    ,'js/pouchdb.upsert.js'
    ,'js/datatables.min.js'
    ,'js/jquery.fileDownload.js'
    ,'images/ajax_loader.gif'
    ,'images/favicon.ico'
    ,'images/sort_asc.png'
    ,'images/sort_asc_disabled.png'
    ,'images/sort_both.png'
    ,'images/sort_desc.png'
    ,'images/sort_desc_disabled.png'
    ,'images/vl.png'
    ,'wizard/assets/js/bd-wizard.js'
    ,'wizard/assets/js/jquery.steps.js'
    ,'wizard/assets/js/popper.min.js'
    ,'wizard/assets/scss/bd-wizard.scss'
    ,'wizard/assets/css/bd-wizard.css'
    ,'wizard/assets/css/bd-wizard.css.map'
    ,'wizard/assets/css/mafonti.css'
    ,'wizard/assets/css/materialdesignicons.min.css'
    ,'wizard/assets/css/qkBWXvYC6trAT7zuC8m3xLtlmgzDCNg.woff2'
    ,'wizard/assets/css/qkBWXvYC6trAT7zuC8m5xLtlmgzD.woff2'
    ,'wizard/assets/css/qkBbXvYC6trAT7RVLtyU5rZP.woff2'
    ,'wizard/assets/css/qkBbXvYC6trAT7RbLtyU5rZPoAU.woff2'
    ,'wizard/assets/fonts/materialdesignicons-webfont.eot'
    ,'wizard/assets/fonts/materialdesignicons-webfont.ttf'
    ,'wizard/assets/fonts/materialdesignicons-webfont.woff'
    ,'wizard/assets/fonts/materialdesignicons-webfont.woff2'
    ,'fonts/glyphicons-halflings-regular.woff2'
    ,'fonts/glyphicons-halflings-regular.woff'
    ,'fonts/glyphicons-halflings-regular.ttf'];



// The install handler takes care of precaching the resources we always need.
self.addEventListener('install', event => {
  event.waitUntil(
    caches.open(PRECACHE)
      .then(cache => cache.addAll(PRECACHE_URLS))
      .then(self.skipWaiting())
  );
});

// The activate handler takes care of cleaning up old caches.
self.addEventListener('activate', event => {
  const currentCaches = [PRECACHE, RUNTIME];
  event.waitUntil(
    caches.keys().then(cacheNames => {
      return cacheNames.filter(cacheName => !currentCaches.includes(cacheName));
    }).then(cachesToDelete => {
      return Promise.all(cachesToDelete.map(cacheToDelete => {
        return caches.delete(cacheToDelete);
      }));
    }).then(() => self.clients.claim())
  );
});

// The fetch handler serves responses for same-origin resources from a cache.
// If no response is found, it populates the runtime cache with the response
// from the network before returning it to the page.
self.addEventListener('fetch', event => {
  // Skip cross-origin requests, like those for Google Analytics.
  if (event.request.url.startsWith(self.location.origin)) {
    event.respondWith(
      caches.match(event.request).then(cachedResponse => {
        if (cachedResponse) {
          return cachedResponse;
        }

        return caches.open(RUNTIME).then(cache => {
          return fetch(event.request).then(response => {
            // Put a copy of the response in the runtime cache.
            return cache.put(event.request, response.clone()).then(() => {
              return response;
            });
          });
        });
      })
    );
  }
});