.class public Lcom/jodo/paysdk/JodoQuitActivity;
.super Lcom/jodo/paysdk/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jodo/paysdk/webviews/a/b;


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static mQuitGameCallback:Lcom/jodo/paysdk/interfaces/QuitGameCallback;


# instance fields
.field mQuitBtn:Landroid/widget/Button;

.field mTitle:Lcom/jodo/paysdk/l;

.field mWebPage:Lcom/jodo/paysdk/webviews/g;

.field mWebPageContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/paysdk/a/a;-><init>()V

    return-void
.end method

.method private initView2()V
    .locals 4

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_quit_adv"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mWebPageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_quit_game"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mQuitBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mQuitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initWebView()V
    .locals 10

    const/4 v3, 0x1

    const/4 v9, -0x2

    const/4 v7, 0x0

    invoke-static {}, Lcom/air/a/a;->a()Lcom/air/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p0, v4, v3

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/air/a/a;->a(Landroid/content/Context;Lcom/air/plugin/js/IWebView;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jodo/paysdk/webviews/js/Js_Interface;

    new-instance v0, Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, ""

    const-string v6, ""

    move-object v4, p0

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/jodo/paysdk/webviews/g;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/config/JodoConfig;->getQuitpageurl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/http/jodohttp/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/webviews/g;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mWebPageContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v2}, Lcom/jodo/paysdk/webviews/g;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "jodoplay_layout_quit"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoQuitActivity;->setContentLayout(I)V

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->initView2()V

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->initWebView()V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->getMainView()Landroid/view/View;

    move-result-object v1

    const-string v2, "jodoplay_title_quit"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/l;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/jodo/paysdk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mTitle:Lcom/jodo/paysdk/l;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mTitle:Lcom/jodo/paysdk/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/l;->a(Z)Lcom/jodo/paysdk/l;

    move-result-object v0

    const-string v1, "jodoplay_title_quit_game"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/l;->a(Ljava/lang/String;)Lcom/jodo/paysdk/l;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/an;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/an;-><init>(Lcom/jodo/paysdk/JodoQuitActivity;)V

    invoke-virtual {v0, v1, p0}, Lcom/jodo/paysdk/l;->a(Lcom/jodo/paysdk/m;Ljava/lang/Object;)Lcom/jodo/paysdk/l;

    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/QuitGameCallback;)V
    .locals 1

    sput-object p0, Lcom/jodo/paysdk/JodoQuitActivity;->mActivity:Landroid/app/Activity;

    sput-object p1, Lcom/jodo/paysdk/JodoQuitActivity;->mQuitGameCallback:Lcom/jodo/paysdk/interfaces/QuitGameCallback;

    const-class v0, Lcom/jodo/paysdk/JodoQuitActivity;

    invoke-static {p0, v0}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public cancleAble()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getWebPage()Lcom/jodo/paysdk/webviews/g;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mWebPage:Lcom/jodo/paysdk/webviews/g;

    return-object v0
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

.method public initView()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->setupViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoQuitActivity;->mQuitBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoQuitActivity;->Finish()V

    sget-object v0, Lcom/jodo/paysdk/JodoQuitActivity;->mQuitGameCallback:Lcom/jodo/paysdk/interfaces/QuitGameCallback;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jodo/paysdk/JodoQuitActivity;->mQuitGameCallback:Lcom/jodo/paysdk/interfaces/QuitGameCallback;

    invoke-interface {v0}, Lcom/jodo/paysdk/interfaces/QuitGameCallback;->OnQuit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/jodo/paysdk/JodoQuitActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onInit(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    return-void
.end method

.method public setWebTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
