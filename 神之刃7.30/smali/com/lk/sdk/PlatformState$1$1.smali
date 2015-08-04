.class Lcom/lk/sdk/PlatformState$1$1;
.super Ljava/lang/Object;
.source "PlatformState.java"

# interfaces
.implements Lcom/jodo/paysdk/interfaces/InitCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/PlatformState$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lk/sdk/PlatformState$1;


# direct methods
.method constructor <init>(Lcom/lk/sdk/PlatformState$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/PlatformState$1$1;->this$1:Lcom/lk/sdk/PlatformState$1;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSdkInitFinished(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "LK_Platform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSdkInitFinished,code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    packed-switch p1, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 63
    :pswitch_0
    invoke-static {}, Lcom/lk/sdk/PlatformState;->getInstance()Lcom/lk/sdk/PlatformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->onInitFinish()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
