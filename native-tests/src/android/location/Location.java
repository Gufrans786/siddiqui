package android.location;
import android.os.Bundle;
public class Location {
    private String provider;
    private double latitude, longitude;
    private long time, elapsed;
    private float accuracy, speed, bearing;
    private boolean hasAccuracy, hasSpeed, hasBearing;
    private Bundle extras;
    public Location(String provider) { this.provider = provider; }
    public Location(Location other) {
        provider=other.provider; latitude=other.latitude; longitude=other.longitude;
        time=other.time; elapsed=other.elapsed; accuracy=other.accuracy; speed=other.speed; bearing=other.bearing;
        hasAccuracy=other.hasAccuracy; hasSpeed=other.hasSpeed; hasBearing=other.hasBearing;
        extras=other.extras==null ? null : new Bundle(other.extras);
    }
    public String getProvider() { return provider; }
    public void setProvider(String value) { provider=value; }
    public double getLatitude() { return latitude; }
    public void setLatitude(double value) { latitude=value; }
    public double getLongitude() { return longitude; }
    public void setLongitude(double value) { longitude=value; }
    public long getTime() { return time; }
    public void setTime(long value) { time=value; }
    public long getElapsedRealtimeNanos() { return elapsed; }
    public void setElapsedRealtimeNanos(long value) { elapsed=value; }
    public boolean hasAccuracy() { return hasAccuracy; }
    public float getAccuracy() { return accuracy; }
    public void setAccuracy(float value) { accuracy=value; hasAccuracy=true; }
    public boolean hasSpeed() { return hasSpeed; }
    public float getSpeed() { return speed; }
    public void setSpeed(float value) { speed=value; hasSpeed=true; }
    public boolean hasBearing() { return hasBearing; }
    public float getBearing() { return bearing; }
    public void setBearing(float value) { bearing=value; hasBearing=true; }
    public Bundle getExtras() { return extras; }
    public void setExtras(Bundle value) { extras=value; }
}
