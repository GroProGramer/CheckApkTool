.class final Lcom/jodo/pccs3/j;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/a/e;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Lcom/jodo/pccs3/a/e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/j;->c:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/j;->a:Lcom/jodo/pccs3/a/e;

    iput-object p3, p0, Lcom/jodo/pccs3/j;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVException;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImClient Open["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/pccs3/j;->c:Lcom/jodo/pccs3/a;

    invoke-static {v1}, Lcom/jodo/pccs3/a;->c(Lcom/jodo/pccs3/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/jodo/pccs3/j;->c:Lcom/jodo/pccs3/a;

    invoke-static {v0}, Lcom/jodo/pccs3/a;->b(Lcom/jodo/pccs3/a;)Z

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/jodo/pccs3/j;->c:Lcom/jodo/pccs3/a;

    invoke-static {v0}, Lcom/jodo/pccs3/a;->d(Lcom/jodo/pccs3/a;)Z

    iget-object v0, p0, Lcom/jodo/pccs3/j;->c:Lcom/jodo/pccs3/a;

    invoke-static {v0}, Lcom/jodo/pccs3/a;->e(Lcom/jodo/pccs3/a;)I

    iget-object v0, p0, Lcom/jodo/pccs3/j;->a:Lcom/jodo/pccs3/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/j;->a:Lcom/jodo/pccs3/a/e;

    invoke-interface {v0}, Lcom/jodo/pccs3/a/e;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/j;->c:Lcom/jodo/pccs3/a;

    invoke-static {v0}, Lcom/jodo/pccs3/a;->c(Lcom/jodo/pccs3/a;)I

    move-result v0

    const/16 v1, -0x3e7

    if-eq v0, v1, :cond_0

    invoke-static {p2}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/jodo/pccs3/j;->c:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/j;->a:Lcom/jodo/pccs3/a/e;

    invoke-static {v0, v1, v2, p2}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/e;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/jodo/pccs3/j;->c:Lcom/jodo/pccs3/a;

    invoke-static {v1}, Lcom/jodo/pccs3/a;->e(Lcom/jodo/pccs3/a;)I

    iget-object v1, p0, Lcom/jodo/pccs3/j;->a:Lcom/jodo/pccs3/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/pccs3/j;->a:Lcom/jodo/pccs3/a/e;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/jodo/pccs3/a/e;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method
