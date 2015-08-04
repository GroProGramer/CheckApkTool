.class public Lcom/jodo/pccs3/e/d;
.super Lcom/jodo/pccs3/e/b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/pccs3/e/d;->k()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "text"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/e/d;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/e/d;->a:Ljava/lang/String;

    return-void
.end method

.method protected final b()V
    .locals 2

    const-string v0, "text"

    iget-object v1, p0, Lcom/jodo/pccs3/e/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/e/d;->a:Ljava/lang/String;

    return-object v0
.end method
