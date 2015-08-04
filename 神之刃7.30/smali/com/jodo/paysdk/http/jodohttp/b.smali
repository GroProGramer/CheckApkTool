.class public final Lcom/jodo/paysdk/http/jodohttp/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/jodo/paysdk/http/jodohttp/b;


# instance fields
.field private volatile b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/http/jodohttp/b;->a:Lcom/jodo/paysdk/http/jodohttp/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jodo/paysdk/http/jodohttp/b;->b:J

    return-void
.end method

.method public static a()Lcom/jodo/paysdk/http/jodohttp/b;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/http/jodohttp/b;->a:Lcom/jodo/paysdk/http/jodohttp/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/http/jodohttp/b;

    invoke-direct {v0}, Lcom/jodo/paysdk/http/jodohttp/b;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/http/jodohttp/b;->a:Lcom/jodo/paysdk/http/jodohttp/b;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/http/jodohttp/b;->a:Lcom/jodo/paysdk/http/jodohttp/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lcom/jodo/paysdk/http/jodohttp/a;

    invoke-direct {v0}, Lcom/jodo/paysdk/http/jodohttp/a;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "param"

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/jodohttp/a;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "seq"

    iget-wide v2, p0, Lcom/jodo/paysdk/http/jodohttp/b;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/jodo/paysdk/http/jodohttp/b;->b:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
