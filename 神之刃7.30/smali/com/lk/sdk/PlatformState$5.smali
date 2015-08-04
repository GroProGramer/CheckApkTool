.class Lcom/lk/sdk/PlatformState$5;
.super Ljava/lang/Object;
.source "PlatformState.java"

# interfaces
.implements Lcom/jodo/paysdk/interfaces/QuitGameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/PlatformState;->deInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lk/sdk/PlatformState;


# direct methods
.method constructor <init>(Lcom/lk/sdk/PlatformState;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/PlatformState$5;->this$0:Lcom/lk/sdk/PlatformState;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnQuit()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lk/sdk/PlatformState$5;->this$0:Lcom/lk/sdk/PlatformState;

    invoke-virtual {v0}, Lcom/lk/sdk/PlatformState;->onLeavePlatform()V

    .line 228
    return-void
.end method
