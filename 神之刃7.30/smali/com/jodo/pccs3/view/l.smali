.class final Lcom/jodo/pccs3/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/pccs3/a/b;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/e;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/l;->a:Lcom/jodo/pccs3/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/l;->a:Lcom/jodo/pccs3/view/e;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/l;->a:Lcom/jodo/pccs3/view/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jodo/pccs3/view/e;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/pccs3/view/e;->c:Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/l;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->i(Lcom/jodo/pccs3/view/e;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/l;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->k(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/jodo/pccs3/view/m;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/m;-><init>(Lcom/jodo/pccs3/view/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/l;->a:Lcom/jodo/pccs3/view/e;

    invoke-static {v0}, Lcom/jodo/pccs3/view/e;->l(Lcom/jodo/pccs3/view/e;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/jodo/pccs3/view/n;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/n;-><init>(Lcom/jodo/pccs3/view/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
