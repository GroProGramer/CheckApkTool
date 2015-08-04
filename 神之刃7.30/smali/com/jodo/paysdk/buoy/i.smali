.class final Lcom/jodo/paysdk/buoy/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/buoy/d;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/buoy/d;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/i;->a:Lcom/jodo/paysdk/buoy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/i;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->d:Lcom/jodo/paysdk/buoy/d;

    invoke-virtual {v0}, Lcom/jodo/paysdk/buoy/d;->a()V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/i;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyJpointUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/i;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/jodo/paysdk/buoy/j;

    invoke-direct {v1, p0, v0}, Lcom/jodo/paysdk/buoy/j;-><init>(Lcom/jodo/paysdk/buoy/i;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/jodo/paysdk/buoy/i;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/jodo/paysdk/util/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/i;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
