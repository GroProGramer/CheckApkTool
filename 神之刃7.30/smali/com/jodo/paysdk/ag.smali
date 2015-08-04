.class final Lcom/jodo/paysdk/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jodo/paysdk/model/JodoPayInfo;

.field final synthetic c:Lcom/jodo/paysdk/interfaces/OrderCallbackListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/ag;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/ag;->b:Lcom/jodo/paysdk/model/JodoPayInfo;

    iput-object p3, p0, Lcom/jodo/paysdk/ag;->c:Lcom/jodo/paysdk/interfaces/OrderCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/ag;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/ag;->b:Lcom/jodo/paysdk/model/JodoPayInfo;

    iget-object v2, p0, Lcom/jodo/paysdk/ag;->c:Lcom/jodo/paysdk/interfaces/OrderCallbackListener;

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showPayView(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V

    return-void
.end method
