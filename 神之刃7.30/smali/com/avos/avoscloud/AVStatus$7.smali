.class final Lcom/avos/avoscloud/AVStatus$7;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$status:Lcom/avos/avoscloud/AVStatus;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$7;->val$status:Lcom/avos/avoscloud/AVStatus;

    iput-object p2, p0, Lcom/avos/avoscloud/AVStatus$7;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$7;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$7;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 696
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$7;->val$status:Lcom/avos/avoscloud/AVStatus;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVStatus;->processStatus(Ljava/lang/String;Lcom/avos/avoscloud/AVStatus;)V

    .line 686
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$7;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$7;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 689
    :cond_0
    return-void
.end method
