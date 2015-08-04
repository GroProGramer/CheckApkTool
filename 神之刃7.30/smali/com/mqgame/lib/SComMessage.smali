.class public Lcom/mqgame/lib/SComMessage;
.super Ljava/lang/Object;
.source "SComMessage.java"


# static fields
.field public static SAT_COMMSG_SEL_CANCEL:I

.field public static SAT_COMMSG_SEL_NULL:I

.field public static SAT_COMMSG_SEL_OK:I

.field protected static selresult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/mqgame/lib/SComMessage;->SAT_COMMSG_SEL_OK:I

    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/mqgame/lib/SComMessage;->SAT_COMMSG_SEL_CANCEL:I

    .line 14
    const/4 v0, -0x1

    sput v0, Lcom/mqgame/lib/SComMessage;->SAT_COMMSG_SEL_NULL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShowableContex(Landroid/app/Activity;)Landroid/content/Context;
    .locals 4
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 21
    if-nez p0, :cond_1

    move-object v1, v2

    .line 40
    :cond_0
    :goto_0
    return-object v1

    .line 24
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 28
    .local v1, "parentAct":Landroid/app/Activity;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move-object v1, p0

    .line 40
    goto :goto_0

    .line 31
    .end local v1    # "parentAct":Landroid/app/Activity;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 33
    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    move-object v1, v2

    .line 38
    goto :goto_0
.end method

.method public static showComMessage(Landroid/content/Context;IIILjava/lang/String;Z)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "szOkid"    # I
    .param p2, "szCancelid"    # I
    .param p3, "szTitleid"    # I
    .param p4, "szMsg"    # Ljava/lang/String;
    .param p5, "bAceptExit"    # Z

    .prologue
    .line 44
    sget v2, Lcom/mqgame/lib/SComMessage;->SAT_COMMSG_SEL_NULL:I

    sput v2, Lcom/mqgame/lib/SComMessage;->selresult:I

    .line 45
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 48
    move v0, p5

    .line 49
    .local v0, "bAcept":Z
    new-instance v2, Lcom/mqgame/lib/SComMessage$1;

    invoke-direct {v2, v0}, Lcom/mqgame/lib/SComMessage$1;-><init>(Z)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    if-lez p2, :cond_0

    .line 58
    new-instance v2, Lcom/mqgame/lib/SComMessage$2;

    invoke-direct {v2}, Lcom/mqgame/lib/SComMessage$2;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    :cond_0
    return-object v1
.end method

.method public static waitSel()V
    .locals 2

    .prologue
    .line 68
    :goto_0
    sget v0, Lcom/mqgame/lib/SComMessage;->selresult:I

    sget v1, Lcom/mqgame/lib/SComMessage;->SAT_COMMSG_SEL_NULL:I

    if-ne v0, v1, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
