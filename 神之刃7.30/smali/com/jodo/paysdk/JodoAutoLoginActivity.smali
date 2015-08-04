.class public Lcom/jodo/paysdk/JodoAutoLoginActivity;
.super Lcom/jodo/paysdk/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/jodo/paysdk/g/g;
.implements Lcom/jodo/paysdk/g/h;


# static fields
.field private static final AUTO_LOGIN_CANCEL_TIME:J = 0xfa0L

.field private static final AUTO_LOGIN_HIDE_TIP:I = 0x2

.field private static final AUTO_LOGIN_INTERVAL:I = 0x5

.field private static final AUTO_LOGIN_SUCCESS_MSG:I = 0x1

.field private static final AUTO_LOGIN_TIPS_TIME:J = 0x7d0L


# instance fields
.field mAccount:Lcom/jodo/paysdk/account/JodoAccount;

.field mBtn:Landroid/widget/Button;

.field mHandler:Landroid/os/Handler;

.field mInterval:I

.field mIsCancel:Z

.field mStartTime:J

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jodo/paysdk/a/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mIsCancel:Z

    return-void
.end method

.method static synthetic access$000(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->login()V

    return-void
.end method

.method static synthetic access$100(Lcom/jodo/paysdk/JodoAutoLoginActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->renderTitle(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->sendInterval()V

    return-void
.end method

.method static synthetic access$300(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->closeView()V

    return-void
.end method

.method private closeView()V
    .locals 0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->Finish()V

    return-void
.end method

.method private initHandler()V
    .locals 2

    new-instance v0, Lcom/jodo/paysdk/j;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/jodo/paysdk/j;-><init>(Lcom/jodo/paysdk/JodoAutoLoginActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initParams()V
    .locals 1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getAutoLoginIntervalCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mInterval:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mIsCancel:Z

    return-void
.end method

.method private initViews()V
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mInterval:I

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->renderTitle(I)V

    return-void
.end method

.method private login()V
    .locals 7

    iget-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/g/a;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v2}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v3}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/jodo/paysdk/g/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jodo/paysdk/g/g;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/a;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/jodo/paysdk/g/c;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v2}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthType()I

    move-result v2

    iget-object v3, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v3}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v4}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v5}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthExpire()I

    move-result v5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/jodo/paysdk/g/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILcom/jodo/paysdk/g/g;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/c;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mStartTime:J

    iget-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private renderTitle(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/f/d;->a(Landroid/content/Context;Lcom/jodo/paysdk/account/JodoAccount;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jodoplay_auto_login_toast"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private sendInterval()V
    .locals 4

    iget-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/jodo/paysdk/i;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/i;-><init>(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupViews()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout"

    const-string v3, "jodoplay_autologin_layout"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->setContentLayout(I)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_auto_login_text"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_auto_login_swtich_account_btn"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->initViews()V

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->initHandler()V

    const-string v0, ""

    invoke-virtual {p0, v4, v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->showLoadingView(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->sendInterval()V

    return-void
.end method

.method public static showAutoLoginView(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->IsValidNormalAccount()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->IsValidFbAccount()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->IsValidVisitor()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-class v0, Lcom/jodo/paysdk/JodoAutoLoginActivity;

    const-string v1, "showAutoLoginView"

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-static {p0, v0}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public initView()V
    .locals 1

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->initParams()V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    :try_start_0
    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->setupViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->Finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mIsCancel:Z

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/jodo/paysdk/f/d;->c()Lcom/jodo/paysdk/interfaces/LoginCallbackListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showChangeAccountView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    :cond_0
    return-void
.end method

.method public onImageDownloadFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onImageDownloadSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onLoginFailed(IILjava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->closeView()V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string v0, "unknow error"

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    iget-boolean v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mIsCancel:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    const-string v0, "jodoplay_facebook_account_appNotInstalled"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_2
    :try_start_1
    const-string v0, "jodoplay_facebook_account_userUncheckpointed"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "jodoplay_facebook_account_pswchanged"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "jodoplay_facebook_account_expired"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "jodoplay_facebook_account_userUncheckpointed"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "jodoplay_facebook_account_invalidAccessToken"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1ca
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onLoginFailed(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->closeView()V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mIsCancel:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/a/a;->PopupWindow(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLoginSuccess(Lcom/jodo/paysdk/account/JodoAccount;)V
    .locals 6

    const-wide/16 v4, 0xfa0

    :try_start_0
    iget-boolean v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mIsCancel:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mAccount:Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->pastTime_ms()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    new-instance v0, Lcom/jodo/paysdk/k;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/k;-><init>(Lcom/jodo/paysdk/JodoAutoLoginActivity;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoAutoLoginActivity;->pastTime_ms()J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRegisterFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRegisterSuccess(Lcom/jodo/paysdk/account/JodoAccount;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method pastTime_ms()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/jodo/paysdk/JodoAutoLoginActivity;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
