.class public final Lcom/jodo/pccs3/message/b;
.super Lcom/jodo/pccs3/message/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jodo/pccs3/message/d",
        "<",
        "Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/jodo/pccs3/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jodo/pccs3/message/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/pccs3/message/b;->b:Lcom/jodo/pccs3/a/c;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/message/b;->b(I)V

    return-void
.end method

.method private n()Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    iget-object v2, p0, Lcom/jodo/pccs3/message/b;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/jodo/pccs3/message/b;->b:Lcom/jodo/pccs3/a/c;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/jodo/pccs3/message/c;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/message/c;-><init>(Lcom/jodo/pccs3/message/b;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->setProgressCallback(Lcom/avos/avoscloud/ProgressCallback;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jodo/pccs3/message/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->setText(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/jodo/pccs3/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/message/b;->b:Lcom/jodo/pccs3/a/c;

    return-void
.end method

.method public final a(Lcom/jodo/pccs3/d/a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/jodo/pccs3/message/d;->a(Lcom/jodo/pccs3/d/a;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/pccs3/message/b;->d(Ljava/lang/String;)V

    const-string v1, "file_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/message/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    const-string v0, ""

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/message/b;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/message/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/message/b;->b(J)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/message/b;->a:Ljava/lang/String;

    return-void
.end method

.method public final h()Lcom/jodo/pccs3/d/a;
    .locals 4

    invoke-super {p0}, Lcom/jodo/pccs3/message/d;->h()Lcom/jodo/pccs3/d/a;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "text"

    invoke-virtual {p0}, Lcom/jodo/pccs3/message/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "file_url"

    iget-object v3, p0, Lcom/jodo/pccs3/message/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jodo/pccs3/d/a;->a(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/message/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic j()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/jodo/pccs3/message/b;->n()Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    move-result-object v0

    return-object v0
.end method
