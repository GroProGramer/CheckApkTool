.class Lcom/mqgame/lib/SWebCenter$3$6;
.super Ljava/lang/Object;
.source "SNativeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SWebCenter$3;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mqgame/lib/SWebCenter$3;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SWebCenter$3;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mqgame/lib/SWebCenter$3$6;->this$1:Lcom/mqgame/lib/SWebCenter$3;

    iput-object p2, p0, Lcom/mqgame/lib/SWebCenter$3$6;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mqgame/lib/SWebCenter$3$6;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 212
    return-void
.end method
