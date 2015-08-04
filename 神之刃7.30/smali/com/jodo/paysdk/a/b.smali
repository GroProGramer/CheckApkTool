.class public final Lcom/jodo/paysdk/a/b;
.super Landroid/app/AlertDialog;


# instance fields
.field private a:Lcom/jodo/paysdk/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/jodo/paysdk/a/b;->a:Lcom/jodo/paysdk/a/a;

    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/a/b;->a:Lcom/jodo/paysdk/a/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/a/b;->a:Lcom/jodo/paysdk/a/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/a/a;->onDetachedFromWindow()V

    goto :goto_0
.end method
