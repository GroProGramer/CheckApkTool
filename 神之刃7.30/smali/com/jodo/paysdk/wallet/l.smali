.class public Lcom/jodo/paysdk/wallet/l;
.super Ljava/lang/Object;


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/wallet/l;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/wallet/l;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/jodo/paysdk/wallet/l;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jodo/paysdk/wallet/l;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/wallet/l;->f:I

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/wallet/l;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/jodo/paysdk/wallet/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/l;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/jodo/paysdk/wallet/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected static u()V
    .locals 0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/jodo/paysdk/d/f;->a:Lcom/jodo/paysdk/d/f;

    invoke-static {p2}, Lcom/jodo/paysdk/d/f;->b(I)Lcom/jodo/paysdk/model/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/a;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/d/f;->a:Lcom/jodo/paysdk/d/f;

    invoke-static {p2}, Lcom/jodo/paysdk/d/f;->a(I)Z

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/jodo/paysdk/wallet/m;

    invoke-direct {v0, p0, p1, p4}, Lcom/jodo/paysdk/wallet/m;-><init>(Lcom/jodo/paysdk/wallet/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/jodo/paysdk/wallet/n;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jodo/paysdk/wallet/n;-><init>(Lcom/jodo/paysdk/wallet/l;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/l;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-static/range {v0 .. v12}, Lcom/jodo/paysdk/wallet/GooglePayService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    sget-object v1, Lcom/jodo/paysdk/d/f;->a:Lcom/jodo/paysdk/d/f;

    invoke-static/range {p7 .. p7}, Lcom/jodo/paysdk/d/f;->b(I)Lcom/jodo/paysdk/model/a;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/jodo/paysdk/model/a;

    invoke-direct {v1}, Lcom/jodo/paysdk/model/a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jodo/paysdk/model/a;->a(J)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/jodo/paysdk/model/a;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jodo/paysdk/model/a;->b(J)V

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->c(Ljava/lang/String;)V

    move-object/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->d(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->a(I)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->e(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->f(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->g(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->h(Ljava/lang/String;)V

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->b(I)V

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->a(Z)V

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->i(Ljava/lang/String;)V

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->j(Ljava/lang/String;)V

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->k(Ljava/lang/String;)V

    sget-object v2, Lcom/jodo/paysdk/d/f;->a:Lcom/jodo/paysdk/d/f;

    invoke-static {v1}, Lcom/jodo/paysdk/d/f;->a(Lcom/jodo/paysdk/model/a;)Z

    move-object v13, v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/paysdk/wallet/l;->a:Landroid/content/Context;

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->k()I

    move-result v7

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->a()I

    move-result v8

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->l()Z

    move-result v9

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->n()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->o()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/jodo/paysdk/model/a;->e()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v13, p12

    invoke-static/range {v1 .. v15}, Lcom/jodo/paysdk/CheckPayResultService;->call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/jodo/paysdk/model/a;->b(J)V

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->c(Ljava/lang/String;)V

    move-object/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/a;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/jodo/paysdk/d/f;->a:Lcom/jodo/paysdk/d/f;

    invoke-static {v1}, Lcom/jodo/paysdk/d/f;->b(Lcom/jodo/paysdk/model/a;)Z

    move-object v13, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/jodo/paysdk/d/f;->a:Lcom/jodo/paysdk/d/f;

    invoke-static {p2}, Lcom/jodo/paysdk/d/f;->a(I)Z

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/wallet/o;

    invoke-direct {v0, p0, p1, p4, p5}, Lcom/jodo/paysdk/wallet/o;-><init>(Lcom/jodo/paysdk/wallet/l;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :goto_0
    new-instance v0, Lcom/jodo/paysdk/wallet/q;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/wallet/q;-><init>(Lcom/jodo/paysdk/wallet/l;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Lcom/jodo/paysdk/wallet/p;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jodo/paysdk/wallet/p;-><init>(Lcom/jodo/paysdk/wallet/l;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
