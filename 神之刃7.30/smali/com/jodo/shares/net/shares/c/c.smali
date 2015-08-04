.class final Lcom/jodo/shares/net/shares/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jodo/shares/net/shares/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jodo/shares/net/shares/c/b;


# direct methods
.method constructor <init>(Lcom/jodo/shares/net/shares/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/shares/net/shares/c/c;->a:Lcom/jodo/shares/net/shares/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/jodo/shares/net/shares/b/a;Lcom/jodo/shares/net/shares/b/a;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/b/a;->i()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jodo/shares/net/shares/b/a;->i()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/b/a;->i()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jodo/shares/net/shares/b/a;->i()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/jodo/shares/net/shares/b/a;

    check-cast p2, Lcom/jodo/shares/net/shares/b/a;

    invoke-static {p1, p2}, Lcom/jodo/shares/net/shares/c/c;->a(Lcom/jodo/shares/net/shares/b/a;Lcom/jodo/shares/net/shares/b/a;)I

    move-result v0

    return v0
.end method
