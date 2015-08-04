.class public final Lcom/jodo/paysdk/webviews/d;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/a;


# direct methods
.method public constructor <init>(Lcom/jodo/paysdk/webviews/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/d;->a:Lcom/jodo/paysdk/webviews/a;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/d;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/a;->e:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v1}, Lcom/jodo/paysdk/webviews/g;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/jodo/paysdk/webviews/d;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v1, v1, Lcom/jodo/paysdk/webviews/a;->g:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/d;->a:Lcom/jodo/paysdk/webviews/a;

    iget-object v2, v2, Lcom/jodo/paysdk/webviews/a;->d:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
