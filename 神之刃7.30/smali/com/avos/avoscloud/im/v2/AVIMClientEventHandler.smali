.class public abstract Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;
.super Lcom/avos/avoscloud/AVIMEventHandler;
.source "AVIMClientEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onConnectionPaused(Lcom/avos/avoscloud/im/v2/AVIMClient;)V
.end method

.method public abstract onConnectionResume(Lcom/avos/avoscloud/im/v2/AVIMClient;)V
.end method

.method protected final processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "operation"    # I
    .param p2, "operator"    # Ljava/lang/Object;
    .param p3, "operand"    # Ljava/lang/Object;
    .param p4, "eventScene"    # Ljava/lang/Object;

    .prologue
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 45
    .end local p4    # "eventScene":Ljava/lang/Object;
    :goto_0
    return-void

    .line 37
    .restart local p4    # "eventScene":Ljava/lang/Object;
    :pswitch_0
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .end local p4    # "eventScene":Ljava/lang/Object;
    invoke-virtual {p0, p4}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->onConnectionResume(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    .line 40
    .restart local p4    # "eventScene":Ljava/lang/Object;
    :pswitch_1
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .end local p4    # "eventScene":Ljava/lang/Object;
    invoke-virtual {p0, p4}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->onConnectionPaused(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0xc356
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
