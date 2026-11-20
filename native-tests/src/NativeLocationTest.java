import android.content.Context;
import android.location.Location;
import android.os.Handler;
import com.facebook.react.bridge.*;
import com.rnmapbox.rnmbx.v11compat.location.LocationEngineResult;
import org.json.JSONObject;
import sa.lg.android.locate.autobid.AppLocationOverride;
import sa.lg.android.locate.autobid.AutoBidPreferences;

public final class NativeLocationTest {
    private static int assertions;
    private static void check(boolean condition, String message) {
        assertions++;
        if (!condition) throw new AssertionError(message);
    }
    public static final class Map implements WritableMap {
        final JSONObject json;
        Map(JSONObject json) { this.json=json; }
    }
    public static final class Module {
        JSONObject last;
        int realRequests;
        public static WritableMap jsonToMap(JSONObject value) {
            return new Map(AppLocationOverride.jsonLocation(value));
        }
        private void sendEvent(String name, WritableMap value) { last=((Map)value).json; }
        public void getCurrentPosition(ReadableMap options, Callback success, Callback failure) {
            realRequests++;
            success.invoke(jsonToMap(new JSONObject().put("coords",new JSONObject().put("latitude",21.5).put("longitude",39.2))));
        }
    }
    public static final class Manager {
        com.mapbox.common.location.Location last;
        public void onSuccess(LocationEngineResult result) { last=result.getLastLocation(); }
    }
    public static final class Puck {
        com.mapbox.geojson.Point[] last;
        public void onLocationUpdated(com.mapbox.geojson.Point[] value, kotlin.jvm.functions.Function1 options) {
            last=(com.mapbox.geojson.Point[])AppLocationOverride.puckLocation(this,value);
        }
    }
    public static void main(String[] args) throws Exception {
        Context context = new Context();
        AutoBidPreferences preferences = new AutoBidPreferences(context);
        preferences.clearPickedLocation();
        AppLocationOverride.initialize(context);
        check(AppLocationOverride.selectedLocation()==null,"Real GPS must be the default");
        Location real = new Location("gps");
        real.setLatitude(21.5); real.setLongitude(39.2); real.setAccuracy(8); real.setTime(System.currentTimeMillis());
        check(AppLocationOverride.androidLocation(context,real)==real,"GPS pass-through without a selection");
        var realMap = new com.mapbox.common.location.Location.Builder().latitude(21.5).longitude(39.2).source("gps").build();
        check(AppLocationOverride.mapboxLocation(realMap)==realMap,"Map pass-through without a selection");
        Module module = new Module();
        Manager manager = new Manager();
        Puck puck = new Puck();
        puck.onLocationUpdated(new com.mapbox.geojson.Point[]{com.mapbox.geojson.Point.fromLngLat(39.2,21.5)},null);
        AppLocationOverride.registerBackgroundModule(module,context);
        AppLocationOverride.registerMapManager(manager,context);
        check(!preferences.savePickedLocation(91,0,13),"Reject invalid native coordinates");
        check(preferences.savePickedLocation(-33.8688,151.2093,15),"Save signed coordinates");
        AppLocationOverride.selectionChanged(context);
        check(module.last.getJSONObject("coords").getDouble("latitude")==-33.8688,"Save refreshes app location immediately");
        check(manager.last.getLongitude()==151.2093,"Save refreshes the Mapbox puck immediately");
        check(puck.last[0].latitude()==-33.8688,"Save refreshes Mapbox's independent default puck provider");
        puck.onLocationUpdated(new com.mapbox.geojson.Point[]{com.mapbox.geojson.Point.fromLngLat(39.2,21.5)},null);
        check(puck.last[0].longitude()==151.2093,"A new hardware fix cannot move the default puck back");
        check(module.last.getJSONObject("extras").getBoolean("locatego_manual"),"Manual source remains explicit");
        Location adapted = AppLocationOverride.androidLocation(context,real);
        check(adapted.getLatitude()==-33.8688,"Background live fix uses selected latitude");
        check(real.getLatitude()==21.5 && real.getProvider().equals("gps"),"Never mutate a hardware location object");
        JSONObject original = new JSONObject().put("coords",new JSONObject().put("latitude",21.5).put("longitude",39.2))
                .put("extras",new JSONObject().put("orders","preserve"));
        JSONObject updated = AppLocationOverride.jsonLocation(original);
        check(updated.getJSONObject("coords").getDouble("longitude")==151.2093,"In-flight callbacks cannot overwrite the pin");
        check(original.getJSONObject("coords").getDouble("longitude")==39.2,"Keep incoming JSON unchanged");
        check(updated.getJSONObject("extras").getString("orders").equals("preserve"),"Keep order metadata");
        Object[] callbackValues = new Object[1];
        Callback success = values -> callbackValues[0]=values[0];
        check(AppLocationOverride.currentPosition(module,success),"Current-position request works without a new GPS fix");
        check(((Map)callbackValues[0]).json.getJSONObject("coords").getDouble("latitude")==-33.8688,"Current-position callback uses selected pin");
        AppLocationOverride.initialize(new Context());
        Handler.runDelayed();
        check(AppLocationOverride.selectedLocation().getLongitude()==151.2093,"Restore selection from preferences");
        preferences.savePickedLocation(0,0,10);
        AppLocationOverride.selectionChanged(context);
        check(manager.last.getLatitude()==0 && manager.last.getLongitude()==0,"Changing to zero coordinates reaches the map");
        check(module.last.getJSONObject("coords").getDouble("latitude")==0,"Changing pin reaches app state");
        preferences.clearPickedLocation();
        AppLocationOverride.selectionChanged(context);
        check(AppLocationOverride.selectedLocation()==null,"Use real GPS disables the override");
        check(manager.last.getLatitude()==21.5 && manager.last.getLongitude()==39.2,"Restore the actual map position");
        check(puck.last[0].latitude()==21.5 && puck.last[0].longitude()==39.2,"Restore actual default puck coordinates");
        check(module.realRequests==1,"Request a new actual GPS fix on restore");
        check(module.last.getJSONObject("coords").getDouble("latitude")==21.5,"Restore actual app location");
        check(!AppLocationOverride.currentPosition(module,success),"Normal current-position flow resumes");
        System.out.println("Native location integration: " + assertions + " assertions passed");
    }
}
