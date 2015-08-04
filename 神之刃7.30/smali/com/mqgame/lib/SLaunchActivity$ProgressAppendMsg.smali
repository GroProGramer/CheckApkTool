.class Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;
.super Ljava/lang/Object;
.source "SLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mqgame/lib/SLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressAppendMsg"
.end annotation


# instance fields
.field public appendtxt:Ljava/lang/String;

.field public progressinterval:I

.field final synthetic this$0:Lcom/mqgame/lib/SLaunchActivity;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SLaunchActivity;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method
