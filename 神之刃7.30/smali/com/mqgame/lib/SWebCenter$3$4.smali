.class Lcom/mqgame/lib/SWebCenter$3$4;
.super Ljava/lang/Object;
.source "SNativeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SWebCenter$3;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mqgame/lib/SWebCenter$3;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SWebCenter$3;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mqgame/lib/SWebCenter$3$4;->this$1:Lcom/mqgame/lib/SWebCenter$3;

    iput-object p2, p0, Lcom/mqgame/lib/SWebCenter$3$4;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mqgame/lib/SWebCenter$3$4;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 192
    return-void
.end method
