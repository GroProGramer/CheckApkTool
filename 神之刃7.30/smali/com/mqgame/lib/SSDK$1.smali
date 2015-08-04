.class final Lcom/mqgame/lib/SSDK$1;
.super Ljava/lang/Object;
.source "SSDK.java"

# interfaces
.implements Lcom/lk/sdk/BasePluginInterface$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SSDK;->init(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "OnSdkEvent.SdkInitFinish()"

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->excFromUIThread(Ljava/lang/String;)V

    .line 117
    return-void
.end method
