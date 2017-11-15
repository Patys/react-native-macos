---
id: version-0.50-geolocation
original_id: geolocation
title: geolocation
---
<a id="content"></a><h1><a class="anchor" name="geolocation"></a>Geolocation <a class="hash-link" href="docs/geolocation.html#geolocation">#</a></h1><div><div><p>The Geolocation API extends the web spec:
<a href="https://developer.mozilla.org/en-US/docs/Web/API/Geolocation">https://developer.mozilla.org/en-US/docs/Web/API/Geolocation</a></p><p>As a browser polyfill, this API is available through the <code>navigator.geolocation</code>
global - you do not need to <code>import</code> it.</p><h3><a class="anchor" name="configuration-and-permissions"></a>Configuration and Permissions <a class="hash-link" href="docs/geolocation.html#configuration-and-permissions">#</a></h3><span><div class="banner-crna-ejected">
  <h3>Projects with Native Code Only</h3>
  <p>
    This section only applies to projects made with <code>react-native init</code>
    or to those made with Create React Native App which have since ejected. For
    more information about ejecting, please see
    the <a href="https://github.com/react-community/create-react-native-app/blob/master/EJECTING.md" target="_blank">guide</a> on
    the Create React Native App repository.
  </p>
</div>

</span><h4><a class="anchor" name="ios"></a>iOS <a class="hash-link" href="docs/geolocation.html#ios">#</a></h4><p>You need to include the <code>NSLocationWhenInUseUsageDescription</code> key
in Info.plist to enable geolocation when using the app. Geolocation is
enabled by default when you create a project with <code>react-native init</code>.</p><p>In order to enable geolocation in the background, you need to include the
'NSLocationAlwaysUsageDescription' key in Info.plist and add location as
a background mode in the 'Capabilities' tab in Xcode.</p><h4><a class="anchor" name="android"></a>Android <a class="hash-link" href="docs/geolocation.html#android">#</a></h4><p>To request access to location, you need to add the following line to your
app's <code>AndroidManifest.xml</code>:</p><p><code>&lt;uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" /&gt;</code></p><p>Android API &gt;= 18 Positions will also contain a <code>mocked</code> boolean to indicate if position
was created from a mock provider.</p><span><p>
  Android API &gt;= 23 Requires an additional step to check for, and request
  the ACCESS_FINE_LOCATION permission using
  the <a href="https://facebook.github.io/react-native/docs/permissionsandroid.html" target="_blank">PermissionsAndroid API</a>.
  Failure to do so may result in a hard crash.
</p>
</span></div><span><h3><a class="anchor" name="methods"></a>Methods <a class="hash-link" href="docs/geolocation.html#methods">#</a></h3><div class="props"><div class="prop"><h4 class="methodTitle"><a class="anchor" name="setrnconfiguration"></a><span class="methodType">static </span>setRNConfiguration<span class="methodType">(config)</span> <a class="hash-link" href="docs/geolocation.html#setrnconfiguration">#</a></h4><div><p>Sets configuration options that will be used in all location requests.</p><h3><a class="anchor" name="options"></a>Options <a class="hash-link" href="docs/geolocation.html#options">#</a></h3><h4><a class="anchor" name="ios"></a>iOS <a class="hash-link" href="docs/geolocation.html#ios">#</a></h4><ul><li><code>skipPermissionRequests</code> - defaults to <code>false</code>, if <code>true</code> you must request permissions
before using Geolocation APIs.</li></ul></div></div><div class="prop"><h4 class="methodTitle"><a class="anchor" name="requestauthorization"></a><span class="methodType">static </span>requestAuthorization<span class="methodType">()</span> <a class="hash-link" href="docs/geolocation.html#requestauthorization">#</a></h4><div><p>Request suitable Location permission based on the key configured on pList.
If NSLocationAlwaysUsageDescription is set, it will request Always authorization,
although if NSLocationWhenInUseUsageDescription is set, it will request InUse
authorization.</p></div></div><div class="prop"><h4 class="methodTitle"><a class="anchor" name="getcurrentposition"></a><span class="methodType">static </span>getCurrentPosition<span class="methodType">(geo_success, geo_error?, geo_options?)</span> <a class="hash-link" href="docs/geolocation.html#getcurrentposition">#</a></h4><div><p>Invokes the success callback once with the latest location info.  Supported
options: timeout (ms), maximumAge (ms), enableHighAccuracy (bool)
On Android, if the location is cached this can return almost immediately,
or it will request an update which might take a while.</p></div></div><div class="prop"><h4 class="methodTitle"><a class="anchor" name="watchposition"></a><span class="methodType">static </span>watchPosition<span class="methodType">(success, error?, options?)</span> <a class="hash-link" href="docs/geolocation.html#watchposition">#</a></h4><div><p>Invokes the success callback whenever the location changes.  Supported
options: timeout (ms), maximumAge (ms), enableHighAccuracy (bool), distanceFilter(m), useSignificantChanges (bool)</p></div></div><div class="prop"><h4 class="methodTitle"><a class="anchor" name="clearwatch"></a><span class="methodType">static </span>clearWatch<span class="methodType">(watchID)</span> <a class="hash-link" href="docs/geolocation.html#clearwatch">#</a></h4></div><div class="prop"><h4 class="methodTitle"><a class="anchor" name="stopobserving"></a><span class="methodType">static </span>stopObserving<span class="methodType">()</span> <a class="hash-link" href="docs/geolocation.html#stopobserving">#</a></h4></div></div></span></div><p class="edit-page-block"><a target="_blank" href="https://github.com/facebook/react-native/blob/master/Libraries/Geolocation/Geolocation.js">Improve this page</a> by sending a pull request!</p><div class="docs-prevnext"><a class="docs-prev" href="docs/easing.html#content">← Prev</a><a class="docs-next" href="docs/imageeditor.html#content">Next →</a></div>