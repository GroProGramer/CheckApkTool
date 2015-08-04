.class final Lcom/jodo/paysdk/http/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/jodo/paysdk/http/a/f;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/http/a/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/http/a/g;->b:Lcom/jodo/paysdk/http/a/f;

    iput-boolean p2, p0, Lcom/jodo/paysdk/http/a/g;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/g;->b:Lcom/jodo/paysdk/http/a/f;

    iget-boolean v1, p0, Lcom/jodo/paysdk/http/a/g;->a:Z

    invoke-static {v0, v2, v2, v1}, Lcom/jodo/paysdk/http/a/f;->a(Lcom/jodo/paysdk/http/a/f;ZZZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/jodo/paysdk/http/a/g;->b:Lcom/jodo/paysdk/http/a/f;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/http/a/f;->a(Lcom/jodo/paysdk/http/a/f;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/g;->b:Lcom/jodo/paysdk/http/a/f;

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/f;->a(Lcom/jodo/paysdk/http/a/f;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/g;->b:Lcom/jodo/paysdk/http/a/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/http/a/f;->a(Lcom/jodo/paysdk/http/a/f;ZZZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/g;->b:Lcom/jodo/paysdk/http/a/f;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/http/a/f;->a(Lcom/jodo/paysdk/http/a/f;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x130 -> :sswitch_1
    .end sparse-switch
.end method
