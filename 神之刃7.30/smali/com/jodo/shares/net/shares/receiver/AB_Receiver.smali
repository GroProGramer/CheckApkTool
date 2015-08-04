.class public Lcom/jodo/shares/net/shares/receiver/AB_Receiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "AB_Receiver in"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/jodo/shares/net/shares/c/a;->a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/c/a;->a()V

    return-void
.end method
