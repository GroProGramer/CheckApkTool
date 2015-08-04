.class Lcom/mqgame/lib/SWebCenter$3;
.super Landroid/webkit/WebChromeClient;
.source "SNativeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SWebCenter;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqgame/lib/SWebCenter;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SWebCenter;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mqgame/lib/SWebCenter$3;->this$0:Lcom/mqgame/lib/SWebCenter;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 157
    move-object v0, p4

    .line 158
    .local v0, "jr":Landroid/webkit/JsResult;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/mqgame/lib/SWebCenter$3$1;

    invoke-direct {v3, p0, v0}, Lcom/mqgame/lib/SWebCenter$3$1;-><init>(Lcom/mqgame/lib/SWebCenter$3;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 172
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 202
    const v1, 0x104000a

    new-instance v2, Lcom/mqgame/lib/SWebCenter$3$5;

    invoke-direct {v2, p0, p4}, Lcom/mqgame/lib/SWebCenter$3$5;-><init>(Lcom/mqgame/lib/SWebCenter$3;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/mqgame/lib/SWebCenter$3$6;

    invoke-direct {v2, p0, p4}, Lcom/mqgame/lib/SWebCenter$3$6;-><init>(Lcom/mqgame/lib/SWebCenter$3;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 217
    const/4 v1, 0x1

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a

    new-instance v2, Lcom/mqgame/lib/SWebCenter$3$2;

    invoke-direct {v2, p0, p5}, Lcom/mqgame/lib/SWebCenter$3$2;-><init>(Lcom/mqgame/lib/SWebCenter$3;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/mqgame/lib/SWebCenter$3$3;

    invoke-direct {v2, p0, p5}, Lcom/mqgame/lib/SWebCenter$3$3;-><init>(Lcom/mqgame/lib/SWebCenter$3;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    new-instance v1, Lcom/mqgame/lib/SWebCenter$3$4;

    invoke-direct {v1, p0, p5}, Lcom/mqgame/lib/SWebCenter$3$4;-><init>(Lcom/mqgame/lib/SWebCenter$3;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 195
    const/4 v1, 0x1

    return v1
.end method
