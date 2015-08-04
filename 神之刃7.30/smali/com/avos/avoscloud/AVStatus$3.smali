.class final Lcom/avos/avoscloud/AVStatus$3;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->deleteInboxStatus(ZJLjava/lang/String;Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/DeleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/DeleteCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/DeleteCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/DeleteCallback;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/DeleteCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 327
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/DeleteCallback;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$3;->val$callback:Lcom/avos/avoscloud/DeleteCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 320
    :cond_0
    return-void
.end method
