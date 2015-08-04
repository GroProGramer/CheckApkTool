.class Lcom/lk/sdk/PlatformState$4$1;
.super Ljava/lang/Object;
.source "PlatformState.java"

# interfaces
.implements Lcom/jodo/paysdk/interfaces/OrderCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/PlatformState$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lk/sdk/PlatformState$4;


# direct methods
.method constructor <init>(Lcom/lk/sdk/PlatformState$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/PlatformState$4$1;->this$1:Lcom/lk/sdk/PlatformState$4;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderCallback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "cporderid"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v0, "LK_Platform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOrderCallback,cporderid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";statusCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    packed-switch p2, :pswitch_data_0

    .line 214
    :goto_0
    :pswitch_0
    return-void

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$4$1;->this$1:Lcom/lk/sdk/PlatformState$4;

    # getter for: Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;
    invoke-static {v0}, Lcom/lk/sdk/PlatformState$4;->access$0(Lcom/lk/sdk/PlatformState$4;)Lcom/lk/sdk/PlatformState;

    move-result-object v0

    sget-object v1, Lcom/lk/sdk/BasePlatformState$PAY_STATUS;->SUCCESS:Lcom/lk/sdk/BasePlatformState$PAY_STATUS;

    invoke-virtual {v0, v1}, Lcom/lk/sdk/PlatformState;->onPayFinish(Lcom/lk/sdk/BasePlatformState$PAY_STATUS;)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$4$1;->this$1:Lcom/lk/sdk/PlatformState$4;

    # getter for: Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;
    invoke-static {v0}, Lcom/lk/sdk/PlatformState$4;->access$0(Lcom/lk/sdk/PlatformState$4;)Lcom/lk/sdk/PlatformState;

    move-result-object v0

    sget-object v1, Lcom/lk/sdk/BasePlatformState$PAY_STATUS;->FAILED:Lcom/lk/sdk/BasePlatformState$PAY_STATUS;

    invoke-virtual {v0, v1}, Lcom/lk/sdk/PlatformState;->onPayFinish(Lcom/lk/sdk/BasePlatformState$PAY_STATUS;)V

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$4$1;->this$1:Lcom/lk/sdk/PlatformState$4;

    # getter for: Lcom/lk/sdk/PlatformState$4;->this$0:Lcom/lk/sdk/PlatformState;
    invoke-static {v0}, Lcom/lk/sdk/PlatformState$4;->access$0(Lcom/lk/sdk/PlatformState$4;)Lcom/lk/sdk/PlatformState;

    move-result-object v0

    sget-object v1, Lcom/lk/sdk/BasePlatformState$PAY_STATUS;->FAILED:Lcom/lk/sdk/BasePlatformState$PAY_STATUS;

    invoke-virtual {v0, v1}, Lcom/lk/sdk/PlatformState;->onPayFinish(Lcom/lk/sdk/BasePlatformState$PAY_STATUS;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
