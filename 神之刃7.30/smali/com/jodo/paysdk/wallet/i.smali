.class final Lcom/jodo/paysdk/wallet/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:I

.field final synthetic k:Z

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Lcom/jodo/paysdk/wallet/GooglePayService;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/wallet/GooglePayService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/i;->o:Lcom/jodo/paysdk/wallet/GooglePayService;

    iput-object p2, p0, Lcom/jodo/paysdk/wallet/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/wallet/i;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/jodo/paysdk/wallet/i;->c:Ljava/lang/String;

    iput p5, p0, Lcom/jodo/paysdk/wallet/i;->d:I

    iput-object p6, p0, Lcom/jodo/paysdk/wallet/i;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/jodo/paysdk/wallet/i;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/jodo/paysdk/wallet/i;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/jodo/paysdk/wallet/i;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/jodo/paysdk/wallet/i;->i:Ljava/lang/String;

    iput p11, p0, Lcom/jodo/paysdk/wallet/i;->j:I

    iput-boolean p12, p0, Lcom/jodo/paysdk/wallet/i;->k:Z

    iput-object p13, p0, Lcom/jodo/paysdk/wallet/i;->l:Ljava/lang/String;

    iput-object p14, p0, Lcom/jodo/paysdk/wallet/i;->m:Ljava/lang/String;

    iput-object p15, p0, Lcom/jodo/paysdk/wallet/i;->n:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/jodo/paysdk/wallet/i;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/model/a;

    invoke-direct {v2}, Lcom/jodo/paysdk/model/a;-><init>()V

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->g(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->h(Ljava/lang/String;)V

    iget v3, p0, Lcom/jodo/paysdk/wallet/i;->j:I

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->b(I)V

    iget-boolean v3, p0, Lcom/jodo/paysdk/wallet/i;->k:Z

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->a(Z)V

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->i(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->j(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->k(Ljava/lang/String;)V

    const-string v3, "price"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "price"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->a(I)V

    :cond_1
    const-string v3, "cporderid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "cporderid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/model/a;->a(Ljava/lang/String;)V

    :cond_2
    const-string v3, "orderid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "orderid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jodo/paysdk/model/a;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/jodo/paysdk/model/a;->a()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v2}, Lcom/jodo/paysdk/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2}, Lcom/jodo/paysdk/model/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/jodo/paysdk/wallet/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/i;->c:Ljava/lang/String;

    iget v2, p0, Lcom/jodo/paysdk/wallet/i;->d:I

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->e:Ljava/lang/String;

    const-string v4, "[error=2005]"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/wallet/GooglePayService;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/jodo/paysdk/wallet/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/i;->c:Ljava/lang/String;

    iget v2, p0, Lcom/jodo/paysdk/wallet/i;->d:I

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->e:Ljava/lang/String;

    const-string v4, "[error=2003]"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/wallet/GooglePayService;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/i;->c:Ljava/lang/String;

    iget v2, p0, Lcom/jodo/paysdk/wallet/i;->d:I

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->e:Ljava/lang/String;

    const-string v4, "[error=2002]"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/wallet/GooglePayService;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :try_start_1
    invoke-virtual {v2}, Lcom/jodo/paysdk/model/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/i;->c:Ljava/lang/String;

    iget v2, p0, Lcom/jodo/paysdk/wallet/i;->d:I

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->e:Ljava/lang/String;

    const-string v4, "[error=2006]"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/wallet/GooglePayService;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/jodo/paysdk/wallet/i;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/i;->c:Ljava/lang/String;

    iget v2, p0, Lcom/jodo/paysdk/wallet/i;->d:I

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/i;->e:Ljava/lang/String;

    const-string v4, "[error=2004]"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/wallet/GooglePayService;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/jodo/paysdk/wallet/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/paysdk/wallet/i;->c:Ljava/lang/String;

    iget v3, p0, Lcom/jodo/paysdk/wallet/i;->d:I

    iget-object v4, p0, Lcom/jodo/paysdk/wallet/i;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[error=2007,code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/jodo/paysdk/wallet/GooglePayService;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/jodo/paysdk/d/f;->a:Lcom/jodo/paysdk/d/f;

    invoke-static {v2}, Lcom/jodo/paysdk/d/f;->a(Lcom/jodo/paysdk/model/a;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->b()V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/jodo/paysdk/d/f;->a:Lcom/jodo/paysdk/d/f;

    invoke-virtual {v2}, Lcom/jodo/paysdk/model/a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/jodo/paysdk/d/f;->b(I)Lcom/jodo/paysdk/model/a;

    move-result-object v14

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/i;->b:Landroid/content/Context;

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->k()I

    move-result v6

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->a()I

    move-result v7

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->l()Z

    move-result v8

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->n()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->o()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/jodo/paysdk/wallet/i;->n:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14}, Lcom/jodo/paysdk/model/a;->e()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v0 .. v14}, Lcom/jodo/paysdk/CheckPayResultService;->call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
