.class public final Lcom/jodo/pccs3/view/ad;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/jodo/pccs3/view/ad;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/pccs3/view/c;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/jodo/pccs3/view/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/ad;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/ad;->b:Ljava/util/Set;

    return-void
.end method

.method public static a()Lcom/jodo/pccs3/view/ad;
    .locals 1

    sget-object v0, Lcom/jodo/pccs3/view/ad;->c:Lcom/jodo/pccs3/view/ad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/pccs3/view/ad;

    invoke-direct {v0}, Lcom/jodo/pccs3/view/ad;-><init>()V

    sput-object v0, Lcom/jodo/pccs3/view/ad;->c:Lcom/jodo/pccs3/view/ad;

    :cond_0
    sget-object v0, Lcom/jodo/pccs3/view/ad;->c:Lcom/jodo/pccs3/view/ad;

    return-object v0
.end method

.method private b(Lcom/jodo/pccs3/message/a;Landroid/content/Context;)Lcom/jodo/pccs3/view/c;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/jodo/pccs3/message/d;->a(Lcom/jodo/pccs3/message/a;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jodo/pccs3/message/e;

    invoke-static {v0}, Lcom/jodo/pccs3/e/b;->c(Lcom/jodo/pccs3/message/e;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-static {p1}, Lcom/jodo/pccs3/message/d;->a(Lcom/jodo/pccs3/message/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/jodo/pccs3/message/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/jodo/pccs3/view/ao;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/ad;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/jodo/pccs3/view/ad;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/c;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    if-nez v0, :cond_8

    :goto_4
    return-object v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/jodo/pccs3/message/e;

    invoke-static {v0}, Lcom/jodo/pccs3/e/b;->d(Lcom/jodo/pccs3/message/e;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    const-class v0, Lcom/jodo/pccs3/view/aq;

    move-object v1, v0

    goto :goto_1

    :pswitch_1
    const-class v0, Lcom/jodo/pccs3/view/ah;

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-class v0, Lcom/jodo/pccs3/view/ao;

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/jodo/pccs3/message/a;->d()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/jodo/pccs3/message/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/jodo/pccs3/view/ak;

    move-object v1, v0

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_5

    :cond_5
    const-class v0, Lcom/jodo/pccs3/view/ak;

    move-object v1, v0

    goto :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_3

    :cond_7
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/c;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/jodo/pccs3/view/ad;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Lcom/jodo/pccs3/view/c;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/jodo/pccs3/view/c;->a(Lcom/jodo/pccs3/message/a;)V

    move-object v2, v0

    goto :goto_4

    :cond_9
    move-object v3, v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/jodo/pccs3/message/a;Landroid/content/Context;)Lcom/jodo/pccs3/view/c;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/jodo/pccs3/message/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/jodo/pccs3/view/ax;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/ad;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/jodo/pccs3/view/ad;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/ae;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-nez v0, :cond_2

    move-object v0, v3

    :goto_3
    return-object v0

    :cond_0
    const-class v0, Lcom/jodo/pccs3/view/aw;

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_2

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/ae;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/jodo/pccs3/view/ad;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Lcom/jodo/pccs3/view/ae;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/jodo/pccs3/view/ae;->a(Lcom/jodo/pccs3/message/a;)V

    invoke-interface {p1, v0}, Lcom/jodo/pccs3/message/a;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/jodo/pccs3/view/ad;->b(Lcom/jodo/pccs3/message/a;Landroid/content/Context;)Lcom/jodo/pccs3/view/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/view/ae;->a(Lcom/jodo/pccs3/view/c;)V

    goto :goto_3

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/ad;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/c;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->a()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/jodo/pccs3/view/ad;->a(Lcom/jodo/pccs3/view/c;)V

    goto :goto_0
.end method

.method public final a(Lcom/jodo/pccs3/view/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jodo/pccs3/view/c;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/pccs3/view/ad;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v0, p0, Lcom/jodo/pccs3/view/ad;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/jodo/pccs3/view/ad;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/jodo/pccs3/view/c;->e()V

    return-void
.end method
