.class Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVIMFileMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->upload(Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;->this$0:Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage$1;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;->fulFillFileInfo(Lcom/avos/avoscloud/SaveCallback;)V

    .line 140
    :cond_0
    return-void
.end method
