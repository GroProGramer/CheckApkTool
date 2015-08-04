.class public Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;
.super Lcom/avos/avoscloud/im/v2/MessageHandler;
.source "AVIMTypedMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
        ">",
        "Lcom/avos/avoscloud/im/v2/MessageHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;, "Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/MessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p2, "x1"    # Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .param p3, "x2"    # Lcom/avos/avoscloud/im/v2/AVIMClient;

    .prologue
    .line 6
    .local p0, "this":Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;, "Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler<TT;>;"
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;

    .end local p1    # "x0":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-void
.end method

.method public onMessage(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .param p2, "conversation"    # Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .param p3, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;, "Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler<TT;>;"
    .local p1, "message":Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;, "TT;"
    return-void
.end method

.method public bridge synthetic onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p2, "x1"    # Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .param p3, "x2"    # Lcom/avos/avoscloud/im/v2/AVIMClient;

    .prologue
    .line 6
    .local p0, "this":Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;, "Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler<TT;>;"
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;

    .end local p1    # "x0":Lcom/avos/avoscloud/im/v2/AVIMMessage;
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;->onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-void
.end method

.method public onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .param p2, "conversation"    # Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .param p3, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;, "Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler<TT;>;"
    .local p1, "message":Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;, "TT;"
    return-void
.end method
