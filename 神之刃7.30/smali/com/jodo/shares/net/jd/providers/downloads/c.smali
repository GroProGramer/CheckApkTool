.class final Lcom/jodo/shares/net/jd/providers/downloads/c;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field final synthetic a:Lcom/jodo/shares/net/jd/providers/downloads/a;


# direct methods
.method constructor <init>(Lcom/jodo/shares/net/jd/providers/downloads/a;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/c;->a:Lcom/jodo/shares/net/jd/providers/downloads/a;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected final createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lcom/jodo/shares/net/jd/providers/downloads/c;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lcom/jodo/shares/net/jd/providers/downloads/c;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lcom/jodo/shares/net/jd/providers/downloads/c;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 4

    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-static {}, Lcom/jodo/shares/net/jd/providers/downloads/a;->b()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v1, Lcom/jodo/shares/net/jd/providers/downloads/d;

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/c;->a:Lcom/jodo/shares/net/jd/providers/downloads/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/jodo/shares/net/jd/providers/downloads/d;-><init>(Lcom/jodo/shares/net/jd/providers/downloads/a;B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    return-object v0
.end method
