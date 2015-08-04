.class final Lcom/jodo/paysdk/buoy/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/buoy/a;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/buoy/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/c;->a:Lcom/jodo/paysdk/buoy/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/c;->a:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    :goto_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Lcom/jodo/paysdk/buoy/c;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/jodo/paysdk/buoy/c;->a:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/jodo/paysdk/util/b;->b(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const-string v4, "showRedPoint"

    invoke-static {}, Lcom/jodo/paysdk/buoy/a;->c()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/jodo/paysdk/buoy/c;->a:Lcom/jodo/paysdk/buoy/a;

    iget-object v4, v4, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jodo/paysdk/buoy/c;->a:Lcom/jodo/paysdk/buoy/a;

    iget-object v5, v5, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/jodo/paysdk/util/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.jodo.paysdk.JodoWebviewActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.jodo.paysdk.wallet.GooglePayActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.facebook.LoginActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.jodo.pccs3.view"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "showCtrlView"

    const/16 v4, 0x8

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/c;->a:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Lcom/jodo/paysdk/buoy/c;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const-string v1, "showCtrlView"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/c;->a:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->m:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method
