.class public Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;
.super Ljava/lang/Object;
.source "AVIMMessageManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public static processHistoryMessages(Lcom/avos/avoscloud/im/v2/AVIMMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->setupMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 30
    return-void
.end method

.method public static processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .param p0, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p1, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;

    .prologue
    .line 8
    invoke-static {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    .line 9
    return-void
.end method

.method public static processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0
    .param p0, "message"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p1, "client"    # Lcom/avos/avoscloud/im/v2/AVIMClient;

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    .line 13
    return-void
.end method

.method public static setupMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 25
    return-void
.end method
