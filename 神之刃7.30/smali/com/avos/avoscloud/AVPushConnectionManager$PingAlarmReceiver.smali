.class Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVPushConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVPushConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingAlarmReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVPushConnectionManager;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$PingAlarmReceiver;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    # invokes: Lcom/avos/avoscloud/AVPushConnectionManager;->sendPing()V
    invoke-static {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->access$500(Lcom/avos/avoscloud/AVPushConnectionManager;)V

    .line 726
    return-void
.end method
