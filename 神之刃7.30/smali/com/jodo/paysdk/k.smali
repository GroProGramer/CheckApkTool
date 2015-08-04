.class final Lcom/jodo/paysdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/JodoAutoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/k;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/k;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    # invokes: Lcom/jodo/paysdk/JodoAutoLoginActivity;->closeView()V
    invoke-static {v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->access$300(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V

    iget-object v0, p0, Lcom/jodo/paysdk/k;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoSysNoticeActivity;->OnLoginSuccess(Landroid/content/Context;Z)V

    return-void
.end method
