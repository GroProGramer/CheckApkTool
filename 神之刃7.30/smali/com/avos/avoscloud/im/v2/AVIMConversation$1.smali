.class Lcom/avos/avoscloud/im/v2/AVIMConversation$1;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

.field final synthetic val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

.field final synthetic val$messageFlag:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$messageFlag:I

    iput-object p4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversation;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$message:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$messageFlag:I

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;

    # invokes: Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->access$000(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/AVCallback;)V

    .line 146
    return-void
.end method
