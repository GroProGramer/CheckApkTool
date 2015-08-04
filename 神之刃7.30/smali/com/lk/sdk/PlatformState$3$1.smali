.class Lcom/lk/sdk/PlatformState$3$1;
.super Ljava/lang/Object;
.source "PlatformState.java"

# interfaces
.implements Lcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/PlatformState$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lk/sdk/PlatformState$3;


# direct methods
.method constructor <init>(Lcom/lk/sdk/PlatformState$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/PlatformState$3$1;->this$1:Lcom/lk/sdk/PlatformState$3;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoleLoadedFinished(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "LK_Platform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRoleLoadedFinished,code:"

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

    .line 146
    return-void
.end method
