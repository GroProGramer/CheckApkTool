.class Lcom/mqgame/lib/SVKeyboard$4;
.super Ljava/lang/Object;
.source "SNativeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 463
    iput-object p1, p0, Lcom/mqgame/lib/SVKeyboard$4;->this$0:Lcom/mqgame/lib/SVKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/mqgame/lib/SVKeyboard$4;->this$0:Lcom/mqgame/lib/SVKeyboard;

    iget-object v1, v1, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    invoke-virtual {v1}, Lcom/mqgame/lib/SFixEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 466
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/mqgame/lib/SVKeyboard$4;->this$0:Lcom/mqgame/lib/SVKeyboard;

    iget-object v1, v1, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    invoke-virtual {v1}, Lcom/mqgame/lib/SFixEditor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 467
    return-void
.end method
