.class public final Lcom/jodo/pccs3/e/i;
.super Lcom/jodo/pccs3/e/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/e/i;->a:Ljava/lang/String;

    return-void
.end method

.method protected final b()V
    .locals 2

    const-string v0, "problem_type"

    iget-object v1, p0, Lcom/jodo/pccs3/e/i;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "installation_id"

    iget-object v1, p0, Lcom/jodo/pccs3/e/i;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "problem_desc"

    iget-object v1, p0, Lcom/jodo/pccs3/e/i;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nick_name"

    iget-object v1, p0, Lcom/jodo/pccs3/e/i;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "role_name"

    iget-object v1, p0, Lcom/jodo/pccs3/e/i;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/e/i;->b:Ljava/lang/String;

    return-void
.end method

.method final c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/e/i;->c:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/e/i;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/jodo/pccs3/e/i;->d:Ljava/lang/String;

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
