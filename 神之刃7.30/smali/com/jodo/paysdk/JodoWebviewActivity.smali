.class public Lcom/jodo/paysdk/JodoWebviewActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jodo/paysdk/webviews/a/b;


# static fields
.field static final KEY_ACTIVITY_SESSION:Ljava/lang/String; = "pSZB3rrNTwaq"

.field public static final KEY_BROWSER_LOAD_JS_CODE:Ljava/lang/String; = "glc_bljc"

.field public static final KEY_BROWSER_LOAD_JS_FILE_URL:Ljava/lang/String; = "glc_bljf"

.field public static final KEY_FLAGS:Ljava/lang/String; = "glc_kf"

.field public static final KEY_PAGE_TYPE:Ljava/lang/String; = "glc_pt"

.field public static final KEY_SHOW_BACK_GAME:Ljava/lang/String; = "glc_sbg"

.field public static final KEY_TITLE:Ljava/lang/String; = "glc_t"

.field public static final KEY_URL:Ljava/lang/String; = "glc_kbu"

.field public static final TYPE_OTHERS:I = 0xf99

.field public static final TYPE_PAY:I = 0xf01

.field public static final TYPE_WEB_PAY:I = 0xf03


# instance fields
.field private mAllPageJsCode:Ljava/lang/String;

.field private mAllPageLoadJsFileUrl:Ljava/lang/String;

.field mBaseUrl:Ljava/lang/String;

.field mCancelable:Z

.field mCloseBtn:Landroid/widget/ImageView;

.field private mIsAutoChangeTitle:Z

.field mPageType:I

.field private mTitle:Ljava/lang/String;

.field mWebPage:Lcom/jodo/paysdk/webviews/g;

.field showBackGame:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mCancelable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mBaseUrl:Ljava/lang/String;

    iput v1, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mPageType:I

    iput-boolean v1, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mIsAutoChangeTitle:Z

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/jodo/paysdk/JodoWebviewActivity;

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

.method public static loadUrl(Landroid/content/Context;Ljava/lang/String;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V
    .locals 4

    :try_start_0
    invoke-static {p4}, Lcom/jodo/paysdk/f/d;->a(Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/jodo/paysdk/JodoWebviewActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "glc_kbu"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "glc_pt"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "glc_sbg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;IZ",
            "Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;",
            ")V"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    add-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "?"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "&"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3, p4, p5}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    return-void
.end method


# virtual methods
.method public cancleAble()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mCancelable:Z

    return v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoWebviewActivity;->finish()V

    return-void
.end method

.method public getWebPage()Lcom/jodo/paysdk/webviews/g;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;
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

.method initLayout()Landroid/view/ViewGroup;
    .locals 6

    const/4 v5, -0x1

    invoke-static {p0}, Lcom/jodo/paysdk/util/ae;->a(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v3}, Lcom/jodo/paysdk/webviews/g;->a()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v3, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v3}, Lcom/jodo/paysdk/webviews/g;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v3}, Lcom/jodo/paysdk/webviews/g;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
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

    iget-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoWebviewActivity;->close()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoWebviewActivity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoWebviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->requestFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoWebviewActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/jodo/paysdk/JodoWebviewActivity;->setRequestedOrientation(I)V

    :cond_1
    const-string v2, "glc_kbu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mBaseUrl:Ljava/lang/String;

    const-string v2, "glc_pt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mPageType:I

    const-string v2, "glc_sbg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->showBackGame:Z

    iget-object v2, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mBaseUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoWebviewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoWebviewActivity;->initLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoWebviewActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    iget-object v1, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/webviews/g;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/jodo/paysdk/JodoWebviewActivity;->setCancelable(Z)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "glc_t"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, "\u6d4f\u89c8\u9875"

    iput-object v2, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mTitle:Ljava/lang/String;

    :cond_3
    const-string v2, "glc_kf"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_4

    :goto_2
    iput-boolean v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mIsAutoChangeTitle:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v0, "glc_bljc"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mAllPageJsCode:Ljava/lang/String;

    const-string v0, "glc_bljf"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mAllPageLoadJsFileUrl:Ljava/lang/String;
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

    iget-object v5, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mAllPageJsCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mAllPageLoadJsFileUrl:Ljava/lang/String;

    iget v7, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mPageType:I

    iget-boolean v8, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->showBackGame:Z

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/jodo/paysdk/webviews/g;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    goto :goto_1

    :cond_4
    move v0, v9

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

    iget-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

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

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoWebviewActivity;->finish()V

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

    iput-boolean p1, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mCancelable:Z

    :try_start_0
    iget-boolean v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mCancelable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mCloseBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mCloseBtn:Landroid/widget/ImageView;

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

    iget-boolean v0, p0, Lcom/jodo/paysdk/JodoWebviewActivity;->mIsAutoChangeTitle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/jodo/paysdk/JodoWebviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
