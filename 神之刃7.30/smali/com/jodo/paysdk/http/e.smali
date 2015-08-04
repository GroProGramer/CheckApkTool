.class final Lcom/jodo/paysdk/http/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Lcom/jodo/paysdk/http/f;

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/jodo/paysdk/http/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/paysdk/http/e;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/jodo/paysdk/http/e;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Lcom/jodo/paysdk/http/e;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p4, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    instance-of v0, p4, Lcom/jodo/paysdk/http/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/http/e;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/f;->a()V

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    move v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_3

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v0

    if-nez v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/jodo/paysdk/http/e;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v4, p0, Lcom/jodo/paysdk/http/e;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v2, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    invoke-virtual {v2, v0}, Lcom/jodo/paysdk/http/f;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/f;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    throw v0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    const-string v3, "can\'t resolve host"

    invoke-virtual {v2, v0, v3}, Lcom/jodo/paysdk/http/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    invoke-virtual {v2}, Lcom/jodo/paysdk/http/f;->b()V

    iget-boolean v2, p0, Lcom/jodo/paysdk/http/e;->e:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    invoke-virtual {v2, v0, v1}, Lcom/jodo/paysdk/http/f;->a(Ljava/lang/Throwable;[B)V

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_6
    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    const-string v3, "can\'t resolve host"

    invoke-virtual {v2, v0, v3}, Lcom/jodo/paysdk/http/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    const-string v3, "socket time out"

    invoke-virtual {v2, v0, v3}, Lcom/jodo/paysdk/http/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v0

    iget v2, p0, Lcom/jodo/paysdk/http/e;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jodo/paysdk/http/e;->f:I

    iget-object v4, p0, Lcom/jodo/paysdk/http/e;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v0, v2, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto/16 :goto_0

    :catch_6
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NPE in HttpClient"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/jodo/paysdk/http/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jodo/paysdk/http/e;->f:I

    iget-object v4, p0, Lcom/jodo/paysdk/http/e;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v2, v0, v4}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    goto/16 :goto_0

    :cond_3
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    iget-object v2, p0, Lcom/jodo/paysdk/http/e;->d:Lcom/jodo/paysdk/http/f;

    invoke-virtual {v2, v0, v1}, Lcom/jodo/paysdk/http/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
