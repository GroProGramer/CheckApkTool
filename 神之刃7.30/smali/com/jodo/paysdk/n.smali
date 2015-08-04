.class final Lcom/jodo/paysdk/n;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/JodoJPointActivity;


# direct methods
.method private constructor <init>(Lcom/jodo/paysdk/JodoJPointActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/n;->a:Lcom/jodo/paysdk/JodoJPointActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jodo/paysdk/JodoJPointActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/n;-><init>(Lcom/jodo/paysdk/JodoJPointActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/jodo/paysdk/util/ac;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/n;->a:Lcom/jodo/paysdk/JodoJPointActivity;

    new-instance v1, Lcom/jodo/paysdk/o;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/o;-><init>(Lcom/jodo/paysdk/n;)V

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/JodoJPointActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
