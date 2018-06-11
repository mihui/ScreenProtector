cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
  {
    "id": "cordova-plugin-screen-protector.screen-protector",
    "file": "plugins/cordova-plugin-screen-protector/www/ios/screen-protector.js",
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
  "cordova-plugin-screen-protector": "1.0.0",
  "cordova-plugin-whitelist": "1.2.2"
};
// BOTTOM OF METADATA
});