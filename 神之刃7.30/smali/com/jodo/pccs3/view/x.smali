.class final Lcom/jodo/pccs3/view/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/w;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/w;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/x;->a:Lcom/jodo/pccs3/view/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/x;->a:Lcom/jodo/pccs3/view/w;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;)V

    return-void
.end method
