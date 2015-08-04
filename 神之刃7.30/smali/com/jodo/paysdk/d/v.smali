.class final Lcom/jodo/paysdk/d/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/d/v;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/jodo/paysdk/d/v;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/jodo/paysdk/d/v;->c:Z

    iput-object p4, p0, Lcom/jodo/paysdk/d/v;->d:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/16 v6, 0xc9

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "jodo unzip"

    const-string v1, "before unzip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jodo/paysdk/d/v;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/paysdk/d/v;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/jodo/paysdk/d/v;->c:Z

    iget-object v3, p0, Lcom/jodo/paysdk/d/v;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/util/al;->a(Ljava/io/File;Ljava/lang/String;ZLandroid/os/Handler;)I

    const-string v0, "jodo unzip"

    const-string v1, "after unzip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jodo/paysdk/d/v;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jodo/paysdk/d/v;->d:Landroid/os/Handler;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "jodo unzip"

    const-string v1, "unzip error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jodo/paysdk/d/v;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jodo/paysdk/d/v;->d:Landroid/os/Handler;

    const/16 v2, 0x63

    invoke-virtual {v1, v6, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
