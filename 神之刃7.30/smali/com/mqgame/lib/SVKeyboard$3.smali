.class Lcom/mqgame/lib/SVKeyboard$3;
.super Ljava/lang/Object;
.source "SNativeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SVKeyboard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqgame/lib/SVKeyboard;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SVKeyboard;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/mqgame/lib/SVKeyboard$3;->this$0:Lcom/mqgame/lib/SVKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mqgame/lib/SVKeyboard$3;->this$0:Lcom/mqgame/lib/SVKeyboard;

    invoke-virtual {v0}, Lcom/mqgame/lib/SVKeyboard;->triggerDone()V

    .line 460
    return-void
.end method
