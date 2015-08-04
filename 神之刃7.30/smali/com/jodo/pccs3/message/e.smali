.class public final Lcom/jodo/pccs3/message/e;
.super Lcom/jodo/pccs3/message/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jodo/pccs3/message/d",
        "<",
        "Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jodo/pccs3/message/d;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/message/e;->b(I)V

    return-void
.end method

.method private static a(Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/pccs3/message/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;

    invoke-static {p1}, Lcom/jodo/pccs3/message/e;->a(Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/message/e;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/message/e;->b(J)V

    return-void
.end method

.method public final synthetic j()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;-><init>()V

    invoke-direct {p0}, Lcom/jodo/pccs3/message/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;->setText(Ljava/lang/String;)V

    return-object v0
.end method
