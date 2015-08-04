.class final Lcom/jodo/paysdk/wallet/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/wallet/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/wallet/k;->c:Ljava/lang/String;

    iput p4, p0, Lcom/jodo/paysdk/wallet/k;->d:I

    iput-object p5, p0, Lcom/jodo/paysdk/wallet/k;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->b()V

    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayService;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/k;->a:Landroid/content/Context;

    const-string v2, "jodoplay_create_order_error"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/k;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    sget-object v1, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/config/a;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/k;->c:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/jodo/paysdk/wallet/k;->c:Ljava/lang/String;

    const/16 v2, 0x8

    iget v3, p0, Lcom/jodo/paysdk/wallet/k;->d:I

    iget-object v4, p0, Lcom/jodo/paysdk/wallet/k;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
