.class Lcom/avos/avoscloud/PaasClient$9;
.super Lcom/avos/avoscloud/DNSRetryCallback;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PaasClient;

.field final synthetic val$_internalId:Ljava/lang/String;

.field final synthetic val$isEventually:Z

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$relativePath:Ljava/lang/String;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$9;->this$0:Lcom/avos/avoscloud/PaasClient;

    iput-object p4, p0, Lcom/avos/avoscloud/PaasClient$9;->val$relativePath:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/avos/avoscloud/PaasClient$9;->val$sync:Z

    iput-boolean p6, p0, Lcom/avos/avoscloud/PaasClient$9;->val$isEventually:Z

    iput-object p7, p0, Lcom/avos/avoscloud/PaasClient$9;->val$objectId:Ljava/lang/String;

    iput-object p8, p0, Lcom/avos/avoscloud/PaasClient$9;->val$_internalId:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/avos/avoscloud/DNSRetryCallback;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method


# virtual methods
.method public executeRequest()V
    .locals 8

    .prologue
    .line 676
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$9;->this$0:Lcom/avos/avoscloud/PaasClient;

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$9;->val$relativePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/avos/avoscloud/PaasClient$9;->val$sync:Z

    iget-boolean v3, p0, Lcom/avos/avoscloud/PaasClient$9;->val$isEventually:Z

    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$9;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iget-object v5, p0, Lcom/avos/avoscloud/PaasClient$9;->val$objectId:Ljava/lang/String;

    iget-object v6, p0, Lcom/avos/avoscloud/PaasClient$9;->val$_internalId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/avos/avoscloud/PaasClient;->deleteObject(Ljava/lang/String;ZZLcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 677
    return-void
.end method
