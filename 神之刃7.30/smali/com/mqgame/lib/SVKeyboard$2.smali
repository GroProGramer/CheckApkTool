.class Lcom/mqgame/lib/SVKeyboard$2;
.super Ljava/lang/Object;
.source "SNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SVKeyboard;->onStart()V
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
    .line 411
    iput-object p1, p0, Lcom/mqgame/lib/SVKeyboard$2;->this$0:Lcom/mqgame/lib/SVKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 415
    :try_start_0
    iget-object v3, p0, Lcom/mqgame/lib/SVKeyboard$2;->this$0:Lcom/mqgame/lib/SVKeyboard;

    iget-object v3, v3, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    invoke-virtual {v3}, Lcom/mqgame/lib/SFixEditor;->requestFocus()Z

    .line 416
    iget-object v3, p0, Lcom/mqgame/lib/SVKeyboard$2;->this$0:Lcom/mqgame/lib/SVKeyboard;

    iget-object v3, v3, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    invoke-virtual {v3}, Lcom/mqgame/lib/SFixEditor;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 417
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/mqgame/lib/SVKeyboard$2;->this$0:Lcom/mqgame/lib/SVKeyboard;

    iget-object v3, v3, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 418
    iget-object v3, p0, Lcom/mqgame/lib/SVKeyboard$2;->this$0:Lcom/mqgame/lib/SVKeyboard;

    iget-object v3, v3, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mqgame/lib/SFixEditor;->setCursorVisible(Z)V

    .line 420
    const/4 v2, 0x1

    .line 421
    .local v2, "inputtype":I
    sget v3, Lcom/mqgame/lib/SVKeyboard;->curVKMask:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 422
    const/4 v2, 0x2

    .line 423
    :cond_0
    sget v3, Lcom/mqgame/lib/SVKeyboard;->curVKMask:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 425
    :cond_1
    sget v3, Lcom/mqgame/lib/SVKeyboard;->curVKMask:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 426
    or-int/lit16 v2, v2, 0x80

    .line 428
    :cond_2
    iget-object v3, p0, Lcom/mqgame/lib/SVKeyboard$2;->this$0:Lcom/mqgame/lib/SVKeyboard;

    iget-object v3, v3, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    invoke-virtual {v3, v2}, Lcom/mqgame/lib/SFixEditor;->setInputType(I)V

    .line 429
    iget-object v3, p0, Lcom/mqgame/lib/SVKeyboard$2;->this$0:Lcom/mqgame/lib/SVKeyboard;

    invoke-virtual {v3}, Lcom/mqgame/lib/SVKeyboard;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 430
    iget-object v3, p0, Lcom/mqgame/lib/SVKeyboard$2;->this$0:Lcom/mqgame/lib/SVKeyboard;

    iget-object v3, v3, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Lcom/mqgame/lib/SFixEditor;->setImeOptions(I)V

    .line 432
    iget-object v3, p0, Lcom/mqgame/lib/SVKeyboard$2;->this$0:Lcom/mqgame/lib/SVKeyboard;

    iget-object v3, v3, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    sget-object v4, Lcom/mqgame/lib/SVKeyboard;->curVKString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mqgame/lib/SFixEditor;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 440
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "inputtype":I
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method
