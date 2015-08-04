.class final Lcom/jodo/paysdk/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/JodoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/u;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/u;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/u;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    # getter for: Lcom/jodo/paysdk/JodoLoginActivity;->getxxHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->access$000(Lcom/jodo/paysdk/JodoLoginActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/g;->a(Landroid/content/Context;Landroid/os/Handler;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
