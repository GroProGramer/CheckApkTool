.class public Lcom/jodo/pccs3/e/h;
.super Lcom/jodo/pccs3/e/b;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/pccs3/e/h;->k()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jodo/pccs3/e/h;->a:I

    return-void
.end method

.method protected final b()V
    .locals 0

    return-void
.end method

.method final c()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/e/h;->a:I

    return v0
.end method
