.class Lcom/avos/avoscloud/AVObject$20;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$isEventually:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/SaveCallback;ZZ)V
    .locals 0

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    iput-boolean p3, p0, Lcom/avos/avoscloud/AVObject$20;->val$sync:Z

    iput-boolean p4, p0, Lcom/avos/avoscloud/AVObject$20;->val$isEventually:Z

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1853
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    # setter for: Lcom/avos/avoscloud/AVObject;->running:Z
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$502(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1854
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVObject;->shouldThrowException(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1856
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1862
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->onSaveFailure()V

    .line 1863
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject$20;->val$sync:Z

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject$20;->val$isEventually:Z

    # invokes: Lcom/avos/avoscloud/AVObject;->saveObjectToAVOSCloud(ZZLcom/avos/avoscloud/SaveCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVObject;->access$600(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1864
    return-void

    .line 1858
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, v3}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->copyFromJson(Ljava/lang/String;)V

    .line 1844
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x0

    # setter for: Lcom/avos/avoscloud/AVObject;->running:Z
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$502(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1845
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->onSaveSuccess()V

    .line 1846
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$20;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1849
    :cond_0
    return-void
.end method
