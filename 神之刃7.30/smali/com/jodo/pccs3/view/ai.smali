.class final Lcom/jodo/pccs3/view/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/ah;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/ai;->a:Lcom/jodo/pccs3/view/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/ai;->a:Lcom/jodo/pccs3/view/ah;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ah;->c:Landroid/content/Context;

    invoke-static {}, Lcom/jodo/pccs3/view/bd;->a()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    return-void
.end method
