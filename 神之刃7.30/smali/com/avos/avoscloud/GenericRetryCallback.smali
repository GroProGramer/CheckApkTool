.class abstract Lcom/avos/avoscloud/GenericRetryCallback;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "GenericRetryCallback.java"


# instance fields
.field callback:Lcom/avos/avoscloud/GenericObjectCallback;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/avos/avoscloud/GenericRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    .line 11
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avos/avoscloud/GenericRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/avos/avoscloud/GenericRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/avos/avoscloud/GenericRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/avos/avoscloud/GenericRetryCallback;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 18
    :cond_0
    return-void
.end method
