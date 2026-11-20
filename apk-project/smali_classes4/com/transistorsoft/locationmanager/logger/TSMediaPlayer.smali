.class public Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BEEP_OFF:Ljava/lang/String; = "tslocationmanager_beep_off"

.field public static final BEEP_ON:Ljava/lang/String; = "tslocationmanager_beep_on"

.field public static final BEEP_TRIP_DRY:Ljava/lang/String; = "tslocationmanager_beep_trip_dry"

.field public static final BEEP_TRIP_UP_DRY:Ljava/lang/String; = "tslocationmanager_beep_trip_up_dry"

.field public static final BEEP_TRIP_UP_ECHO:Ljava/lang/String; = "tslocationmanager_beep_trip_up_echo"

.field public static final BELL_DING_POP:Ljava/lang/String; = "tslocationmanager_bell_ding_pop"

.field public static final BUTTON_CLICK:Ljava/lang/String; = "tslocationmanager_click_tap_done_checkbox1"

.field public static final CHIME_BELL_CONFIRM:Ljava/lang/String; = "tslocationmanager_chime_bell_confirm"

.field public static final CHIME_SHORT_CHORD_UP:Ljava/lang/String; = "tslocationmanager_chime_short_chord_up"

.field public static final CHIME_SHORT_OFF:Ljava/lang/String; = "tslocationmanager_chime_short_off"

.field public static final CHIME_SHORT_ON:Ljava/lang/String; = "tslocationmanager_chime_short_on"

.field public static final CLICK_TAP_DONE:Ljava/lang/String; = "tslocationmanager_click_tap_done_checkbox5_full_vol"

.field public static final CLOCK_TICK:Ljava/lang/String; = "tslocationmanager_click_clock_tick"

.field public static final CLOCK_TOCK:Ljava/lang/String; = "tslocationmanager_click_clock_tock"

.field public static final CLOSE:Ljava/lang/String; = "tslocationmanager_tiny_retry_failure1"

.field public static final DIGI_WARN:Ljava/lang/String; = "tslocationmanager_digi_warn"

.field public static final DOT_RETRY:Ljava/lang/String; = "tslocationmanager_dot_retry"

.field public static final DOT_START:Ljava/lang/String; = "tslocationmanager_dot_startaction1"

.field public static final DOT_STOP:Ljava/lang/String; = "tslocationmanager_dot_stopaction2"

.field public static final DOT_SUCCESS:Ljava/lang/String; = "tslocationmanager_dot_success"

.field public static final ERROR:Ljava/lang/String; = "tslocationmanager_music_timpani_error_01"

.field public static final GEOFENCE_DWELL:Ljava/lang/String; = "tslocationmanager_beep_trip_up_echo"

.field public static final GEOFENCE_ENTER:Ljava/lang/String; = "tslocationmanager_beep_trip_up_dry"

.field public static final GEOFENCE_EXIT:Ljava/lang/String; = "tslocationmanager_beep_trip_dry"

.field public static final HEARTBEAT:Ljava/lang/String; = "tslocationmanager_peep_note1"

.field public static final LOCATION_ERROR:Ljava/lang/String; = "tslocationmanager_digi_warn"

.field public static final LOCATION_RECORDED:Ljava/lang/String; = "tslocationmanager_ooooiii3_full_vol"

.field public static final LOCATION_SAMPLE:Ljava/lang/String; = "tslocationmanager_click_tap_done_checkbox5_full_vol"

.field public static final MARIMBA_DROP:Ljava/lang/String; = "tslocationmanager_marimba_drop"

.field public static final MOTIONCHANGE_FALSE:Ljava/lang/String; = "tslocationmanager_marimba_drop"

.field public static final MOTIONCHANGE_TRUE:Ljava/lang/String; = "tslocationmanager_chime_short_chord_up"

.field public static final MUSIC_TIMPANI_ERROR:Ljava/lang/String; = "tslocationmanager_music_timpani_error_01"

.field public static final OOOOIII:Ljava/lang/String; = "tslocationmanager_ooooiii3_full_vol"

.field public static final OPEN:Ljava/lang/String; = "tslocationmanager_tiny_retry_failure3"

.field public static final PEEP_NOTE:Ljava/lang/String; = "tslocationmanager_peep_note1"

.field public static final PIPE_ALERT:Ljava/lang/String; = "tslocationmanager_music_pipe_chord"

.field public static final PIPE_CLOSE:Ljava/lang/String; = "tslocationmanager_music_pipe_cancel"

.field public static final PIPE_CONFIRM:Ljava/lang/String; = "tslocationmanager_music_pipe_confirm"

.field public static final PIPE_OPEN:Ljava/lang/String; = "tslocationmanager_music_pipe_chord_nice"

.field public static final POLYGON_ENCLOSING_CIRCLE_ENTER:Ljava/lang/String; = "tslocationmanager_chime_short_on"

.field public static final POLYGON_ENCLOSING_CIRCLE_EXIT:Ljava/lang/String; = "tslocationmanager_chime_short_off"

.field public static final POP:Ljava/lang/String; = "tslocationmanager_pop_notification4"

.field public static final POP_CLOSE:Ljava/lang/String; = "tslocationmanager_pop_notification2"

.field public static final POP_OPEN:Ljava/lang/String; = "tslocationmanager_pop_notification1"

.field public static final STATIONARY_GEOFENCE_EXIT:Ljava/lang/String; = "tslocationmanager_zap_fast"

.field public static final STOP_TIMER_OFF:Ljava/lang/String; = "tslocationmanager_bell_ding_pop"

.field public static final STOP_TIMER_ON:Ljava/lang/String; = "tslocationmanager_chime_bell_confirm"

.field public static final TINY_RETRY_FAILURE1:Ljava/lang/String; = "tslocationmanager_tiny_retry_failure1"

.field public static final TINY_RETRY_FAILURE3:Ljava/lang/String; = "tslocationmanager_tiny_retry_failure3"

.field public static final WARNING:Ljava/lang/String; = "tslocationmanager_digi_warn"

.field public static final WHOO_SEND_SHARE:Ljava/lang/String; = "tslocationmanager_whoo_send_share1"

.field public static final ZAP_FAST:Ljava/lang/String; = "tslocationmanager_zap_fast"

.field private static a:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;


# instance fields
.field private b:Landroid/media/MediaPlayer;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Ne3m_K3H8meKUkqapWR5xTNOSXg(Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUT6JYxaLA9onkyn-WlDu8s615U(Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "raw"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private static declared-synchronized a()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;
    .locals 2

    const-class v0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    invoke-direct {v1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;-><init>()V

    sput-object v1, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    .line 2
    :cond_0
    sget-object v1, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic a(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .locals 1

    .line 4
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->release()V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->b:Landroid/media/MediaPlayer;

    .line 8
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->run(Landroid/content/Context;)V

    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic a(Lcom/transistorsoft/locationmanager/adapter/TSConfig;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDebug()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static getInstance()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;
    .locals 1

    .line 1
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a()Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    .line 4
    :cond_0
    sget-object v0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a:Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public debug(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->play(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getInstance(Landroid/content/Context;)Lcom/transistorsoft/locationmanager/adapter/TSConfig;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->getDebug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance v0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer$$ExternalSyntheticLambda1;-><init>(Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;)V

    const-string v1, "debug"

    invoke-virtual {p1, v1, v0}, Lcom/transistorsoft/locationmanager/adapter/TSConfig;->onChange(Ljava/lang/String;Lcom/transistorsoft/locationmanager/adapter/TSConfig$OnChangeCallback;)V

    return-void
.end method

.method public play(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 8
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->run(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 20
    :catch_0
    sget-object p1, Lcom/transistorsoft/locationmanager/logger/TSLog;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u203c\ufe0f   Unknown sound key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public run(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p1, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->b:Landroid/media/MediaPlayer;

    .line 6
    new-instance v1, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 18
    iget-object p1, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public tickTock(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->e:Ljava/util/List;

    const-string/jumbo v2, "tslocationmanager_click_clock_tock"

    invoke-direct {p0, p1, v2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    const-string/jumbo p2, "tslocationmanager_click_clock_tick"

    invoke-virtual {p0, p1, p2}, Lcom/transistorsoft/locationmanager/logger/TSMediaPlayer;->play(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
