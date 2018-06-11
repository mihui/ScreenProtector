cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
  {
    "id": "cordova-plugin-screen-protector.screen-protector",
    "file": "plugins/cordova-plugin-screen-protector/www/android/screen-protector.js",
    "pluginId": "cordova-plugin-screen-protector",
    "clobbers": [
      "cordova.plugins.screen.protector"
    ],
    "runs": true
  }
];
module.exports.metadata = 
// TOP OF METADATA
{
  "cordova-plugin-whitelist": "1.2.2",
  "cordova-plugin-screen-protector": "1.0.0"
};
// BOTTOM OF METADATA
});