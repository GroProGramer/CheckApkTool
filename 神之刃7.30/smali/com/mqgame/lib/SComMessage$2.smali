.class final Lcom/mqgame/lib/SComMessage$2;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 60
    sget v0, Lcom/mqgame/lib/SComMessage;->SAT_COMMSG_SEL_CANCEL:I

    sput v0, Lcom/mqgame/lib/SComMessage;->selresult:I

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    return-void
.end method
