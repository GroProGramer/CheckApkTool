.class final Lcom/jodo/paysdk/wallet/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/wallet/l;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/wallet/l;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/q;->a:Lcom/jodo/paysdk/wallet/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    sget-object v0, Lcom/jodo/paysdk/d/f;->a:Lcom/jodo/paysdk/d/f;

    invoke-static {}, Lcom/jodo/paysdk/d/f;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/jodo/paysdk/model/a;

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/q;->a:Lcom/jodo/paysdk/wallet/l;

    invoke-static {v0}, Lcom/jodo/paysdk/wallet/l;->a(Lcom/jodo/paysdk/wallet/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->k()I

    move-result v6

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->a()I

    move-result v7

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->l()Z

    move-result v8

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->n()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lcom/jodo/paysdk/model/a;->o()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/jodo/paysdk/wallet/q;->a:Lcom/jodo/paysdk/wallet/l;

    invoke-static {v12}, Lcom/jodo/paysdk/wallet/l;->b(Lcom/jodo/paysdk/wallet/l;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v0 .. v12}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
