.class Lcom/avos/avoscloud/im/v2/AVIMClient$4;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->close(Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V
    .locals 0
    .param p2, "x0"    # Lcom/avos/avoscloud/AVCallback;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$4;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 297
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$4;->callback:Lcom/avos/avoscloud/AVCallback;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$4;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 298
    if-nez p2, :cond_0

    .line 299
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$4;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$4;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 302
    :cond_0
    return-void

    .line 297
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
