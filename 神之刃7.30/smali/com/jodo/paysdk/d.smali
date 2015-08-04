.class final Lcom/jodo/paysdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/pccs3/a/d;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/jodo/paysdk/CustomerServiceActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/CustomerServiceActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/d;->d:Lcom/jodo/paysdk/CustomerServiceActivity;

    iput p2, p0, Lcom/jodo/paysdk/d;->a:I

    iput-object p3, p0, Lcom/jodo/paysdk/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jodo/paysdk/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/jodo/paysdk/d;->d:Lcom/jodo/paysdk/CustomerServiceActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/CustomerServiceActivity;->finish()V

    iget-object v0, p0, Lcom/jodo/paysdk/d;->d:Lcom/jodo/paysdk/CustomerServiceActivity;

    iget v1, p0, Lcom/jodo/paysdk/d;->a:I

    iget-object v2, p0, Lcom/jodo/paysdk/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/Exception;)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/d;->d:Lcom/jodo/paysdk/CustomerServiceActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/CustomerServiceActivity;->finish()V

    iget-object v0, p0, Lcom/jodo/paysdk/d;->d:Lcom/jodo/paysdk/CustomerServiceActivity;

    iget v1, p0, Lcom/jodo/paysdk/d;->a:I

    iget-object v2, p0, Lcom/jodo/paysdk/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/jodo/paysdk/d;->d:Lcom/jodo/paysdk/CustomerServiceActivity;

    const-string v1, "jodoplay_service_init_fail"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/d;->d:Lcom/jodo/paysdk/CustomerServiceActivity;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/d;->d:Lcom/jodo/paysdk/CustomerServiceActivity;

    const-string v1, "jodoplay_service_init_start"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/d;->d:Lcom/jodo/paysdk/CustomerServiceActivity;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
