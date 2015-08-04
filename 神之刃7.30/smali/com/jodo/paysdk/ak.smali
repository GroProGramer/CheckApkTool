.class final Lcom/jodo/paysdk/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/jodo/paysdk/interfaces/QuitGameCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/ak;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/jodo/paysdk/ak;->b:Lcom/jodo/paysdk/interfaces/QuitGameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/ak;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/jodo/paysdk/ak;->b:Lcom/jodo/paysdk/interfaces/QuitGameCallback;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showQuitGameView(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V

    return-void
.end method
