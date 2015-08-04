.class public final Lcom/jodo/paysdk/webviews/b/e;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/jodo/paysdk/webviews/b/e;


# instance fields
.field private a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/b/e;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public static a()Lcom/jodo/paysdk/webviews/b/e;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/webviews/b/e;->b:Lcom/jodo/paysdk/webviews/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/webviews/b/e;

    invoke-direct {v0}, Lcom/jodo/paysdk/webviews/b/e;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/webviews/b/e;->b:Lcom/jodo/paysdk/webviews/b/e;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/webviews/b/e;->b:Lcom/jodo/paysdk/webviews/b/e;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/b/e;->a:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/b/e;->a:Ljava/util/Hashtable;

    :cond_2
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/b/e;->a:Ljava/util/Hashtable;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/http/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/jodo/paysdk/webviews/b/b;->a(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
