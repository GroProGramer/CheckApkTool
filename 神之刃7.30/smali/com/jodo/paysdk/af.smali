.class final Lcom/jodo/paysdk/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/jodo/paysdk/config/c;

.field final synthetic c:Lcom/jodo/paysdk/interfaces/InitCallbackListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/jodo/paysdk/config/c;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/af;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/jodo/paysdk/af;->b:Lcom/jodo/paysdk/config/c;

    iput-object p3, p0, Lcom/jodo/paysdk/af;->c:Lcom/jodo/paysdk/interfaces/InitCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/af;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/jodo/paysdk/af;->b:Lcom/jodo/paysdk/config/c;

    iget-object v2, p0, Lcom/jodo/paysdk/af;->c:Lcom/jodo/paysdk/interfaces/InitCallbackListener;

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/JodoPlaySDKManager;->initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/config/c;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V

    return-void
.end method
