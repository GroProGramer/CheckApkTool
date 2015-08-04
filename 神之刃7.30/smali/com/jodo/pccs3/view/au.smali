.class final Lcom/jodo/pccs3/view/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/pccs3/a/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jodo/pccs3/a/g",
        "<",
        "Lcom/jodo/pccs3/message/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/at;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/at;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/au;->a:Lcom/jodo/pccs3/view/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/jodo/pccs3/message/f;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic a(Lcom/jodo/pccs3/message/f;Z)V
    .locals 0

    return-void
.end method

.method public final synthetic b(Lcom/jodo/pccs3/message/f;)V
    .locals 5

    check-cast p1, Lcom/jodo/pccs3/message/e;

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/au;->a:Lcom/jodo/pccs3/view/at;

    iget-object v1, v1, Lcom/jodo/pccs3/view/at;->b:Lcom/jodo/pccs3/view/aq;

    iget-object v1, v1, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/a;->d(Landroid/content/Context;)V

    new-instance v0, Lcom/jodo/pccs3/e/g;

    invoke-direct {v0}, Lcom/jodo/pccs3/e/g;-><init>()V

    invoke-virtual {v0}, Lcom/jodo/pccs3/e/g;->j()Lcom/jodo/pccs3/message/e;

    move-result-object v0

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/pccs3/view/au;->a:Lcom/jodo/pccs3/view/at;

    iget-object v2, v2, Lcom/jodo/pccs3/view/at;->b:Lcom/jodo/pccs3/view/aq;

    iget-object v2, v2, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/jodo/pccs3/message/e;->m()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/a;Ljava/lang/String;Z)J

    return-void
.end method
