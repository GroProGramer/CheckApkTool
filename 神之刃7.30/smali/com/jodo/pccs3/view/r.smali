.class final Lcom/jodo/pccs3/view/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/e;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/r;->a:Lcom/jodo/pccs3/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/jodo/pccs3/view/r;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/r;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/jodo/pccs3/view/s;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/s;-><init>(Lcom/jodo/pccs3/view/r;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
