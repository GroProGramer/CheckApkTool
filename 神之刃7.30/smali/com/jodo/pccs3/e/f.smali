.class public final Lcom/jodo/pccs3/e/f;
.super Lcom/jodo/pccs3/e/b;


# instance fields
.field private a:Z


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

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jodo/pccs3/e/f;->a:Z

    return-void
.end method

.method protected final b()V
    .locals 2

    const-string v0, "is_solved"

    iget-boolean v1, p0, Lcom/jodo/pccs3/e/f;->a:Z

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/e/f;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method final c()I
    .locals 1

    const/4 v0, 0x4

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

    const/4 v0, 0x0

    return v0
.end method
