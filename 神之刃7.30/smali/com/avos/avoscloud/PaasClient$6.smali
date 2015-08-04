.class Lcom/avos/avoscloud/PaasClient$6;
.super Lcom/avos/avoscloud/DNSRetryCallback;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
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

.field final synthetic val$object:Ljava/lang/String;

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$relativePath:Ljava/lang/String;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Lcom/avos/avoscloud/GenericObjectCallback;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$6;->this$0:Lcom/avos/avoscloud/PaasClient;

    iput-object p4, p0, Lcom/avos/avoscloud/PaasClient$6;->val$relativePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/avos/avoscloud/PaasClient$6;->val$object:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/avos/avoscloud/PaasClient$6;->val$sync:Z

    iput-boolean p7, p0, Lcom/avos/avoscloud/PaasClient$6;->val$isEventually:Z

    iput-object p8, p0, Lcom/avos/avoscloud/PaasClient$6;->val$header:Ljava/util/Map;

    iput-object p9, p0, Lcom/avos/avoscloud/PaasClient$6;->val$objectId:Ljava/lang/String;

    iput-object p10, p0, Lcom/avos/avoscloud/PaasClient$6;->val$_internalId:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/avos/avoscloud/DNSRetryCallback;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    return-void
.end method


# virtual methods
.method public executeRequest()V
    .locals 10

    .prologue
    .line 477
    iget-object v0, p0, Lcom/avos/avoscloud/PaasClient$6;->this$0:Lcom/avos/avoscloud/PaasClient;

    iget-object v1, p0, Lcom/avos/avoscloud/PaasClient$6;->val$relativePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/PaasClient$6;->val$object:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/avos/avoscloud/PaasClient$6;->val$sync:Z

    iget-boolean v4, p0, Lcom/avos/avoscloud/PaasClient$6;->val$isEventually:Z

    iget-object v5, p0, Lcom/avos/avoscloud/PaasClient$6;->val$header:Ljava/util/Map;

    iget-object v6, p0, Lcom/avos/avoscloud/PaasClient$6;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iget-object v7, p0, Lcom/avos/avoscloud/PaasClient$6;->val$objectId:Ljava/lang/String;

    iget-object v8, p0, Lcom/avos/avoscloud/PaasClient$6;->val$_internalId:Ljava/lang/String;

    const/4 v9, 0x0

    # invokes: Lcom/avos/avoscloud/PaasClient;->putObject(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v9}, Lcom/avos/avoscloud/PaasClient;->access$100(Lcom/avos/avoscloud/PaasClient;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 479
    return-void
.end method
