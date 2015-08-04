.class public interface abstract Lcom/jodo/paysdk/interfaces/SingleGameInitCallbackListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onHandleUndeliveriedOrders(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/paysdk/model/Order;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSdkInitFinished(ILjava/lang/String;)V
.end method
