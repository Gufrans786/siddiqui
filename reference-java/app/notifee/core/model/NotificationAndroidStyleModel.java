package app.notifee.core.model;

import android.graphics.Bitmap;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import androidx.core.app.Person;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.text.HtmlCompat;
import app.notifee.core.Logger;
import com.caverock.androidsvg.SVGParser;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.mapbox.maps.plugin.locationcomponent.ModelSourceWrapper;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import n.o.t.i.f.e.e.p;
import n.o.t.i.f.e.e.r;
import org.bouncycastle.i18n.ErrorBundle;

public class NotificationAndroidStyleModel {
    private static final String TAG = "NotificationAndroidStyle";
    private Bundle mNotificationAndroidStyleBundle;

    private NotificationAndroidStyleModel(Bundle bundle) {
        this.mNotificationAndroidStyleBundle = bundle;
    }

    public static NotificationAndroidStyleModel fromBundle(Bundle bundle) {
        return new NotificationAndroidStyleModel(bundle);
    }

    private ListenableFuture<NotificationCompat.Style> getBigPictureStyleTask(ListeningExecutorService listeningExecutorService) {
        return listeningExecutorService.submit(new Callable() {
            @Override
            public final Object call() {
                return this.f$0.m192xb4e8acab();
            }
        });
    }

    private NotificationCompat.BigTextStyle getBigTextStyle() {
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
        if (this.mNotificationAndroidStyleBundle.containsKey("text")) {
            bigTextStyle = bigTextStyle.bigText(HtmlCompat.fromHtml(this.mNotificationAndroidStyleBundle.getString("text"), 0));
        }
        if (this.mNotificationAndroidStyleBundle.containsKey("title")) {
            bigTextStyle = bigTextStyle.setBigContentTitle(HtmlCompat.fromHtml(this.mNotificationAndroidStyleBundle.getString("title"), 0));
        }
        return this.mNotificationAndroidStyleBundle.containsKey(ErrorBundle.SUMMARY_ENTRY) ? bigTextStyle.setSummaryText(HtmlCompat.fromHtml(this.mNotificationAndroidStyleBundle.getString(ErrorBundle.SUMMARY_ENTRY), 0)) : bigTextStyle;
    }

    private NotificationCompat.InboxStyle getInboxStyle() {
        NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
        if (this.mNotificationAndroidStyleBundle.containsKey("title")) {
            inboxStyle = inboxStyle.setBigContentTitle(HtmlCompat.fromHtml(this.mNotificationAndroidStyleBundle.getString("title"), 0));
        }
        if (this.mNotificationAndroidStyleBundle.containsKey(ErrorBundle.SUMMARY_ENTRY)) {
            inboxStyle = inboxStyle.setSummaryText(HtmlCompat.fromHtml(this.mNotificationAndroidStyleBundle.getString(ErrorBundle.SUMMARY_ENTRY), 0));
        }
        ArrayList<String> stringArrayList = this.mNotificationAndroidStyleBundle.getStringArrayList("lines");
        for (int i = 0; i < ((ArrayList) Objects.requireNonNull(stringArrayList)).size(); i++) {
            inboxStyle = inboxStyle.addLine(HtmlCompat.fromHtml(stringArrayList.get(i), 0));
        }
        return inboxStyle;
    }

    private ListenableFuture<NotificationCompat.Style> getMessagingStyleTask(final ListeningExecutorService listeningExecutorService) {
        return listeningExecutorService.submit(new Callable() {
            @Override
            public final Object call() {
                return this.f$0.m193x25b4cf9e(listeningExecutorService);
            }
        });
    }

    private static ListenableFuture<Person> getPerson(ListeningExecutorService listeningExecutorService, final Bundle bundle) {
        return listeningExecutorService.submit(new Callable() {
            @Override
            public final Object call() {
                return NotificationAndroidStyleModel.lambda$getPerson$0(bundle);
            }
        });
    }

    static Person lambda$getPerson$0(Bundle bundle) throws Exception {
        Bitmap bitmap;
        Person.Builder builder = new Person.Builder();
        builder.setName(bundle.getString("name"));
        if (bundle.containsKey("id")) {
            builder.setKey(bundle.getString("id"));
        }
        if (bundle.containsKey("bot")) {
            builder.setBot(bundle.getBoolean("bot"));
        }
        if (bundle.containsKey("important")) {
            builder.setImportant(bundle.getBoolean("important"));
        }
        if (bundle.containsKey("icon")) {
            String str = (String) Objects.requireNonNull(bundle.getString("icon"));
            try {
                bitmap = r.a(str).get(10L, TimeUnit.SECONDS);
            } catch (TimeoutException e) {
                Logger.e(TAG, "Timeout occurred whilst trying to retrieve a person icon: " + str, (Exception) e);
                bitmap = null;
            } catch (Exception e2) {
                Logger.e(TAG, "An error occurred whilst trying to retrieve a person icon: " + str, e2);
                bitmap = null;
            }
            if (bitmap != null) {
                builder.setIcon(IconCompat.createWithAdaptiveBitmap(bitmap));
            }
        }
        if (bundle.containsKey(ModelSourceWrapper.URL)) {
            builder.setUri(bundle.getString(ModelSourceWrapper.URL));
        }
        return builder.build();
    }

    public ListenableFuture<NotificationCompat.Style> getStyleTask(ListeningExecutorService listeningExecutorService) {
        int iA = p.a(this.mNotificationAndroidStyleBundle.get(SVGParser.XML_STYLESHEET_ATTR_TYPE));
        if (iA == 0) {
            return getBigPictureStyleTask(listeningExecutorService);
        }
        if (iA == 1) {
            return Futures.immediateFuture(getBigTextStyle());
        }
        if (iA == 2) {
            return Futures.immediateFuture(getInboxStyle());
        }
        if (iA != 3) {
            return null;
        }
        return getMessagingStyleTask(listeningExecutorService);
    }

    NotificationCompat.Style m192xb4e8acab() throws Exception {
        String string;
        Bitmap bitmap;
        NotificationCompat.BigPictureStyle bigPictureStyle = new NotificationCompat.BigPictureStyle();
        Bitmap bitmap2 = null;
        if (this.mNotificationAndroidStyleBundle.containsKey("picture")) {
            String str = (String) Objects.requireNonNull(this.mNotificationAndroidStyleBundle.getString("picture"));
            try {
                bitmap = r.a(str).get(10L, TimeUnit.SECONDS);
            } catch (TimeoutException e) {
                Logger.e(TAG, "Timeout occurred whilst trying to retrieve a big picture style image: " + str, (Exception) e);
                bitmap = null;
            } catch (Exception e2) {
                Logger.e(TAG, "An error occurred whilst trying to retrieve a big picture style image: " + str, e2);
                bitmap = null;
            }
            if (bitmap != null) {
                bigPictureStyle.bigPicture(bitmap);
            }
        }
        if (this.mNotificationAndroidStyleBundle.containsKey("largeIcon")) {
            string = this.mNotificationAndroidStyleBundle.getString("largeIcon");
            if (string == null) {
                bigPictureStyle.bigLargeIcon((Bitmap) null);
            }
        } else {
            string = null;
        }
        if (string != null) {
            try {
                bitmap2 = r.a(string).get(10L, TimeUnit.SECONDS);
            } catch (TimeoutException e3) {
                Logger.e(TAG, "Timeout occurred whilst trying to retrieve a big picture style large icon: " + string, (Exception) e3);
            } catch (Exception e4) {
                Logger.e(TAG, "An error occurred whilst trying to retrieve a big picture style large icon: " + string, e4);
            }
            if (bitmap2 != null) {
                bigPictureStyle.bigLargeIcon(bitmap2);
            }
        }
        if (this.mNotificationAndroidStyleBundle.containsKey("title")) {
            bigPictureStyle = bigPictureStyle.setBigContentTitle(HtmlCompat.fromHtml(this.mNotificationAndroidStyleBundle.getString("title"), 0));
        }
        return this.mNotificationAndroidStyleBundle.containsKey(ErrorBundle.SUMMARY_ENTRY) ? bigPictureStyle.setSummaryText(HtmlCompat.fromHtml(this.mNotificationAndroidStyleBundle.getString(ErrorBundle.SUMMARY_ENTRY), 0)) : bigPictureStyle;
    }

    NotificationCompat.Style m193x25b4cf9e(ListeningExecutorService listeningExecutorService) throws Exception {
        NotificationCompat.MessagingStyle messagingStyle = new NotificationCompat.MessagingStyle(getPerson(listeningExecutorService, (Bundle) Objects.requireNonNull(this.mNotificationAndroidStyleBundle.getBundle("person"))).get(20L, TimeUnit.SECONDS));
        if (this.mNotificationAndroidStyleBundle.containsKey("title")) {
            messagingStyle = messagingStyle.setConversationTitle(HtmlCompat.fromHtml(this.mNotificationAndroidStyleBundle.getString("title"), 0));
        }
        if (this.mNotificationAndroidStyleBundle.containsKey("group")) {
            messagingStyle = messagingStyle.setGroupConversation(this.mNotificationAndroidStyleBundle.getBoolean("group"));
        }
        ArrayList parcelableArrayList = this.mNotificationAndroidStyleBundle.getParcelableArrayList("messages");
        for (int i = 0; i < ((ArrayList) Objects.requireNonNull(parcelableArrayList)).size(); i++) {
            Bundle bundle = (Bundle) parcelableArrayList.get(i);
            messagingStyle = messagingStyle.addMessage(HtmlCompat.fromHtml(bundle.getString("text"), 0), p.b(bundle.get("timestamp")), bundle.containsKey("person") ? getPerson(listeningExecutorService, (Bundle) Objects.requireNonNull(bundle.getBundle("person"))).get(20L, TimeUnit.SECONDS) : null);
        }
        return messagingStyle;
    }

    public Bundle toBundle() {
        return (Bundle) this.mNotificationAndroidStyleBundle.clone();
    }
}
