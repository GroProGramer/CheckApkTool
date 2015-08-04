.class final Lcom/jodo/paysdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Z

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/jodo/paysdk/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/jodo/paysdk/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/jodo/paysdk/c;->f:Ljava/lang/String;

    iput p7, p0, Lcom/jodo/paysdk/c;->g:I

    iput p8, p0, Lcom/jodo/paysdk/c;->h:I

    iput-boolean p9, p0, Lcom/jodo/paysdk/c;->i:Z

    iput-object p10, p0, Lcom/jodo/paysdk/c;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/jodo/paysdk/c;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/jodo/paysdk/c;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/jodo/paysdk/c;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/jodo/paysdk/c;->n:Ljava/lang/String;

    iput-object p15, p0, Lcom/jodo/paysdk/c;->o:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jodo/paysdk/c;->a:Landroid/content/Context;

    const-class v2, Lcom/jodo/paysdk/CheckPayResultService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cporderid"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uid"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serverid"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "servername"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rolename"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rolelevel"

    iget v3, p0, Lcom/jodo/paysdk/c;->g:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "price"

    iget v3, p0, Lcom/jodo/paysdk/c;->h:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "priceFixed"

    iget-boolean v3, p0, Lcom/jodo/paysdk/c;->i:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "ext"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "productName"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "itemid"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "token"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gw_order_id"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gw_result_token"

    iget-object v3, p0, Lcom/jodo/paysdk/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jodo/paysdk/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
