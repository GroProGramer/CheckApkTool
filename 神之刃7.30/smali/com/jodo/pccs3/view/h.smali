.class final Lcom/jodo/pccs3/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/g;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/g;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/h;->a:Lcom/jodo/pccs3/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/h;->a:Lcom/jodo/pccs3/view/g;

    iget-object v0, v0, Lcom/jodo/pccs3/view/g;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/h;->a:Lcom/jodo/pccs3/view/g;

    iget-object v0, v0, Lcom/jodo/pccs3/view/g;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/h;->a:Lcom/jodo/pccs3/view/g;

    iget-object v1, v1, Lcom/jodo/pccs3/view/g;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v1}, Lcom/jodo/pccs3/view/e;->a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
