.class public Lcom/jodo/shares/net/shares/GLWebviewActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jodo/paysdk/webviews/a/b;


# instance fields
.field a:Z

.field b:Lcom/jodo/paysdk/webviews/g;

.field c:Ljava/lang/String;

.field d:Landroid/widget/ImageView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->h:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/jodo/shares/net/shares/GLWebviewActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "glc_kbu"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public cancleAble()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a:Z

    return v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->finish()V

    return-void
.end method

.method public getWebPage()Lcom/jodo/paysdk/webviews/g;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->b:Lcom/jodo/paysdk/webviews/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initClient(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public initJsInterface(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public initSettings(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->close()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->requestFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->setRequestedOrientation(I)V

    :cond_1
    const-string v0, "glc_kbu"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-static {p0}, Lcom/jodo/paysdk/util/ae;->a(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->b:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v4}, Lcom/jodo/paysdk/webviews/g;->a()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v4, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->b:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v4}, Lcom/jodo/paysdk/webviews/g;->a()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->b:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v4}, Lcom/jodo/paysdk/webviews/g;->a()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->d:Landroid/widget/ImageView;

    const-string v4, "sdk_btn_close_normal.png"

    invoke-static {p0, v4}, Lcom/jodo/shares/net/shares/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->b:Lcom/jodo/paysdk/webviews/g;

    iget-object v1, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/webviews/g;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->setCancelable(Z)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v0, "glc_t"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "\u6d4f\u89c8\u9875"

    iput-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->g:Ljava/lang/String;

    :cond_3
    const-string v0, "glc_kf"

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_4

    move v0, v7

    :goto_2
    iput-boolean v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->h:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v0, "glc_bljc"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->e:Ljava/lang/String;

    const-string v0, "glc_bljf"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    invoke-static {}, Lcom/air/a/a;->a()Lcom/air/a/a;

    move-result-object v0

    const-class v1, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v2, v4

    const/4 v4, 0x1

    aput-object p0, v2, v4

    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/air/a/a;->a(Landroid/content/Context;Lcom/air/plugin/js/IWebView;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jodo/paysdk/webviews/js/Js_Interface;

    new-instance v0, Lcom/jodo/paysdk/webviews/g;

    iget-object v5, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->f:Ljava/lang/String;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/jodo/paysdk/webviews/g;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->b:Lcom/jodo/paysdk/webviews/g;

    goto/16 :goto_1

    :cond_4
    move v0, v8

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method public onInit(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->b:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a:Z

    :try_start_0
    iget-boolean v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->d:Landroid/widget/ImageView;

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

.method public setWebTitle(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/shares/net/shares/GLWebviewActivity;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
