.class public abstract Lcom/jodo/paysdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static mIsLoading:Z

.field private static sAlertDialog:Lcom/jodo/paysdk/a/b;


# instance fields
.field mBase:Landroid/widget/RelativeLayout;

.field mBaseLoadingLayout:Landroid/view/ViewGroup;

.field mContentLayout:Landroid/widget/RelativeLayout;

.field mContext:Landroid/content/Context;

.field mDialog:Lcom/jodo/paysdk/a/b;

.field mMainView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/a/a;->mIsLoading:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PopupWindow(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jodo/paysdk/a/a;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const-string v0, "default"

    invoke-static {p0, p1, v0}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static PopupWindow(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jodo/paysdk/a/a;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/jodo/paysdk/a/a;->mIsLoading:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/a/a;

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/a/a;->setContext(Landroid/content/Context;)V

    sget-object v1, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    if-nez v1, :cond_1

    new-instance v1, Lcom/jodo/paysdk/a/b;

    invoke-direct {v1, p0, v0}, Lcom/jodo/paysdk/a/b;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/a/a;)V

    sput-object v1, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    :cond_1
    sget-object v1, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/a/b;->setCancelable(Z)V

    sget-object v1, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    invoke-virtual {v1}, Lcom/jodo/paysdk/a/b;->show()V

    sget-object v1, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    invoke-virtual {v1}, Lcom/jodo/paysdk/a/b;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/a/a;->generateMainView(Landroid/view/LayoutInflater;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sget-object v2, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    invoke-virtual {v2}, Lcom/jodo/paysdk/a/b;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jodo/paysdk/a/a;->getMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    invoke-virtual {v0}, Lcom/jodo/paysdk/a/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    sget-object v0, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    invoke-virtual {v0}, Lcom/jodo/paysdk/a/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    sget-object v0, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    invoke-virtual {v0}, Lcom/jodo/paysdk/a/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static hasExist(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/jodo/paysdk/a/a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isLoadingViewVisible()Z
    .locals 1

    :try_start_0
    sget-boolean v0, Lcom/jodo/paysdk/a/a;->mIsLoading:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Finish()V
    .locals 2

    sget-object v0, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/a/a;->showLoadingView(ZLjava/lang/String;)V

    sget-object v0, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    invoke-virtual {v0}, Lcom/jodo/paysdk/a/b;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/a/a;->sAlertDialog:Lcom/jodo/paysdk/a/b;

    goto :goto_0
.end method

.method protected dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mDialog:Lcom/jodo/paysdk/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mDialog:Lcom/jodo/paysdk/a/b;

    invoke-virtual {v0}, Lcom/jodo/paysdk/a/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public generateMainView(Landroid/view/LayoutInflater;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jodo/paysdk/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "jodoplay_base"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/a/a;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mMainView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jodo/paysdk/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "jodoplay_base"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/a/a;->mBase:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mMainView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jodo/paysdk/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "jodoplay_base_content"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/a/a;->mContentLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mMainView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jodo/paysdk/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "jodoplay_loading_progress_ly"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jodo/paysdk/a/a;->mBaseLoadingLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mBaseLoadingLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/a/a;->initView()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method protected getStringByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/paysdk/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6ca1\u6709["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\u8d44\u6e90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract initView()V
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method protected setContentLayout(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jodo/paysdk/a/a;->setContentLayout(IZ)V

    return-void
.end method

.method protected setContentLayout(IZ)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/a/a;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/a/a;->mContentLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mBaseLoadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jodo/paysdk/a/a;->mContentLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/a/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setDialog(Lcom/jodo/paysdk/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/a/a;->mDialog:Lcom/jodo/paysdk/a/b;

    return-void
.end method

.method public showLoadingView(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mBaseLoadingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mBaseLoadingLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jodo/paysdk/a/a;->mIsLoading:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/a/a;->mBaseLoadingLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/a/a;->mIsLoading:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toast(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jodo/paysdk/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public toastL(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jodo/paysdk/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
