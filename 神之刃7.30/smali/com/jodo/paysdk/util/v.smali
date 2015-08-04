.class final Lcom/jodo/paysdk/util/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/util/v;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/util/v;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/util/v;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/jodo/paysdk/util/v;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Landroid/content/Intent;

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/jodo/paysdk/util/u;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Lcom/jodo/paysdk/util/u;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v6, p0, Lcom/jodo/paysdk/util/v;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v0, Lcom/jodo/paysdk/util/u;->a:I

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/jodo/paysdk/util/v;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget v0, Lcom/jodo/paysdk/util/u;->b:I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/jodo/paysdk/util/v;->c:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget v0, Lcom/jodo/paysdk/util/u;->b:I

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/jodo/paysdk/util/v;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget v0, Lcom/jodo/paysdk/util/u;->a:I

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/jodo/paysdk/util/v;->a:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/jodo/paysdk/util/ad;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/jodo/paysdk/util/v;->a:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/jodo/paysdk/util/ad;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/jodo/paysdk/util/v;->d:Z

    if-nez v6, :cond_0

    :cond_6
    iget-object v6, p0, Lcom/jodo/paysdk/util/v;->a:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/jodo/paysdk/util/ad;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/jodo/paysdk/util/v;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/jodo/paysdk/util/ad;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/jodo/paysdk/util/v;->d:Z

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    if-lt v4, v5, :cond_0

    move v0, v1

    goto :goto_0
.end method
