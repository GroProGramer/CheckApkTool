.class public final Lcom/jodo/paysdk/f/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/jodo/paysdk/f/f;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jodo/paysdk/f/f;

    invoke-direct {v0}, Lcom/jodo/paysdk/f/f;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/f/f;->a:Lcom/jodo/paysdk/f/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 14

    invoke-static {p1}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v2}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/jodo/paysdk/util/c;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getSelfvc()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getLang()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jodo/paysdk/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    iget-object v8, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v9, Lorg/apache/http/message/BasicHeader;

    const-string v10, "from"

    const-string v11, "paysdk"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v9, Lorg/apache/http/message/BasicHeader;

    const-string v10, "paysdk-uid"

    invoke-direct {v9, v10, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v8, Lorg/apache/http/message/BasicHeader;

    const-string v9, "paysdk-uinfo"

    invoke-direct {v8, v9, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v8, "paysdk-api-version"

    const-string v9, "2.3.4.6"

    invoke-direct {v4, v8, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v8, "paysdk-game-pkg"

    invoke-direct {v4, v8, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v8, "paysdk-game-vc"

    invoke-direct {v4, v8, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "paysdk-game-vn"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "paysdk-shell-pkg"

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v4, "paysdk-shell-vc"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "paysdk-shell-channel"

    sget-object v4, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v4}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "paysdk-locale"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "paysdk-unique"

    invoke-direct {v1, v2, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {p1}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jodo/paysdk/model/FingerInfo;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v3}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sget-object v1, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/config/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/c;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getLang()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x1

    invoke-static {p1, v8}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v10

    const-string v0, ""

    if-eqz v10, :cond_0

    iget v1, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    iget-object v10, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v11, Lorg/apache/http/message/BasicHeader;

    const-string v12, "from"

    const-string v13, "sharesdk"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v11, Lorg/apache/http/message/BasicHeader;

    const-string v12, "sharesdk-uid"

    invoke-direct {v11, v12, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v10, Lorg/apache/http/message/BasicHeader;

    const-string v11, "sharesdk-uinfo"

    invoke-direct {v10, v11, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v10, "sharesdk-api-version"

    const-string v11, "2.3.4.6"

    invoke-direct {v7, v10, v11}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v10, "sharesdk-game-pkg"

    invoke-direct {v7, v10, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v7, Lorg/apache/http/message/BasicHeader;

    const-string v8, "sharesdk-game-vc"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v7, "sharesdk-game-vn"

    invoke-direct {v2, v7, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "sharesdk-shell-pkg"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "sharesdk-shell-vc"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "sharesdk-shell-vn"

    invoke-direct {v1, v2, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "sharesdk-shell-channel"

    invoke-direct {v1, v2, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "sharesdk-locale"

    invoke-direct {v1, v2, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "sharesdk"

    iget-object v1, p0, Lcom/jodo/paysdk/f/f;->c:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/jodo/paysdk/util/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lorg/apache/http/Header;)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/f/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
