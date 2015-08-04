.class final Lcom/jodo/paysdk/webviews/js/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/util/y;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/js/o;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/jodo/paysdk/util/z;J)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p2, Lcom/jodo/paysdk/util/z;->c:Ljava/lang/Object;

    check-cast v0, [I

    aget v1, v0, v4

    aget v2, v0, v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/jodo/paysdk/util/w;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "src"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dest"

    iget-object v3, p2, Lcom/jodo/paysdk/util/z;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    if-ne v1, v3, :cond_0

    const-string v1, "avg"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "timeout"

    iget v3, p2, Lcom/jodo/paysdk/util/z;->b:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ping_times"

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "suc_times"

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fail_times"

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/jodo/paysdk/webviews/js/p;

    invoke-direct {v0, p0, v2}, Lcom/jodo/paysdk/webviews/js/p;-><init>(Lcom/jodo/paysdk/webviews/js/o;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_0
    :try_start_1
    const-string v1, "avg"

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    sub-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_2

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    :goto_3
    iput-object v0, p2, Lcom/jodo/paysdk/util/z;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/js/o;->a:Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    # getter for: Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->mIPCallback:Lcom/jodo/paysdk/util/y;
    invoke-static {v0}, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;->access$300(Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;)Lcom/jodo/paysdk/util/y;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/jodo/paysdk/util/w;->a(Landroid/content/Context;Lcom/jodo/paysdk/util/z;Lcom/jodo/paysdk/util/y;)V

    goto :goto_2

    :cond_2
    aget v1, v0, v5

    int-to-long v1, v1

    add-long/2addr v1, p3

    long-to-int v1, v1

    aput v1, v0, v5

    goto :goto_3
.end method
