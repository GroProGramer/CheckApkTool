.class public final Lcom/jodo/paysdk/http/jodohttp/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jodo/paysdk/http/jodohttp/a;",
            ">;"
        }
    .end annotation
.end field

.field private static f:J


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/jodo/paysdk/http/k;

.field private c:Lcom/jodo/paysdk/http/jodohttp/c;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/http/jodohttp/a;->e:Ljava/util/Map;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jodo/paysdk/http/jodohttp/a;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/a;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jodo/paysdk/http/jodohttp/a;->d:I

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/jodo/paysdk/http/jodohttp/a;
    .locals 2

    const-string v0, "SEQ"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jodo/paysdk/http/jodohttp/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/http/jodohttp/a;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-wide v2, Lcom/jodo/paysdk/http/jodohttp/a;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/jodo/paysdk/http/jodohttp/a;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    sget-object v3, Lcom/jodo/paysdk/http/jodohttp/a;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/jodo/paysdk/http/jodohttp/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/http/jodohttp/a;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "SEQ"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/jodo/paysdk/http/k;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/a;->b:Lcom/jodo/paysdk/http/k;

    return-object v0
.end method

.method protected final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/jodo/paysdk/http/jodohttp/a;

    invoke-direct {v0}, Lcom/jodo/paysdk/http/jodohttp/a;-><init>()V

    iget-object v1, p0, Lcom/jodo/paysdk/http/jodohttp/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/jodo/paysdk/http/jodohttp/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/jodo/paysdk/http/jodohttp/a;->d:I

    iput v1, v0, Lcom/jodo/paysdk/http/jodohttp/a;->d:I

    iget-object v1, p0, Lcom/jodo/paysdk/http/jodohttp/a;->b:Lcom/jodo/paysdk/http/k;

    iput-object v1, v0, Lcom/jodo/paysdk/http/jodohttp/a;->b:Lcom/jodo/paysdk/http/k;

    iget-object v1, p0, Lcom/jodo/paysdk/http/jodohttp/a;->c:Lcom/jodo/paysdk/http/jodohttp/c;

    iput-object v1, v0, Lcom/jodo/paysdk/http/jodohttp/a;->c:Lcom/jodo/paysdk/http/jodohttp/c;

    return-object v0
.end method

.method public final d()Lcom/jodo/paysdk/http/jodohttp/c;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/a;->c:Lcom/jodo/paysdk/http/jodohttp/c;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/http/jodohttp/a;->d:I

    return v0
.end method
