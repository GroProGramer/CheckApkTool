.class final Lcom/jodo/jpoint/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;


# instance fields
.field final synthetic a:Lcom/jodo/jpoint/JPoint_Splash;


# direct methods
.method constructor <init>(Lcom/jodo/jpoint/JPoint_Splash;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/jpoint/e;->a:Lcom/jodo/jpoint/JPoint_Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHandleUndeliveriedOrders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/paysdk/model/Order;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/jodo/jpoint/f;

    invoke-direct {v0, p0}, Lcom/jodo/jpoint/f;-><init>(Lcom/jodo/jpoint/e;)V

    invoke-virtual {v0}, Lcom/jodo/jpoint/f;->start()V

    return-void
.end method

.method public final onSdkInitFinished(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
