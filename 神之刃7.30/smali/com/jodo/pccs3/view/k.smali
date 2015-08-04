.class final Lcom/jodo/pccs3/view/k;
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
.field final synthetic a:Lcom/jodo/pccs3/view/j;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/j;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/k;->a:Lcom/jodo/pccs3/view/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/jodo/pccs3/message/f;)V
    .locals 2

    check-cast p1, Lcom/jodo/pccs3/message/e;

    iget-object v0, p0, Lcom/jodo/pccs3/view/k;->a:Lcom/jodo/pccs3/view/j;

    iget-object v0, v0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/k;->a:Lcom/jodo/pccs3/view/j;

    iget-object v0, v0, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "jodoplay_service_failed"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/k;->a:Lcom/jodo/pccs3/view/j;

    iget-object v1, v1, Lcom/jodo/pccs3/view/j;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1}, Lcom/jodo/pccs3/message/e;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/c;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->b()V

    return-void
.end method

.method public final bridge synthetic a(Lcom/jodo/pccs3/message/f;Z)V
    .locals 0

    return-void
.end method

.method public final synthetic b(Lcom/jodo/pccs3/message/f;)V
    .locals 1

    check-cast p1, Lcom/jodo/pccs3/message/e;

    invoke-virtual {p1}, Lcom/jodo/pccs3/message/e;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/c;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->b()V

    return-void
.end method
