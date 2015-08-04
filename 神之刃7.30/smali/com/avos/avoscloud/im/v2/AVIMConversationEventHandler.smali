.class public abstract Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
.super Lcom/avos/avoscloud/AVIMEventHandler;
.source "AVIMConversationEventHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onInvited(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
.end method

.method public abstract onKicked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
.end method

.method public abstract onMemberJoined(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMemberLeft(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
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
    .line 64
    move-object v0, p4

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 65
    .local v0, "conversation":Lcom/avos/avoscloud/im/v2/AVIMConversation;
    packed-switch p1, :pswitch_data_0

    .line 79
    .end local p2    # "operator":Ljava/lang/Object;
    .end local p3    # "operand":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    return-void

    .line 67
    .restart local p2    # "operator":Ljava/lang/Object;
    .restart local p3    # "operand":Ljava/lang/Object;
    :pswitch_1
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    .end local p3    # "operand":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "operator":Ljava/lang/Object;
    invoke-virtual {p0, v1, v0, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberLeft(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .restart local p2    # "operator":Ljava/lang/Object;
    .restart local p3    # "operand":Ljava/lang/Object;
    :pswitch_2
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    .end local p3    # "operand":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "operator":Ljava/lang/Object;
    invoke-virtual {p0, v1, v0, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberJoined(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .restart local p2    # "operator":Ljava/lang/Object;
    .restart local p3    # "operand":Ljava/lang/Object;
    :pswitch_3
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "operator":Ljava/lang/Object;
    invoke-virtual {p0, v1, v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onInvited(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .restart local p2    # "operator":Ljava/lang/Object;
    :pswitch_4
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "operator":Ljava/lang/Object;
    invoke-virtual {p0, v1, v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onKicked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0xc354
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
