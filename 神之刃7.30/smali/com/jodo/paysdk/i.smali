.class final Lcom/jodo/paysdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/JodoAutoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/i;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/i;->a:Lcom/jodo/paysdk/JodoAutoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
