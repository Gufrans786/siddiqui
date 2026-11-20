.class public Lgeidea/utils/GeideaModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "GeideaModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# instance fields
.field private params:Lcom/facebook/react/bridge/WritableMap;

.field private reactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 37
    iput-object p1, p0, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 38
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 39
    iget-object p1, p0, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public fetchRegistrationDetails()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 390
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "geidea.net.softpos"

    invoke-static {v0, v1}, Lgeidea/utils/GeideaUtils;->appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 396
    const-string v1, "geidea.net.softpos.REGISTRATION_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 398
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x37b

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Geidea SoftPos app is not installed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public formatSoftPOSApp()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 372
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "geidea.net.softpos"

    invoke-static {v0, v1}, Lgeidea/utils/GeideaUtils;->appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 378
    const-string v1, "geidea.net.softpos.FORMAT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 380
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 381
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Geidea SoftPos app is not installed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public geideaPurchase(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 343
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    const-string v0, "isSandbox"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    .line 347
    const-string v0, "amount"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 348
    const-string v1, "orderId"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "geidea.net.softpos"

    invoke-static {v1, v2}, Lgeidea/utils/GeideaUtils;->appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 353
    const-string v2, "geidea.net.softpos.PURCHASE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v2, "android.intent.extra.TEXT"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v0, "ORDER_ID"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 362
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 363
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 366
    :cond_1
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Geidea SoftPos app is not installed"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public geideaRegistration(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 308
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    const-string v0, "isSandbox"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 312
    const-string/jumbo v1, "terminalId"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "geidea.net.softpos"

    invoke-static {v1, v2}, Lgeidea/utils/GeideaUtils;->appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 316
    const-string v2, "geidea.net.softpos.REGISTRATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v2, "TRSM_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 320
    const-string p1, "TMS_PLATFORM"

    const-string v0, "Ascert"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x0

    .line 322
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 323
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x309

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 326
    :cond_2
    invoke-virtual {p0}, Lgeidea/utils/GeideaModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Geidea SoftPos app is not installed"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string v1, "GEIDEA_PURCHASE"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "GEIDEA_PURCHASE_FAIL"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "GEIDEA_PURCHASE_SUCCESS"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "GEIDEA_PURCHASE_ABORTED"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v1, "GEIDEA_PURCHASE_DECLINE"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v1, "GEIDEA_REGISTRATION"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "GEIDEA_REGISTRATION_FAIL"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "GEIDEA_REGISTRATION_SUCCESS"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v1, "GEIDEA_FORMAT"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v1, "GEIDEA_FORMAT_SUCCESS"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "GEIDEA_FORMAT_FAIL"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "FETCH_REGISTRATION"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "FETCH_REGISTRATION_SUCCESS"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v1, "FETCH_REGISTRATION_FAIL"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 279
    const-string v0, "GeideaModule"

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p4

    .line 44
    const-string v3, "resp_code"

    const-string v4, "app_version"

    const-string v5, "entry_mode"

    const-string/jumbo v6, "stan"

    const-string v7, "pan"

    const-string v8, "card_scheme"

    const-string v9, "rrn"

    const-string v10, "GEIDEA_REGISTRATION_FAIL"

    const-string v11, "GEIDEA_FORMAT_FAIL"

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v12

    iput-object v12, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    .line 47
    const-string/jumbo v14, "terminal_id"

    const/16 p1, 0x0

    const-string v15, "result"

    const-string/jumbo v13, "type"

    move-object/from16 v17, v12

    const-string v12, "code"

    move-object/from16 v18, v3

    const-string v3, "message"

    move-object/from16 v19, v4

    const-string/jumbo v4, "status"

    move-object/from16 v20, v5

    const/16 v5, 0x64

    if-eq v0, v5, :cond_9

    const/16 v5, 0xc8

    const-string v6, "Success"

    if-eq v0, v5, :cond_6

    const/16 v5, 0x309

    if-eq v0, v5, :cond_3

    const/16 v5, 0x37b

    if-eq v0, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 183
    :cond_1
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    const-string v0, "data"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "FETCH_REGISTRATION_FAIL"

    const-string v9, "FETCH_REGISTRATION"

    if-eqz v0, :cond_2

    .line 189
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 191
    const-string v10, "registrationStatus"

    const-string v11, "registration_status"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string/jumbo v10, "terminalID"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v10, "merchantNameInEn"

    const-string v11, "merchant_name_en"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v10, "merchantNameInAr"

    const-string v11, "merchant_name_ar"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v10, "merchantAddressOneInEn"

    const-string v11, "merchant_address_one_en"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v10, "merchantAddressOneInAr"

    const-string v11, "merchant_address_one_ar"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v10, "merchantAddressTwoInEn"

    const-string v11, "merchant_address_two_en"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v10, "merchantAddressTwoInAr"

    const-string v11, "merchant_address_two_ar"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v10, "merchantID"

    const-string v11, "merchant_id"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v10, "merchantCategoryCode"

    const-string v11, "merchant_category_code"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v10, "acqBankId"

    const-string v11, "acq_bank_id"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v10, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v15, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 205
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "FETCH_REGISTRATION_SUCCESS"

    invoke-interface {v0, v13, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "FETCH_REGISTRATION_SUCCESS"

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v9, v2}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 212
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v2, v15, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v2, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v13, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v9, v2}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v5, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v5, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v5, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v5, v13, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v5, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v12, v8}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 232
    iget-object v5, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v5, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v9, v5}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 236
    iget-object v5, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v5, v15, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v2, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v13, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v9, v2}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 247
    :goto_0
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v9, v2}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto/16 :goto_5

    :cond_3
    if-nez v2, :cond_4

    goto/16 :goto_5

    .line 117
    :cond_4
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 125
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    iget-object v8, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v8, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v8, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v8, v15, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v2, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v12, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "GEIDEA_REGISTRATION_SUCCESS"

    invoke-interface {v0, v13, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_5
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v13, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 137
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v13, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_1
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v2, "GEIDEA_REGISTRATION"

    iget-object v3, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v2, v3}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto/16 :goto_5

    :cond_6
    if-nez v2, :cond_7

    goto/16 :goto_5

    .line 149
    :cond_7
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 157
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    iget-object v8, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v8, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v8, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v8, v15, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v2, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v12, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "GEIDEA_FORMAT_SUCCESS"

    invoke-interface {v0, v13, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 167
    :cond_8
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v13, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 171
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v13, v11}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_2
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v2, "GEIDEA_FORMAT"

    iget-object v3, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v2, v3}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto/16 :goto_5

    :cond_9
    const/4 v0, -0x1

    .line 49
    const-string v5, "GEIDEA_PURCHASE_FAIL"

    const-string v10, "GEIDEA_PURCHASE"

    move/from16 v11, p3

    if-ne v11, v0, :cond_e

    if-nez v2, :cond_a

    goto/16 :goto_6

    .line 58
    :cond_a
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v11, "Approved"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 60
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    :try_start_4
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 p2, v5

    .line 64
    :try_start_5
    const-string v5, "orderID"
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v16, v10

    :try_start_6
    const-string v10, "ORDER_ID"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v5, v10}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v9, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v8, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v20

    .line 69
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v19

    .line 70
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v18

    .line 71
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v5, "acq_id"

    const-string v6, "acq_id"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v14, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v5, "amount"

    const-string v6, "amount"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v5, "auth_code"

    const-string v6, "auth_code"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v5, "res_desc"

    const-string v6, "res_desc"

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v5, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v5, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v15, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 80
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "GEIDEA_PURCHASE_SUCCESS"

    invoke-interface {v0, v13, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "SoftPos application has sent the transaction online to SAMA host and it has been Approved by bank."

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v5, v16

    :try_start_7
    invoke-static {v0, v5, v2}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    return-void

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    move-object/from16 p2, v5

    :goto_3
    move-object v5, v10

    .line 85
    :goto_4
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    move-object/from16 v2, p2

    invoke-interface {v0, v13, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v5, v2}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    :cond_b
    move-object v5, v10

    .line 94
    const-string v6, "Declined"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 95
    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v2, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "GEIDEA_PURCHASE_DECLINE"

    invoke-interface {v0, v13, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "SoftPos application has process the transaction online to SAMA host and it has been Declined / Rejected by bank."

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v5, v2}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void

    .line 102
    :cond_c
    const-string v6, "Aborted"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 103
    const-string v6, "reason"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v6, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v6, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v2, "GEIDEA_PURCHASE_ABORTED"

    invoke-interface {v0, v13, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v5, v2}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_d
    :goto_5
    return-void

    :cond_e
    :goto_6
    move-object v2, v5

    move-object v5, v10

    .line 50
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v17

    invoke-interface {v6, v4, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    const-string v4, "Result code not ok or is null"

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v13, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, v1, Lgeidea/utils/GeideaModule;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, v1, Lgeidea/utils/GeideaModule;->params:Lcom/facebook/react/bridge/WritableMap;

    invoke-static {v0, v5, v2}, Lgeidea/utils/GeideaUtils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 256
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sa.lgandroidlocate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeListeners()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method
