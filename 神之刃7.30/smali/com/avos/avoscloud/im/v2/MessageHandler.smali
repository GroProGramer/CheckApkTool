.class abstract Lcom/avos/avoscloud/im/v2/MessageHandler;
.super Lcom/avos/avoscloud/AVIMEventHandler;
.source "MessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">",
        "Lcom/avos/avoscloud/AVIMEventHandler;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/avos/avoscloud/im/v2/MessageHandler;, "Lcom/avos/avoscloud/im/v2/MessageHandler<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation
.end method

.method protected final processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "operation"    # I
    .param p2, "operator"    # Ljava/lang/Object;
    .param p3, "operand"    # Ljava/lang/Object;
    .param p4, "eventScene"    # Ljava/lang/Object;

    .prologue
    .line 15
    .local p0, "this":Lcom/avos/avoscloud/im/v2/MessageHandler;, "Lcom/avos/avoscloud/im/v2/MessageHandler<TT;>;"
    move-object v0, p4

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 16
    .local v0, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    packed-switch p1, :pswitch_data_0

    .line 24
    .end local p3    # "operand":Ljava/lang/Object;
    :goto_0
    return-void

    .line 18
    .restart local p3    # "operand":Ljava/lang/Object;
    :pswitch_0
    check-cast p3, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .end local p3    # "operand":Ljava/lang/Object;
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p3, v0, v1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    .line 21
    .restart local p3    # "operand":Ljava/lang/Object;
    :pswitch_1
    check-cast p3, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .end local p3    # "operand":Ljava/lang/Object;
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p3, v0, v1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0xc350
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
