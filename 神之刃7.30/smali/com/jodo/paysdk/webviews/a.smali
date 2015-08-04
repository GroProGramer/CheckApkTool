.class public final Lcom/jodo/paysdk/webviews/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jodo/paysdk/webviews/a/b;


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field c:Ljava/lang/String;

.field d:Landroid/view/ViewGroup;

.field e:Lcom/jodo/paysdk/webviews/g;

.field f:Landroid/widget/ImageView;

.field g:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/a;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/webviews/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/jodo/paysdk/webviews/b;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/b;-><init>(Lcom/jodo/paysdk/webviews/a;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/jodo/paysdk/webviews/c;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/c;-><init>(Lcom/jodo/paysdk/webviews/a;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method final c()Landroid/view/ViewGroup;
    .locals 13

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v12, -0x2

    const/4 v11, -0x1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/util/ae;->a(Landroid/content/Context;)F

    move-result v0

    new-instance v9, Lcom/jodo/paysdk/webviews/d;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    invoke-direct {v9, p0, v1}, Lcom/jodo/paysdk/webviews/d;-><init>(Lcom/jodo/paysdk/webviews/a;Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x1080000

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    invoke-direct {v10, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v10, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v9, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-static {}, Lcom/air/a/a;->a()Lcom/air/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    const-class v2, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    aput-object v4, v3, v7

    aput-object p0, v3, v5

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/air/a/a;->a(Landroid/content/Context;Lcom/air/plugin/js/IWebView;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jodo/paysdk/webviews/js/Js_Interface;

    new-instance v0, Lcom/jodo/paysdk/webviews/g;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/a;->a:Landroid/content/Context;

    const/4 v3, 0x5

    const-string v5, ""

    const-string v6, ""

    move-object v4, p0

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/jodo/paysdk/webviews/g;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/a;->e:Lcom/jodo/paysdk/webviews/g;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/a;->e:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v1}, Lcom/jodo/paysdk/webviews/g;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/webviews/a;->getWebPage()Lcom/jodo/paysdk/webviews/g;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/webviews/g;->loadUrl(Ljava/lang/String;)V

    return-object v9
.end method

.method public final cancleAble()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/paysdk/webviews/a;->b:Z

    return v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/a;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/a;->g:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/a;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/a;->d:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final getWebPage()Lcom/jodo/paysdk/webviews/g;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/a;->e:Lcom/jodo/paysdk/webviews/g;

    return-object v0
.end method

.method public final initClient(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final initJsInterface(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final initSettings(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/a;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/webviews/a;->close()V

    :cond_0
    return-void
.end method

.method public final onInit(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final setCancelable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jodo/paysdk/webviews/a;->b:Z

    :try_start_0
    iget-boolean v0, p0, Lcom/jodo/paysdk/webviews/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/a;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/a;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final setWebTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
