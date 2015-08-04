.class Lcom/mqgame/lib/SVKeyboard;
.super Landroid/app/Dialog;
.source "SNativeActivity.java"


# static fields
.field public static curVKCursor:I

.field public static curVKMask:I

.field public static curVKString:Ljava/lang/String;


# instance fields
.field editHandler:Landroid/widget/TextView$OnEditorActionListener;

.field inputCtrl:Lcom/mqgame/lib/SFixEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    const-string v0, ""

    sput-object v0, Lcom/mqgame/lib/SVKeyboard;->curVKString:Ljava/lang/String;

    .line 362
    sput v1, Lcom/mqgame/lib/SVKeyboard;->curVKCursor:I

    .line 363
    sput v1, Lcom/mqgame/lib/SVKeyboard;->curVKMask:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "av"    # Landroid/app/Activity;

    .prologue
    .line 378
    const v0, 0x7f050072

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 366
    new-instance v0, Lcom/mqgame/lib/SVKeyboard$1;

    invoke-direct {v0, p0}, Lcom/mqgame/lib/SVKeyboard$1;-><init>(Lcom/mqgame/lib/SVKeyboard;)V

    iput-object v0, p0, Lcom/mqgame/lib/SVKeyboard;->editHandler:Landroid/widget/TextView$OnEditorActionListener;

    .line 379
    invoke-virtual {p0, p1}, Lcom/mqgame/lib/SVKeyboard;->setOwnerActivity(Landroid/app/Activity;)V

    .line 380
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 447
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 449
    const v2, 0x7f030040

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SVKeyboard;->setContentView(I)V

    .line 450
    const v2, 0x7f0600ce

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SVKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mqgame/lib/SFixEditor;

    iput-object v2, p0, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    .line 451
    iget-object v2, p0, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    iget-object v3, p0, Lcom/mqgame/lib/SVKeyboard;->editHandler:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v3}, Lcom/mqgame/lib/SFixEditor;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 452
    iget-object v2, p0, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    invoke-virtual {v2, p0}, Lcom/mqgame/lib/SFixEditor;->bind(Lcom/mqgame/lib/SVKeyboard;)V

    .line 454
    invoke-virtual {p0}, Lcom/mqgame/lib/SVKeyboard;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 456
    const v2, 0x7f0600cf

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SVKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 457
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/mqgame/lib/SVKeyboard$3;

    invoke-direct {v2, p0}, Lcom/mqgame/lib/SVKeyboard$3;-><init>(Lcom/mqgame/lib/SVKeyboard;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    new-instance v2, Lcom/mqgame/lib/SVKeyboard$4;

    invoke-direct {v2, p0}, Lcom/mqgame/lib/SVKeyboard$4;-><init>(Lcom/mqgame/lib/SVKeyboard;)V

    invoke-virtual {p0, v2}, Lcom/mqgame/lib/SVKeyboard;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v0    # "button":Landroid/widget/Button;
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 470
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 408
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 409
    iget-object v0, p0, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    sget-object v1, Lcom/mqgame/lib/SVKeyboard;->curVKString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mqgame/lib/SFixEditor;->setText(Ljava/lang/CharSequence;)V

    .line 411
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mqgame/lib/SVKeyboard$2;

    invoke-direct {v1, p0}, Lcom/mqgame/lib/SVKeyboard$2;-><init>(Lcom/mqgame/lib/SVKeyboard;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void
.end method

.method public triggerDone()V
    .locals 2

    .prologue
    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/mqgame/lib/SVKeyboard;->inputCtrl:Lcom/mqgame/lib/SFixEditor;

    invoke-virtual {v1}, Lcom/mqgame/lib/SFixEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mqgame/lib/SVKeyboard;->curVKString:Ljava/lang/String;

    .line 396
    invoke-static {}, Lcom/mqgame/lib/SUtility;->triggerInput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method
