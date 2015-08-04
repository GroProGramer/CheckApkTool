.class public abstract Lcom/jodo/pccs3/e/b;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/jodo/pccs3/e/b;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jodo/pccs3/e/b;->c:I

    return-void
.end method

.method public static b(Lcom/jodo/pccs3/message/e;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jodo/pccs3/message/e;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/jodo/pccs3/e/b;->c(Lcom/jodo/pccs3/message/e;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-class v0, Lcom/jodo/pccs3/e/d;

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/jodo/pccs3/e/h;

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/jodo/pccs3/e/e;

    goto :goto_0

    :pswitch_4
    const-class v0, Lcom/jodo/pccs3/e/g;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static c(Lcom/jodo/pccs3/message/e;)I
    .locals 1

    new-instance v0, Lcom/jodo/pccs3/e/c;

    invoke-direct {v0}, Lcom/jodo/pccs3/e/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jodo/pccs3/e/c;->a(Lcom/jodo/pccs3/message/e;)V

    invoke-virtual {v0}, Lcom/jodo/pccs3/e/c;->c()I

    move-result v0

    return v0
.end method

.method public static d(Lcom/jodo/pccs3/message/e;)Z
    .locals 1

    invoke-static {p0}, Lcom/jodo/pccs3/e/b;->b(Lcom/jodo/pccs3/message/e;)Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/e/b;

    invoke-virtual {v0, p0}, Lcom/jodo/pccs3/e/b;->a(Lcom/jodo/pccs3/message/e;)V

    invoke-virtual {v0}, Lcom/jodo/pccs3/e/b;->e()Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a(Lcom/jodo/pccs3/message/e;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/jodo/pccs3/message/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jodo/pccs3/e/b;->a:I

    const-string v1, "content"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/p;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/pccs3/e/b;->d:Lorg/json/JSONObject;

    const-string v1, "seq_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jodo/pccs3/e/b;->b:J

    const-string v1, "msg_code"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jodo/pccs3/e/b;->c:I

    invoke-virtual {p0}, Lcom/jodo/pccs3/e/b;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/pccs3/e/b;->k()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/pccs3/e/b;->k()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method abstract c()I
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()I
.end method

.method protected final g()I
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/e/b;->a:I

    return v0
.end method

.method public final h()Z
    .locals 3

    sget-object v0, Lcom/jodo/pccs3/e/b;->e:Ljava/util/Set;

    iget-wide v1, p0, Lcom/jodo/pccs3/e/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 4

    iget-wide v0, p0, Lcom/jodo/pccs3/e/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/pccs3/e/b;->e:Ljava/util/Set;

    iget-wide v1, p0, Lcom/jodo/pccs3/e/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final j()Lcom/jodo/pccs3/message/e;
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/jodo/pccs3/e/b;->b()V

    new-instance v1, Lcom/jodo/pccs3/message/e;

    invoke-direct {v1}, Lcom/jodo/pccs3/message/e;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/jodo/pccs3/e/b;->c()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "content"

    iget-object v3, p0, Lcom/jodo/pccs3/e/b;->d:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "seq_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "msg_code"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jodo/pccs3/message/e;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jodo/pccs3/e/b;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v5}, Lcom/jodo/pccs3/message/e;->a(Z)V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/jodo/pccs3/message/e;->a(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v5}, Lcom/jodo/pccs3/message/e;->a(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final k()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/e/b;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/e/b;->d:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/e/b;->d:Lorg/json/JSONObject;

    return-object v0
.end method
