cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "file": "plugins/cordova-plugin-screenprotector/www/ios/screenprotector.js",
        "id": "cordova-plugin-screenprotector.screenprotector",
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
    "cordova-plugin-whitelist": "1.2.2",
    "cordova-plugin-screenprotector": "1.0.0"
}
// BOTTOM OF METADATA
});