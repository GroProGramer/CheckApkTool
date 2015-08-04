.class public final Lcom/jodo/paysdk/g/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/jodo/paysdk/g/g;

.field private h:Lcom/jodo/paysdk/account/JodoAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/g/c;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILcom/jodo/paysdk/g/g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/paysdk/g/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/jodo/paysdk/g/c;->e:Ljava/lang/String;

    iput p2, p0, Lcom/jodo/paysdk/g/c;->c:I

    iput p5, p0, Lcom/jodo/paysdk/g/c;->d:I

    iput-object p4, p0, Lcom/jodo/paysdk/g/c;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/jodo/paysdk/g/c;->g:Lcom/jodo/paysdk/g/g;

    invoke-static {p1}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jodo/paysdk/account/JodoAccountManager;->getAccountByOauthId(Ljava/lang/String;)Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/g/c;->h:Lcom/jodo/paysdk/account/JodoAccount;

    iget-object v0, p0, Lcom/jodo/paysdk/g/c;->h:Lcom/jodo/paysdk/account/JodoAccount;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/account/JodoAccount;

    iget-object v1, p0, Lcom/jodo/paysdk/g/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/jodo/paysdk/g/c;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/jodo/paysdk/account/JodoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/jodo/paysdk/g/c;->h:Lcom/jodo/paysdk/account/JodoAccount;

    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/g/c;->h:Lcom/jodo/paysdk/account/JodoAccount;

    iget v1, p0, Lcom/jodo/paysdk/g/c;->d:I

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/account/JodoAccount;->setOauthExpire(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/g/c;->h:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0, p4}, Lcom/jodo/paysdk/account/JodoAccount;->setOauthToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jodo/paysdk/g/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/g/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/jodo/paysdk/g/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/jodo/paysdk/g/c;)Lcom/jodo/paysdk/g/g;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/g/c;->g:Lcom/jodo/paysdk/g/g;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/jodo/paysdk/g/c;)Lcom/jodo/paysdk/account/JodoAccount;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/g/c;->h:Lcom/jodo/paysdk/account/JodoAccount;

    return-object v0
.end method

.method static synthetic d(Lcom/jodo/paysdk/g/c;)I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/g/c;->c:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/jodo/paysdk/g/c;->h:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v1}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthExpire()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/jodo/paysdk/g/c;->h:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v1}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthExpire()I

    move-result v1

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/jodo/paysdk/g/c;->c:I

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/g/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/f/a;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/g/c;->g:Lcom/jodo/paysdk/g/g;

    const/16 v1, 0x3ed

    iget-object v2, p0, Lcom/jodo/paysdk/g/c;->b:Landroid/content/Context;

    const-string v3, "jodoplay_login_message_failed"

    invoke-static {v2, v3}, Lcom/jodo/paysdk/g/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jodo/paysdk/g/g;->onLoginFailed(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    iget v3, p0, Lcom/jodo/paysdk/g/c;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "openid"

    iget-object v3, p0, Lcom/jodo/paysdk/g/c;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "opentoken"

    iget-object v3, p0, Lcom/jodo/paysdk/g/c;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "expire"

    iget v3, p0, Lcom/jodo/paysdk/g/c;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cpid"

    sget-object v3, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "gameid"

    sget-object v3, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "channelid"

    sget-object v3, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "%s%s%s%s%s%s%s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/jodo/paysdk/g/c;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/jodo/paysdk/g/c;->e:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/jodo/paysdk/g/c;->f:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x3

    iget v4, p0, Lcom/jodo/paysdk/g/c;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v4}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v4}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v4}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sign"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/jodo/paysdk/d/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/jodo/paysdk/g/k;

    iget-object v2, p0, Lcom/jodo/paysdk/g/c;->b:Landroid/content/Context;

    const-string v3, "http://account.jodoplay.com/usercenter/openlogin"

    new-instance v4, Lcom/jodo/paysdk/g/d;

    invoke-direct {v4, p0}, Lcom/jodo/paysdk/g/d;-><init>(Lcom/jodo/paysdk/g/c;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/jodo/paysdk/g/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/jodo/paysdk/g/l;)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/g/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
