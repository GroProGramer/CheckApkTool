.class final Lcom/jodo/pccs3/view/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/w;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/w;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/y;->a:Lcom/jodo/pccs3/view/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/pccs3/view/y;->a:Lcom/jodo/pccs3/view/w;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
