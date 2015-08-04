.class final Lcom/jodo/pccs3/view/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/pccs3/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jodo/pccs3/a/g",
        "<",
        "Lcom/jodo/pccs3/message/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/ay;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/ba;->a:Lcom/jodo/pccs3/view/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/jodo/pccs3/message/f;)V
    .locals 1

    check-cast p1, Lcom/jodo/pccs3/message/b;

    invoke-virtual {p1}, Lcom/jodo/pccs3/message/b;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->b()V

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/jodo/pccs3/message/f;Z)V
    .locals 1

    check-cast p1, Lcom/jodo/pccs3/message/b;

    invoke-virtual {p1}, Lcom/jodo/pccs3/message/b;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/c;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->b()V

    return-void
.end method

.method public final synthetic b(Lcom/jodo/pccs3/message/f;)V
    .locals 1

    check-cast p1, Lcom/jodo/pccs3/message/b;

    invoke-virtual {p1}, Lcom/jodo/pccs3/message/b;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/c;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->b()V

    return-void
.end method
