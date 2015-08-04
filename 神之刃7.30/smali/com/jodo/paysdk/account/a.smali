.class final Lcom/jodo/paysdk/account/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jodo/paysdk/account/JodoAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/account/JodoAccountManager;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/account/JodoAccountManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/account/a;->a:Lcom/jodo/paysdk/account/JodoAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/jodo/paysdk/account/JodoAccount;Lcom/jodo/paysdk/account/JodoAccount;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getLastLoginTime_ms()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getLastLoginTime_ms()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/jodo/paysdk/account/JodoAccount;->getLastLoginTime_ms()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jodo/paysdk/account/JodoAccount;->getLastLoginTime_ms()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/jodo/paysdk/account/JodoAccount;

    check-cast p2, Lcom/jodo/paysdk/account/JodoAccount;

    invoke-static {p1, p2}, Lcom/jodo/paysdk/account/a;->a(Lcom/jodo/paysdk/account/JodoAccount;Lcom/jodo/paysdk/account/JodoAccount;)I

    move-result v0

    return v0
.end method
