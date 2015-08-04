.class public final Lcom/jodo/shares/net/shares/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static f:Lcom/jodo/shares/net/shares/c/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jodo/shares/net/shares/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jodo/shares/net/shares/c/b;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;
    .locals 1

    sget-object v0, Lcom/jodo/shares/net/shares/c/b;->f:Lcom/jodo/shares/net/shares/c/b;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/jodo/shares/net/shares/c/b;->b(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;

    move-result-object v0

    sput-object v0, Lcom/jodo/shares/net/shares/c/b;->f:Lcom/jodo/shares/net/shares/c/b;

    :cond_0
    sget-object v0, Lcom/jodo/shares/net/shares/c/b;->f:Lcom/jodo/shares/net/shares/c/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pushinfoList"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    move v2, v0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-ge v2, v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_1
    :try_start_2
    new-instance v5, Lcom/jodo/shares/net/shares/b/a;

    invoke-direct {v5}, Lcom/jodo/shares/net/shares/b/a;-><init>()V

    invoke-virtual {v5, v1}, Lcom/jodo/shares/net/shares/b/a;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    :goto_2
    return v0

    :cond_1
    :try_start_3
    const-string v1, "consumedIds"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    move v1, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    const-string v1, "waitingId"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jodo/shares/net/shares/c/b;->d:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x1

    goto :goto_2
.end method

.method private static b(Landroid/content/Context;)Lcom/jodo/shares/net/shares/c/b;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/jodo/shares/net/shares/c/b;

    invoke-direct {v0}, Lcom/jodo/shares/net/shares/c/b;-><init>()V

    const-string v2, "jodo_data.dt"

    const-string v3, "jodo_pilist"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jodo/shares/net/shares/c/b;->a(Ljava/lang/String;)Z

    iput-object v1, v0, Lcom/jodo/shares/net/shares/c/b;->e:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/jodo/shares/net/shares/c/b;

    invoke-direct {v0}, Lcom/jodo/shares/net/shares/c/b;-><init>()V

    goto :goto_0
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/shares/b/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v1, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()Z
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/jodo/shares/net/shares/c/b;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/shares/net/shares/c/b;->e:Landroid/content/Context;

    const-string v2, "jodo_data.dt"

    const-string v3, "jodo_pilist"

    invoke-static {v1, v2, v3, v0}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jodo/shares/net/shares/c/c;

    invoke-direct {v0, p0}, Lcom/jodo/shares/net/shares/c/c;-><init>(Lcom/jodo/shares/net/shares/c/b;)V

    iget-object v1, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/shares/b/a;

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/b/a;->j()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "pushinfoList"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_2

    :cond_1
    const-string v0, "consumedIds"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "waitingId"

    iget v2, p0, Lcom/jodo/shares/net/shares/c/b;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/jodo/shares/net/shares/b/a;
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/jodo/shares/net/shares/c/b;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/shares/b/a;

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/b/a;->i()J

    move-result-wide v5

    sub-long/2addr v5, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/jodo/shares/net/shares/c/b;->b(Lcom/jodo/shares/net/shares/b/a;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(I)Lcom/jodo/shares/net/shares/b/a;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/shares/b/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jodo/shares/net/shares/b/a;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    :try_start_0
    const-string v0, "result"

    invoke-static {p1, v0}, Lcom/jodo/paysdk/util/p;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/jodo/shares/net/shares/b/a;

    invoke-direct {v5}, Lcom/jodo/shares/net/shares/b/a;-><init>()V

    invoke-virtual {v5, v4}, Lcom/jodo/shares/net/shares/b/a;->a(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/c/b;->d()V

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/c/b;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/jodo/shares/net/shares/b/a;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jodo/shares/net/shares/c/b;->b(Lcom/jodo/shares/net/shares/b/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    :cond_2
    iget-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/jodo/shares/net/shares/c/b;->c(I)V

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/c/b;->c()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/jodo/shares/net/shares/c/b;->d:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/shares/net/shares/c/b;->d:I

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/c/b;->c()Z

    return-void
.end method

.method public final b(Lcom/jodo/shares/net/shares/b/a;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/jodo/shares/net/shares/b/a;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final c(Lcom/jodo/shares/net/shares/b/a;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jodo/shares/net/shares/c/b;->d(Lcom/jodo/shares/net/shares/b/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->c:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->c:Ljava/util/List;

    :cond_2
    iget-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x12c

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/jodo/shares/net/shares/c/b;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/jodo/shares/net/shares/c/b;->c(I)V

    invoke-direct {p0}, Lcom/jodo/shares/net/shares/c/b;->c()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d(Lcom/jodo/shares/net/shares/b/a;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->c:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/c/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/jodo/shares/net/shares/b/a;->a()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move v0, v1

    goto :goto_0
.end method
