.class final Lcom/mqgame/lib/SComMessage$1;
.super Ljava/lang/Object;
.source "SComMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SComMessage;->showComMessage(Landroid/content/Context;IIILjava/lang/String;Z)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bAcept:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/mqgame/lib/SComMessage$1;->val$bAcept:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 51
    sget v0, Lcom/mqgame/lib/SComMessage;->SAT_COMMSG_SEL_OK:I

    sput v0, Lcom/mqgame/lib/SComMessage;->selresult:I

    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    iget-boolean v0, p0, Lcom/mqgame/lib/SComMessage$1;->val$bAcept:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 56
    :cond_0
    return-void
.end method
