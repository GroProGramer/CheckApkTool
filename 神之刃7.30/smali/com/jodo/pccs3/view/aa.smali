.class public final Lcom/jodo/pccs3/view/aa;
.super Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;


# instance fields
.field public a:Lorg/apache/http/client/HttpClient;

.field final synthetic b:Lcom/jodo/pccs3/view/z;


# direct methods
.method public constructor <init>(Lcom/jodo/pccs3/view/z;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/aa;->b:Lcom/jodo/pccs3/view/z;

    invoke-direct {p0, p2}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/aa;->a:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcom/jodo/pccs3/view/aa;->a:Lorg/apache/http/client/HttpClient;

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v1}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
