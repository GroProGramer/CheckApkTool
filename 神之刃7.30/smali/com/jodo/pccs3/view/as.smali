.class final Lcom/jodo/pccs3/view/as;
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
.field final synthetic a:Lcom/jodo/pccs3/view/ar;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/as;->a:Lcom/jodo/pccs3/view/ar;

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

    const/4 v4, 0x1

    check-cast p1, Lcom/jodo/pccs3/message/e;

    new-instance v0, Lcom/jodo/pccs3/e/d;

    invoke-direct {v0}, Lcom/jodo/pccs3/e/d;-><init>()V

    iget-object v1, p0, Lcom/jodo/pccs3/view/as;->a:Lcom/jodo/pccs3/view/ar;

    iget-object v1, v1, Lcom/jodo/pccs3/view/ar;->b:Lcom/jodo/pccs3/view/aq;

    iget-object v1, v1, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    const-string v2, "jodoplay_service_no_resovled_tips"

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/e/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jodo/pccs3/e/d;->j()Lcom/jodo/pccs3/message/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/message/e;->a(Z)V

    invoke-virtual {v0, v4}, Lcom/jodo/pccs3/message/e;->c(I)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/pccs3/view/as;->a:Lcom/jodo/pccs3/view/ar;

    iget-object v2, v2, Lcom/jodo/pccs3/view/ar;->b:Lcom/jodo/pccs3/view/aq;

    iget-object v2, v2, Lcom/jodo/pccs3/view/aq;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/jodo/pccs3/message/e;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/a;Ljava/lang/String;Z)J

    return-void
.end method
