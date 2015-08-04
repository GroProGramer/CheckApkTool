.class final Lcom/jodo/jpoint/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/jodo/jpoint/c;


# direct methods
.method constructor <init>(Lcom/jodo/jpoint/c;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/jpoint/d;->a:Lcom/jodo/jpoint/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/jodo/jpoint/d;->sleep(J)V

    iget-object v0, p0, Lcom/jodo/jpoint/d;->a:Lcom/jodo/jpoint/c;

    iget-object v0, v0, Lcom/jodo/jpoint/c;->a:Lcom/jodo/jpoint/b;

    iget-object v0, v0, Lcom/jodo/jpoint/b;->a:Lcom/jodo/jpoint/JPoint_Splash;

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
