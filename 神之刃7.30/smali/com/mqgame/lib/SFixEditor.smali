.class Lcom/mqgame/lib/SFixEditor;
.super Landroid/widget/EditText;
.source "SNativeActivity.java"


# instance fields
.field public parent:Lcom/mqgame/lib/SVKeyboard;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public bind(Lcom/mqgame/lib/SVKeyboard;)V
    .locals 0
    .param p1, "owner"    # Lcom/mqgame/lib/SVKeyboard;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mqgame/lib/SFixEditor;->parent:Lcom/mqgame/lib/SVKeyboard;

    .line 51
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 66
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 67
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 88
    :goto_0
    return v1

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mqgame/lib/SFixEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/mqgame/lib/SFixEditor;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 76
    sget-object v2, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_1
    iget-object v2, p0, Lcom/mqgame/lib/SFixEditor;->parent:Lcom/mqgame/lib/SVKeyboard;

    invoke-virtual {v2}, Lcom/mqgame/lib/SVKeyboard;->dismiss()V

    goto :goto_0

    .line 88
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v2

    goto :goto_1

    .line 78
    :catch_1
    move-exception v2

    goto :goto_1
.end method
