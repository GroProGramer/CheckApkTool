.class Lcom/avos/avoscloud/AVPushConnectionManager$1;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"

# interfaces
.implements Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPushConnectionManager;-><init>(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$installationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iput-object p2, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->val$installationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "serverUrl"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager$1;->val$installationId:Ljava/lang/String;

    # invokes: Lcom/avos/avoscloud/AVPushConnectionManager;->createNewWebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$000(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
