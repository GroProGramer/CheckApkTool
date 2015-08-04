.class final Lcom/jodo/pccs3/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/AbsListView;

.field final synthetic b:I

.field final synthetic c:Lcom/jodo/pccs3/view/e;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/e;Landroid/widget/AbsListView;I)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/o;->c:Lcom/jodo/pccs3/view/e;

    iput-object p2, p0, Lcom/jodo/pccs3/view/o;->a:Landroid/widget/AbsListView;

    iput p3, p0, Lcom/jodo/pccs3/view/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/o;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestFocusFromTouch()Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/o;->a:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcom/jodo/pccs3/view/o;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
