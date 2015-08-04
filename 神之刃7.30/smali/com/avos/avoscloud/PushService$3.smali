.class Lcom/avos/avoscloud/PushService$3;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/avos/avoscloud/AVPushConnectionManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushService;

.field final synthetic val$installationId:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushService;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$3;->this$0:Lcom/avos/avoscloud/PushService;

    iput-object p2, p0, Lcom/avos/avoscloud/PushService$3;->val$installationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/PushService$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .prologue
    .line 136
    # getter for: Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push server connection initialized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/PushService$3;->val$installationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/avos/avoscloud/PushService$3;->this$0:Lcom/avos/avoscloud/PushService;

    iget-object v1, p0, Lcom/avos/avoscloud/PushService$3;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/avos/avoscloud/PushService;->processIMRequests(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/avos/avoscloud/PushService;->access$200(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;)V

    .line 139
    return-void
.end method
