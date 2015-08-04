.class public Lcom/air/plugin/js/BaseJSInterface;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/air/plugin/js/IJsInterface;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mWebView:Lcom/air/plugin/js/IWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/air/plugin/js/BaseJSInterface;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getCurJarUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/air/a/a;->a()Lcom/air/a/a;

    invoke-virtual {p0}, Lcom/air/plugin/js/BaseJSInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/air/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCurJarVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/air/a/a;->a()Lcom/air/a/a;

    invoke-virtual {p0}, Lcom/air/plugin/js/BaseJSInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/air/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJarUrl()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "getJarUrl"

    invoke-virtual {p0}, Lcom/air/plugin/js/BaseJSInterface;->getCurJarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/air/plugin/js/BaseJSInterface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getVersion()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "getVersion"

    invoke-virtual {p0}, Lcom/air/plugin/js/BaseJSInterface;->getCurJarVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/air/plugin/js/BaseJSInterface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getWebView()Lcom/air/plugin/js/IWebView;
    .locals 1

    iget-object v0, p0, Lcom/air/plugin/js/BaseJSInterface;->mWebView:Lcom/air/plugin/js/IWebView;

    return-object v0
.end method

.method public hello()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/air/plugin/js/BaseJSInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":hello"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/air/plugin/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadJar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/air/a/a;->a()Lcom/air/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/air/plugin/js/BaseJSInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v5, Lcom/air/plugin/js/c;

    invoke-direct {v5, p0}, Lcom/air/plugin/js/c;-><init>(Lcom/air/plugin/js/BaseJSInterface;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/air/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/air/a/e;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/air/plugin/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public returnJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/air/plugin/js/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/air/plugin/js/a;-><init>(Lcom/air/plugin/js/BaseJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/air/plugin/a/g;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public returnJs(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/air/plugin/js/BaseJSInterface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/air/plugin/js/BaseJSInterface;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setWebView(Lcom/air/plugin/js/IWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/air/plugin/js/BaseJSInterface;->mWebView:Lcom/air/plugin/js/IWebView;

    return-void
.end method

.method public uploadLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    invoke-static {}, Lcom/air/a/a;->a()Lcom/air/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/air/plugin/js/BaseJSInterface;->getContext()Landroid/content/Context;

    invoke-virtual {v1}, Lcom/air/a/a;->b()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/air/a/a;->a()Lcom/air/a/a;

    invoke-static {p3}, Lcom/air/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/air/plugin/a/a;

    invoke-direct {v3, v1}, Lcom/air/plugin/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/air/plugin/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/air/plugin/js/BaseJSInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "text/plain"

    new-instance v5, Lcom/air/plugin/js/b;

    invoke-direct {v5, p0}, Lcom/air/plugin/js/b;-><init>(Lcom/air/plugin/js/BaseJSInterface;)V

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/air/plugin/a/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
