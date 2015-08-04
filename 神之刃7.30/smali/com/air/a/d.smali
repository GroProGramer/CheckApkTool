.class final Lcom/air/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/air/a/a;


# direct methods
.method constructor <init>(Lcom/air/a/a;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/air/a/d;->c:Lcom/air/a/a;

    iput-object p2, p0, Lcom/air/a/d;->a:Landroid/content/Context;

    iput p3, p0, Lcom/air/a/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/air/a/d;->c:Lcom/air/a/a;

    invoke-static {v0}, Lcom/air/a/a;->a(Lcom/air/a/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/air/a/e;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/air/a/d;->a:Landroid/content/Context;

    iget v3, p0, Lcom/air/a/d;->b:I

    invoke-interface {v0, v2, v3}, Lcom/air/a/e;->run(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/air/plugin/a/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
