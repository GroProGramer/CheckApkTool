.class public final Lcom/jodo/paysdk/g/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/jodo/paysdk/g/h;

.field private d:Lcom/jodo/paysdk/account/JodoAccount;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/jodo/paysdk/g/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/paysdk/g/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/g/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/g/e;->c:Lcom/jodo/paysdk/g/h;

    new-instance v0, Lcom/jodo/paysdk/account/JodoAccount;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Lcom/jodo/paysdk/account/JodoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jodo/paysdk/g/e;->d:Lcom/jodo/paysdk/account/JodoAccount;

    return-void
.end method

.method static synthetic a(Lcom/jodo/paysdk/g/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/g/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/g/h;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/g/e;->c:Lcom/jodo/paysdk/g/h;

    return-object v0
.end method

.method static synthetic c(Lcom/jodo/paysdk/g/e;)Lcom/jodo/paysdk/account/JodoAccount;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/g/e;->d:Lcom/jodo/paysdk/account/JodoAccount;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/g/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/jodo/paysdk/util/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "psw"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cpid"

    sget-object v4, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v4}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "gameid"

    sget-object v4, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v4}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "channelid"

    sget-object v4, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v4}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sign"

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "%s%s%s%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v7}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    sget-object v7, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v7}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x2

    sget-object v8, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v8}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v4}, Lcom/jodo/paysdk/d/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/jodo/paysdk/g/k;

    iget-object v2, p0, Lcom/jodo/paysdk/g/e;->a:Landroid/content/Context;

    const-string v3, "http://account.jodoplay.com/usercenter/quickreg"

    new-instance v4, Lcom/jodo/paysdk/g/f;

    invoke-direct {v4, p0}, Lcom/jodo/paysdk/g/f;-><init>(Lcom/jodo/paysdk/g/e;)V

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jodo/paysdk/g/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/jodo/paysdk/g/l;)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/g/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
