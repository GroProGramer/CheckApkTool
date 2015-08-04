.class final Lcom/jodo/jpoint/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/jodo/jpoint/e;


# direct methods
.method constructor <init>(Lcom/jodo/jpoint/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/jpoint/f;->a:Lcom/jodo/jpoint/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/jodo/jpoint/f;->sleep(J)V

    iget-object v0, p0, Lcom/jodo/jpoint/f;->a:Lcom/jodo/jpoint/e;

    iget-object v0, v0, Lcom/jodo/jpoint/e;->a:Lcom/jodo/jpoint/JPoint_Splash;

    invoke-static {v0}, Lcom/jodo/jpoint/JPoint_Splash;->b(Lcom/jodo/jpoint/JPoint_Splash;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
