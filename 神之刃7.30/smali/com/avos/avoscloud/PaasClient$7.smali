.class Lcom/avos/avoscloud/PaasClient$7;
.super Lcom/avos/avoscloud/DNSRetryCallback;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PaasClient;

.field final synthetic val$_internalId:Ljava/lang/String;

.field final synthetic val$header:Ljava/util/Map;

.field final synthetic val$isEventually:Z

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/util/List;ZZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$7;->this$0:Lcom/avos/avoscloud/PaasClient;

    iput-object p4, p0, Lcom/avos/avoscloud/PaasClient$7;->val$list:Ljava/util/List;

    iput-boolean p5, p0, Lcom/avos/avoscloud/PaasClient$7;->val$sync:Z

    iput-boolean p6, p0, Lcom/avos/avoscloud/PaasClient$7;->val$isEventually:Z

    iput-object p7, p0, Lcom/avos/avoscloud/PaasClient$7;->val$header:Ljava/util/Map;

    iput-object p8, p0, Lcom/avos/avoscloud/PaasClient$7;->val$objectId:Ljava/lang/String;

    iput-object p9, p0, Lcom/avos/avoscloud/PaasClient$7;->val$_internalId:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/avos/avoscloud/DNSRetryCallback;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method


# virtual methods
.method public executeRequest()V
    .locals 9

    .prologue
    .line 583
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$7;->this$0:Lcom/avos/avoscloud/PaasClient;

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$7;->val$list:Ljava/util/List;

    iget-boolean v2, p0, Lcom/avos/avoscloud/PaasClient$7;->val$sync:Z

    iget-boolean v3, p0, Lcom/avos/avoscloud/PaasClient$7;->val$isEventually:Z

    iget-object v4, p0, Lcom/avos/avoscloud/PaasClient$7;->val$header:Ljava/util/Map;

    iget-object v5, p0, Lcom/avos/avoscloud/PaasClient$7;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iget-object v6, p0, Lcom/avos/avoscloud/PaasClient$7;->val$objectId:Ljava/lang/String;

    iget-object v7, p0, Lcom/avos/avoscloud/PaasClient$7;->val$_internalId:Ljava/lang/String;

    const/4 v8, 0x0

    # invokes: Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v8}, Lcom/avos/avoscloud/PaasClient;->access$200(Lcom/avos/avoscloud/PaasClient;Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 585
    return-void
.end method
