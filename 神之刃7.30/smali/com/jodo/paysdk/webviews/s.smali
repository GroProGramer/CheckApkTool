.class public final Lcom/jodo/paysdk/webviews/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/regex/Pattern;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/jodo/paysdk/webviews/s;->a:Ljava/util/regex/Pattern;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1fpay.com"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "jodoplay.com"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "getapk.cn"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "192.168.\\d+.\\d+"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "127.0.0.1"

    aput-object v3, v1, v2

    sput-object v1, Lcom/jodo/paysdk/webviews/s;->b:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "^https?://(?:[^/]+\\.)?(?:"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/jodo/paysdk/webviews/s;->b:[Ljava/lang/String;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_0

    const-string v1, "|"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "."

    const-string v7, "\\."

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    const-string v0, ")(?::\\d+)?(?:/.*)?$"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/webviews/s;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a()I
    .locals 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/jodo/paysdk/webviews/a/a;)Landroid/webkit/WebChromeClient;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/jodo/paysdk/webviews/s;->a()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lcom/jodo/paysdk/webviews/m;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/m;-><init>(Lcom/jodo/paysdk/webviews/a/a;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/jodo/paysdk/webviews/n;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/n;-><init>(Lcom/jodo/paysdk/webviews/a/a;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jodo/paysdk/webviews/r;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/r;-><init>(Lcom/jodo/paysdk/webviews/a/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static a(Lcom/jodo/paysdk/webviews/a/c;)Landroid/webkit/WebViewClient;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/jodo/paysdk/webviews/t;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/t;-><init>(Lcom/jodo/paysdk/webviews/a/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/jodo/paysdk/webviews/s;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "webview"

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/m;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/webkit/WebSettings;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/jodo/paysdk/webviews/s;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    const-string v0, "webviewDatabase"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    const-string v0, "webviewGEODatabase"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x7

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
