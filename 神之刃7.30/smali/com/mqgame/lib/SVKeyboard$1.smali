.class Lcom/mqgame/lib/SVKeyboard$1;
.super Ljava/lang/Object;
.source "SNativeActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mqgame/lib/SVKeyboard;
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
    .line 366
    iput-object p1, p0, Lcom/mqgame/lib/SVKeyboard$1;->this$0:Lcom/mqgame/lib/SVKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 368
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/mqgame/lib/SVKeyboard$1;->this$0:Lcom/mqgame/lib/SVKeyboard;

    invoke-virtual {v0}, Lcom/mqgame/lib/SVKeyboard;->triggerDone()V

    .line 370
    const/4 v0, 0x1

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
