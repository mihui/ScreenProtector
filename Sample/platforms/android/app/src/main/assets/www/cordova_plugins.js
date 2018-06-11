cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
  {
    "id": "cordova-plugin-screenprotector.screenprotector",
    "file": "plugins/cordova-plugin-screenprotector/www/android/screenprotector.js",
    "pluginId": "cordova-plugin-screenprotector",
    "clobbers": [
      "cordova.plugins.screenProtector"
    ],
    "runs": true
  }
];
module.exports.metadata = 
// TOP OF METADATA
{
  "cordova-plugin-screenprotector": "1.0.0",
  "cordova-plugin-whitelist": "1.2.2"
};
// BOTTOM OF METADATA
});