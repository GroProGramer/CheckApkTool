.class public Lcom/jodo/pccs3/message/receiver/PCCSReciever;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.avos.avoscloud.Data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pn"

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "notify_title"

    const-string v5, ""

    invoke-static {v2, v3, v5}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "notify_content"

    const-string v6, ""

    invoke-static {v2, v3, v6}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "chatMessage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "conv_id"

    const-string v7, ""

    invoke-static {v3, v2, v7}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "from_peer"

    const-string v8, "problem_chat"

    invoke-static {v3, v2, v8}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    const-string v9, "message"

    const-string v10, ""

    invoke-static {v3, v9, v10}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    invoke-virtual {v1, p1, v7}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    instance-of v2, v1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    check-cast v1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;

    invoke-static {v1}, Lcom/jodo/pccs3/message/d;->a(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;)Lcom/jodo/pccs3/message/d;

    move-result-object v2

    instance-of v1, v2, Lcom/jodo/pccs3/message/b;

    if-eqz v1, :cond_3

    const-string v1, "live_chat"

    const/4 v3, 0x1

    invoke-static {p1, v1, v3}, Lcom/jodo/paysdk/buoy/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v7, v3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/a;Ljava/lang/String;Z)J

    invoke-static {p1, v5, v6}, Lcom/jodo/pccs3/message/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    move-object v0, v2

    check-cast v0, Lcom/jodo/pccs3/message/e;

    move-object v1, v0

    invoke-static {v1}, Lcom/jodo/pccs3/e/b;->b(Lcom/jodo/pccs3/message/e;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "PCCSReciever"

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jodoplay_service_receive_message_invalid"

    invoke-static {p1, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/jodo/pccs3/message/a;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/jodo/pccs3/message/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jodo/pccs3/e/b;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    move-object v0, v2

    check-cast v0, Lcom/jodo/pccs3/message/e;

    move-object v3, v0

    invoke-virtual {v1, v3}, Lcom/jodo/pccs3/e/b;->a(Lcom/jodo/pccs3/message/e;)V

    invoke-virtual {v1}, Lcom/jodo/pccs3/e/b;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/jodo/pccs3/e/b;->h()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/jodo/pccs3/e/b;->i()V

    const-string v3, "live_chat"

    const/4 v8, 0x1

    invoke-static {p1, v3, v8}, Lcom/jodo/paysdk/buoy/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v3

    const/4 v8, 0x1

    invoke-virtual {v3, p1, v2, v7, v8}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/a;Ljava/lang/String;Z)J

    invoke-static {p1, v5, v6}, Lcom/jodo/pccs3/message/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/jodo/pccs3/e/b;->h()Z
    :try_end_4
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v2

    move v11, v2

    move-object v2, v1

    move v1, v11

    :goto_1
    :try_start_5
    invoke-virtual {v2}, Lcom/jodo/pccs3/e/b;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jodo/pccs3/a;->h()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jodo/pccs3/a;->h()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jodo/pccs3/a/a;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    invoke-interface {v1, v2}, Lcom/jodo/pccs3/a/a;->a(Lcom/jodo/pccs3/e/b;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_7
    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v2, v3

    :goto_3
    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    move v1, v4

    goto :goto_1

    :catch_5
    move-exception v1

    :goto_4
    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move v1, v4

    move-object v2, v3

    goto :goto_1

    :catch_6
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_4

    :catch_7
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_3
.end method
