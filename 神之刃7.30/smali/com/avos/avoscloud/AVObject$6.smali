.class final Lcom/avos/avoscloud/AVObject$6;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->fetchAllIfNeededInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/FindCallback;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$6;->val$result:Ljava/util/List;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$6;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "total"    # I
    .param p3, "object"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 716
    if-eqz p3, :cond_0

    .line 717
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$6;->val$result:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_0
    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$6;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$6;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$6;->val$result:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 722
    :cond_1
    return-void
.end method
