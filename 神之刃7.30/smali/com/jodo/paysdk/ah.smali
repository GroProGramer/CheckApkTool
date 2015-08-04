.class final Lcom/jodo/paysdk/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/ah;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/ah;->b:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/ah;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/ah;->b:Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showLoginView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    return-void
.end method
