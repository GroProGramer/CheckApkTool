.class public final Lcom/jodo/shares/net/shares/service/PS_service;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Jodo_Push_Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 7

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/shares/net/shares/c/b;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/c/b;->a()Lcom/jodo/shares/net/shares/b/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/c/b;->d(Lcom/jodo/shares/net/shares/b/a;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/c/b;->b(Lcom/jodo/shares/net/shares/b/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "no notifycation"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->k()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-static {p0}, Lcom/jodo/shares/net/shares/c/b;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/c/b;->a()Lcom/jodo/shares/net/shares/b/a;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "no notifycation"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/jodo/shares/net/shares/service/PS_service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jodo/shares/net/shares/service/PS_service;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "action"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/jodo/shares/net/shares/c/b;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jodo/shares/net/shares/c/b;->b(I)V

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->i()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dl.google.com"

    invoke-static {p0, v2, v3, v4}, Lcom/jodo/shares/net/shares/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pi_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->j()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v4, Lcom/jodo/shares/net/shares/b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/jodo/shares/net/shares/b;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v4, v2, v3}, Lcom/jodo/shares/net/shares/b;->a(J)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v1, v3}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/c/b;->a(Lcom/jodo/shares/net/shares/b/a;)Z

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/c/b;->c(Lcom/jodo/shares/net/shares/b/a;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    :try_start_3
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/jodo/shares/net/shares/GLActionActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "0x12345"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "0x78945"

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->j()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3, v4}, Lcom/jodo/paysdk/util/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v2, v1, v3}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/c/b;->a(Lcom/jodo/shares/net/shares/b/a;)Z

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/c/b;->c(Lcom/jodo/shares/net/shares/b/a;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    const-string v0, "action"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service handle actionType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "efapi_init"

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ad;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/jodo/paysdk/util/w;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "efapi_init"

    invoke-static {p0, v1}, Lcom/jodo/paysdk/util/ad;->d(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/jodo/paysdk/util/b;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v7}, Lcom/jodo/paysdk/util/b;->a(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/jodo/shares/net/shares/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void

    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/shares/net/shares/d;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getPackageName()Ljava/lang/String;

    invoke-static {v0}, Lcom/jodo/shares/net/shares/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jodo/shares/net/shares/c/b;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/c/b;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :pswitch_1
    invoke-static {p0}, Lcom/jodo/shares/net/shares/c/b;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/c/b;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHandleIntent receive at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pushId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/jodo/shares/net/shares/c/b;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jodo/shares/net/shares/c/b;->a(I)Lcom/jodo/shares/net/shares/b/a;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v1, :cond_4

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/jodo/shares/net/shares/service/PS_service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->i()J

    move-result-wide v3

    new-instance v5, Landroid/app/Notification;

    const v6, 0x108009b

    invoke-direct {v5, v6, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v2, 0x10

    iput v2, v5, Landroid/app/Notification;->flags:I

    const/4 v2, 0x1

    iput v2, v5, Landroid/app/Notification;->defaults:I

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jodo/shares/net/shares/service/PS_service;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "action"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "pushinfo"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jodo/paysdk/http/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jodo/paysdk/http/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jodo/paysdk/http/a/f;->c()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/jodo/paysdk/util/aa;->a(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v4, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_5

    invoke-virtual {v4, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_3
    :goto_3
    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    :cond_4
    invoke-static {p0}, Lcom/jodo/shares/net/shares/c/b;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/jodo/shares/net/shares/c/b;->a(Lcom/jodo/shares/net/shares/b/a;)Z

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->a()V

    goto/16 :goto_0

    :cond_5
    const v2, 0x108009b

    invoke-virtual {v4, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    :pswitch_2
    const-string v0, "pushinfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/shares/b/a;

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/shares/net/shares/c/b;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jodo/shares/net/shares/c/b;->d(Lcom/jodo/shares/net/shares/b/a;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/b/a;->k()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v1

    packed-switch v1, :pswitch_data_1

    :cond_6
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/shares/net/shares/c/b;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jodo/shares/net/shares/c/b;->c(Lcom/jodo/shares/net/shares/b/a;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :pswitch_3
    :try_start_6
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/b/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_5
    invoke-virtual {p0, v1}, Lcom/jodo/shares/net/shares/service/PS_service;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_7
    invoke-static {v2}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_5

    :pswitch_4
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/service/PS_service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    :goto_6
    invoke-virtual {p0, v1}, Lcom/jodo/shares/net/shares/service/PS_service;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_9
    invoke-static {v2}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    goto :goto_6

    :cond_a
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
