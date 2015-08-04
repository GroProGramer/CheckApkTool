.class final Lcom/air/a/c;
.super Lcom/loopj/android/http/BinaryHttpResponseHandler;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/air/a/e;

.field final synthetic g:Lcom/air/a/a;


# direct methods
.method constructor <init>(Lcom/air/a/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/air/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/air/a/c;->g:Lcom/air/a/a;

    iput-object p2, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/air/a/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/air/a/c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/air/a/c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/air/a/c;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/air/a/c;->f:Lcom/air/a/e;

    invoke-direct {p0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/air/a/c;->g:Lcom/air/a/a;

    iget-object v1, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/air/a/a;->a(Lcom/air/a/a;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/air/a/c;->g:Lcom/air/a/a;

    iget-object v1, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/air/a/c;->f:Lcom/air/a/e;

    invoke-static {v0, v1, v3, v2}, Lcom/air/a/a;->a(Lcom/air/a/a;Landroid/content/Context;ILcom/air/a/e;)V

    return-void
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 4

    const/16 v0, 0x3e7

    :try_start_0
    iget-object v1, p0, Lcom/air/a/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/air/a/c;->c:Ljava/lang/String;

    invoke-static {v1, v2, p3}, Lcom/air/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/air/a/c;->g:Lcom/air/a/a;

    iget-object v2, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/air/a/a;->a(Lcom/air/a/a;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/air/a/c;->g:Lcom/air/a/a;

    iget-object v2, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/air/a/a;->a(Lcom/air/a/a;Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/air/a/c;->g:Lcom/air/a/a;

    iget-object v2, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/air/a/c;->f:Lcom/air/a/e;

    invoke-static {v1, v2, v0, v3}, Lcom/air/a/a;->a(Lcom/air/a/a;Landroid/content/Context;ILcom/air/a/e;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/air/a/c;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/air/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/air/a/c;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/air/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/air/a/c;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/air/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/air/a/c;->g:Lcom/air/a/a;

    iget-object v2, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/air/a/c;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/air/a/a;->a(Lcom/air/a/a;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/air/a/c;->g:Lcom/air/a/a;

    iget-object v2, p0, Lcom/air/a/c;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/air/a/a;->a(Lcom/air/a/a;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/air/plugin/a/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
