.class final Lcom/jodo/pccs3/view/g;
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
.field final synthetic a:Lcom/jodo/pccs3/view/e;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/g;->a:Lcom/jodo/pccs3/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/jodo/pccs3/message/f;)V
    .locals 2

    check-cast p1, Lcom/jodo/pccs3/message/b;

    iget-object v0, p0, Lcom/jodo/pccs3/view/g;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "jodoplay_service_failed"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/g;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v1}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/jodo/pccs3/message/b;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/c;->b()V

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/jodo/pccs3/message/f;Z)V
    .locals 4

    check-cast p1, Lcom/jodo/pccs3/message/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jodo/pccs3/view/g;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v1}, Lcom/jodo/pccs3/view/e;->b(Lcom/jodo/pccs3/view/e;)Lcom/jodo/pccs3/view/v;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/jodo/pccs3/view/v;->a(Ljava/util/List;Z)J

    iget-object v0, p0, Lcom/jodo/pccs3/view/g;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/jodo/pccs3/view/h;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/h;-><init>(Lcom/jodo/pccs3/view/g;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

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
