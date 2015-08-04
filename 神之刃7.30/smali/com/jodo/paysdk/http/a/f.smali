.class public final Lcom/jodo/paysdk/http/a/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/jodo/paysdk/http/a/j;

.field private d:Lcom/jodo/paysdk/http/a/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/http/a/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/jodo/paysdk/http/a/f;->g:Z

    iput-boolean v0, p0, Lcom/jodo/paysdk/http/a/f;->h:Z

    iput-object p1, p0, Lcom/jodo/paysdk/http/a/f;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/b;->a(Landroid/content/Context;)Lcom/jodo/paysdk/http/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jodo/paysdk/http/a/b;->b(Ljava/lang/String;)Lcom/jodo/paysdk/http/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/http/a/a;

    invoke-direct {v0}, Lcom/jodo/paysdk/http/a/a;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0, p2}, Lcom/jodo/paysdk/http/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/jodo/paysdk/http/a/f;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/jodo/paysdk/http/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/jodo/paysdk/http/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lcom/jodo/paysdk/http/a/f;"
        }
    .end annotation

    new-instance v0, Lcom/jodo/paysdk/http/a/f;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/http/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, v0, Lcom/jodo/paysdk/http/a/f;->f:Ljava/util/List;

    iput-object p3, v0, Lcom/jodo/paysdk/http/a/f;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/jodo/paysdk/http/a/f;)Ljava/io/InputStream;
    .locals 1

    invoke-direct {p0}, Lcom/jodo/paysdk/http/a/f;->f()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jodo/paysdk/http/a/f;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 1

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/http/a/f;->a(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/jodo/paysdk/http/a/f;->h:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/http/a/f;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Last-Modified"

    invoke-static {p1, v2}, Lcom/jodo/paysdk/http/a/f;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ETag"

    invoke-static {p1, v3}, Lcom/jodo/paysdk/http/a/f;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v4, v2}, Lcom/jodo/paysdk/http/a/a;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/http/a/a;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v2, v0}, Lcom/jodo/paysdk/http/a/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/b;->a(Landroid/content/Context;)Lcom/jodo/paysdk/http/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v2}, Lcom/jodo/paysdk/http/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/http/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/b;->a(Landroid/content/Context;)Lcom/jodo/paysdk/http/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/http/a/b;->b(Lcom/jodo/paysdk/http/a/a;)V

    :goto_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/http/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/b;->a(Landroid/content/Context;)Lcom/jodo/paysdk/http/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0, v2}, Lcom/jodo/paysdk/http/a/b;->a(Lcom/jodo/paysdk/http/a/a;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->b:Landroid/content/Context;

    const-string v1, "galhttprequest_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v2}, Lcom/jodo/paysdk/http/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jodo/paysdk/http/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    move v1, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/jodo/paysdk/http/a/f;ZZZ)Lorg/apache/http/HttpResponse;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/jodo/paysdk/http/a/f;->a(ZZZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private a(ZZZ)Lorg/apache/http/HttpResponse;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "galurl \u4e3a\u7a7a"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->b(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_5

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "If-Modified-Since"

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/http/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "If-None-Match"

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/http/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->e:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p0}, Lcom/jodo/paysdk/http/a/f;->g()Ljava/util/List;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/jodo/paysdk/http/a/m;->a(Landroid/content/Context;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/jodo/paysdk/http/a/f;->g()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/jodo/paysdk/http/a/f;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "If-Modified-Since"

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/http/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "If-None-Match"

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v3}, Lcom/jodo/paysdk/http/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->e:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/jodo/paysdk/http/a/m;->a(Landroid/content/Context;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/jodo/paysdk/http/a/f;)Lcom/jodo/paysdk/http/a/j;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->c:Lcom/jodo/paysdk/http/a/j;

    return-object v0
.end method

.method private e()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/http/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/http/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private f()Ljava/io/InputStream;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/http/a/f;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/f;->f:Ljava/util/List;

    return-object v0
.end method

.method private static h()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/http/a/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/jodo/paysdk/http/a/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/http/a/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/jodo/paysdk/http/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lcom/jodo/paysdk/http/a/f;"
        }
    .end annotation

    iput-object p1, p0, Lcom/jodo/paysdk/http/a/f;->e:Ljava/util/List;

    return-object p0
.end method

.method public final a(Z)Ljava/io/InputStream;
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/jodo/paysdk/http/a/f;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/jodo/paysdk/http/a/f;->f()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/http/a/f;->h()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/http/a/g;

    invoke-direct {v2, p0, p1}, Lcom/jodo/paysdk/http/a/g;-><init>(Lcom/jodo/paysdk/http/a/f;Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v2, v2, p1}, Lcom/jodo/paysdk/http/a/f;->a(ZZZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-boolean v0, p0, Lcom/jodo/paysdk/http/a/f;->g:Z

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/jodo/paysdk/http/a/f;->a(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/jodo/paysdk/http/a/f;->f()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/jodo/paysdk/http/a/f;->a(ZZZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/http/a/f;->a(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/jodo/paysdk/http/a/f;->f()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x130 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/jodo/paysdk/http/a/f;->a(Z)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final a(Lcom/jodo/paysdk/http/a/j;)Ljava/lang/String;
    .locals 2

    iput-object p1, p0, Lcom/jodo/paysdk/http/a/f;->c:Lcom/jodo/paysdk/http/a/j;

    new-instance v0, Lcom/jodo/paysdk/http/a/h;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/http/a/h;-><init>(Lcom/jodo/paysdk/http/a/f;)V

    invoke-static {}, Lcom/jodo/paysdk/http/a/f;->h()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/http/a/f;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)Lcom/jodo/paysdk/http/a/f;
    .locals 0

    iput-boolean p1, p0, Lcom/jodo/paysdk/http/a/f;->g:Z

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/http/a/f;->a(Z)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/jodo/paysdk/http/a/f;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/http/a/f;->a(Z)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Z)Lcom/jodo/paysdk/http/a/f;
    .locals 0

    iput-boolean p1, p0, Lcom/jodo/paysdk/http/a/f;->h:Z

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/http/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jodo/paysdk/http/a/f;->d:Lcom/jodo/paysdk/http/a/a;

    invoke-virtual {v2}, Lcom/jodo/paysdk/http/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
