.class public Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Lcom/jodo/paysdk/http/a;

.field private b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/jodo/paysdk/http/jodohttp/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "JodoHttpService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/jodo/paysdk/http/a;

    invoke-direct {v0}, Lcom/jodo/paysdk/http/a;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a:Lcom/jodo/paysdk/http/a;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->b:Ljava/util/Hashtable;

    return-void
.end method

.method private a(JLcom/jodo/paysdk/http/jodohttp/a;)Lcom/jodo/paysdk/http/jodohttp/f;
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v0, Lcom/jodo/paysdk/http/jodohttp/f;

    invoke-direct {v0, p0, p0}, Lcom/jodo/paysdk/http/jodohttp/f;-><init>(Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;Landroid/content/Context;)V

    invoke-static {v0, p1, p2}, Lcom/jodo/paysdk/http/jodohttp/f;->a(Lcom/jodo/paysdk/http/jodohttp/f;J)V

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/http/jodohttp/f;->b(Lcom/jodo/paysdk/http/jodohttp/f;J)V

    invoke-virtual {v0, p3}, Lcom/jodo/paysdk/http/jodohttp/f;->a(Lcom/jodo/paysdk/http/jodohttp/a;)V

    invoke-virtual {p3}, Lcom/jodo/paysdk/http/jodohttp/a;->e()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-wide/32 v3, 0x15f900

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/http/jodohttp/f;->c(Lcom/jodo/paysdk/http/jodohttp/f;J)V

    :goto_1
    iget-object v1, p0, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->b:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/jodo/paysdk/http/jodohttp/a;->e()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/http/jodohttp/f;->c(Lcom/jodo/paysdk/http/jodohttp/f;J)V

    goto :goto_1
.end method

.method private a(J)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->b:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a(J)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    const/4 v1, 0x0

    const-string v0, "action"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "param"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "seq"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v2}, Lcom/jodo/paysdk/http/jodohttp/a;->a(Landroid/os/Bundle;)Lcom/jodo/paysdk/http/jodohttp/a;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    const-string v0, "JodoHttpService"

    const-string v2, "clock1"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "JodoHttpService"

    const-string v1, "end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "JodoHttpService"

    const-string v2, "clock2"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/http/jodohttp/f;

    invoke-static {v0}, Lcom/jodo/paysdk/http/jodohttp/f;->a(Lcom/jodo/paysdk/http/jodohttp/f;)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_2

    const-string v5, "JodoHttpService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "clock_timeout:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/jodohttp/f;->a()Lcom/jodo/paysdk/http/jodohttp/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jodo/paysdk/http/jodohttp/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a:Lcom/jodo/paysdk/http/a;

    invoke-virtual {v5, v0}, Lcom/jodo/paysdk/http/a;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/jodo/paysdk/http/jodohttp/f;->b(Lcom/jodo/paysdk/http/jodohttp/f;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a(J)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/jodohttp/f;->a()Lcom/jodo/paysdk/http/jodohttp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/jodohttp/a;->d()Lcom/jodo/paysdk/http/jodohttp/c;

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const-string v1, "JodoHttpService"

    const-string v2, "clock3"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v0, "JodoHttpService"

    const-string v1, "clock4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "JodoHttpService"

    const-string v1, "MainThread Die"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "JodoHttpService"

    const-string v1, "clock5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/jodo/paysdk/http/jodohttp/b;->a()Lcom/jodo/paysdk/http/jodohttp/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/http/jodohttp/b;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, v3, v4, v2}, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a(JLcom/jodo/paysdk/http/jodohttp/a;)Lcom/jodo/paysdk/http/jodohttp/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a:Lcom/jodo/paysdk/http/a;

    invoke-virtual {v2}, Lcom/jodo/paysdk/http/jodohttp/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jodo/paysdk/http/jodohttp/a;->c()Lcom/jodo/paysdk/http/k;

    move-result-object v6

    new-instance v7, Lcom/jodo/paysdk/http/jodohttp/d;

    invoke-direct {v7, p0, v3, v4, v2}, Lcom/jodo/paysdk/http/jodohttp/d;-><init>(Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;JLcom/jodo/paysdk/http/jodohttp/a;)V

    invoke-virtual {v1, v0, v5, v6, v7}, Lcom/jodo/paysdk/http/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/jodo/paysdk/http/k;Lcom/jodo/paysdk/http/f;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, v3, v4, v2}, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a(JLcom/jodo/paysdk/http/jodohttp/a;)Lcom/jodo/paysdk/http/jodohttp/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a:Lcom/jodo/paysdk/http/a;

    invoke-virtual {v2}, Lcom/jodo/paysdk/http/jodohttp/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jodo/paysdk/http/jodohttp/a;->c()Lcom/jodo/paysdk/http/k;

    move-result-object v6

    new-instance v7, Lcom/jodo/paysdk/http/jodohttp/e;

    invoke-direct {v7, p0, v3, v4, v2}, Lcom/jodo/paysdk/http/jodohttp/e;-><init>(Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;JLcom/jodo/paysdk/http/jodohttp/a;)V

    invoke-virtual {v1, v0, v5, v6, v7}, Lcom/jodo/paysdk/http/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/jodo/paysdk/http/k;Lcom/jodo/paysdk/http/f;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
