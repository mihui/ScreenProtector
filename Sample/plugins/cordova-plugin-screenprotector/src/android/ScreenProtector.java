/**
 * SecureScreen Plugin
 */
package mihui.net.ScreenProtector;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaInterface;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;

import android.app.Activity;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
/**
 * @author mihui
 *
 */
public class ScreenProtector extends CordovaPlugin {
	final static String TAG = ScreenProtector.class.getSimpleName();
	private static CordovaWebView _webView = null;

	public static CordovaWebView getWebView(){
		return _webView;
	}

	@Override
	public void initialize(CordovaInterface cordova, final CordovaWebView webView) {
		super.initialize(cordova, webView);
        _webView = webView;
        initializeWithActivity(this.cordova.getActivity());
	}

	public boolean execute(String action, JSONArray args, final CallbackContext callbackContext) throws JSONException {
        return false;
	}

    public static void initializeWithActivity(Activity activity) {
        activity.getWindow().setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE);
    }
}
