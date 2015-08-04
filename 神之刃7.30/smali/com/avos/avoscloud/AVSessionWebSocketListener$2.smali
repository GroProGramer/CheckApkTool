.class Lcom/avos/avoscloud/AVSessionWebSocketListener$2;
.super Ljava/lang/Object;
.source "AVSessionWebSocketListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSessionWebSocketListener;->onWebSocketOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

.field final synthetic val$callback:Lcom/avos/avoscloud/SignatureCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSessionWebSocketListener;Lcom/avos/avoscloud/SignatureCallback;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iput-object p2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;->val$callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;->val$callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    return-void
.end method
