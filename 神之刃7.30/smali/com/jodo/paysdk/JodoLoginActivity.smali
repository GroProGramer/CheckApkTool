.class public Lcom/jodo/paysdk/JodoLoginActivity;
.super Lcom/jodo/paysdk/a/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/jodo/paysdk/g/g;
.implements Lcom/jodo/paysdk/g/h;


# static fields
.field private static final ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

.field private static final PASSWORD_PATTERN:Ljava/util/regex/Pattern;

.field private static final VISITOR_NAME_PSW:Ljava/lang/String; = "0x7b96f3"

.field private static final WINDOW_INDEX_LOGIN:I = 0x1

.field private static final WINDOW_INDEX_PRE_LOGIN:I = 0x0

.field private static final WINDOW_INDEX_REGISTER:I = 0x2

.field private static final WINDOW_INDEX_REGISTER_CONFIRM:I = 0x3


# instance fields
.field private getxxHandler:Landroid/os/Handler;

.field mAccountEditor:Landroid/widget/EditText;

.field mAgreeMentBtn:Landroid/widget/TextView;

.field mBaseTitle:Lcom/jodo/paysdk/l;

.field private mFacebookAuthCallBack:Lcom/facebook/Session$StatusCallback;

.field mFacebookBtn:Landroid/widget/ImageView;

.field mForgetPswBtn:Landroid/widget/Button;

.field mGoogleBtn:Landroid/widget/ImageView;

.field mLoginBtn:Landroid/widget/Button;

.field mPreLoginBtn:Landroid/widget/Button;

.field mPreTryBtn:Landroid/widget/Button;

.field mPswEditor:Landroid/widget/EditText;

.field mPswViewBtn:Landroid/view/View;

.field mQuickTrial:Landroid/widget/TextView;

.field mRegisterConfirmBtn:Landroid/widget/Button;

.field mRegitsterBtn:Landroid/widget/Button;

.field mSelectAccountBtn:Landroid/view/View;

.field mToNext:Landroid/widget/LinearLayout;

.field mViewFlipper:Landroid/widget/ViewFlipper;

.field mWindowIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9\\_]{6,50}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/JodoLoginActivity;->ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^[a-zA-Z0-9]{7,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/JodoLoginActivity;->PASSWORD_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jodo/paysdk/a/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    new-instance v0, Lcom/jodo/paysdk/w;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/w;-><init>(Lcom/jodo/paysdk/JodoLoginActivity;)V

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->getxxHandler:Landroid/os/Handler;

    new-instance v0, Lcom/jodo/paysdk/aa;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/aa;-><init>(Lcom/jodo/paysdk/JodoLoginActivity;)V

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookAuthCallBack:Lcom/facebook/Session$StatusCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/jodo/paysdk/JodoLoginActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->getxxHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jodo/paysdk/JodoLoginActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getDefaultMail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/jodo/paysdk/JodoLoginActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getDefaultPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/jodo/paysdk/JodoLoginActivity;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jodo/paysdk/JodoLoginActivity;->oauthLogin(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/jodo/paysdk/JodoLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/jodo/paysdk/JodoLoginActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->oauthPreLoginFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/jodo/paysdk/JodoLoginActivity;)Lcom/facebook/Session$StatusCallback;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookAuthCallBack:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method private checkAccountParam(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "jodoplay_login_name_no_empty"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    const-string v1, "jodoplay_login_name_too_short"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    const-string v1, "jodoplay_login_name_too_long"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/jodo/paysdk/JodoLoginActivity;->ACCOUNT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/jodo/paysdk/util/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "jodoplay_login_name_format_wrong"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkLoginParam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->checkAccountParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/jodo/paysdk/JodoLoginActivity;->checkPwdParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPwdParam(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "jodoplay_password_no_empty"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    const-string v1, "jodoplay_password_too_short"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_2

    const-string v1, "jodoplay_password_too_long"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/jodo/paysdk/JodoLoginActivity;->PASSWORD_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "jodoplay_password_format_wrong"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkRegisterParam(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->checkPwdParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static generateVisitorOpenid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/jodo/paysdk/model/FingerInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, p0}, Lcom/jodo/paysdk/model/FingerInfo;->getAndroid_id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0x7b96f3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static generateVisitorToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/jodo/paysdk/model/FingerInfo;->getAndroid_id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, p0}, Lcom/jodo/paysdk/model/FingerInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0x7b96f3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDefaultMail()Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const-string v4, "account"

    invoke-virtual {v3}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/jodo/paysdk/util/e;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getDefaultPassword()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/model/FingerInfo;->getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jodo/paysdk/model/FingerInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/jodo/paysdk/model/FingerInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "12345678"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAccountView(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getFirstNormalAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mSelectAccountBtn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getCollectTk(Landroid/content/Context;)I

    move-result v0

    if-ne v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctk"

    const-string v2, "jumped"

    invoke-static {v0, v1, v2, v4}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctk"

    const-string v2, "jumped"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "jodoplay_ctk_prompt"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "jodoplay_ctk_safe_login"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "jodoplay_ctk_get_google_account"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/p;

    invoke-direct {v2, p0}, Lcom/jodo/paysdk/p;-><init>(Lcom/jodo/paysdk/JodoLoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method private initListener()V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mSelectAccountBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mSelectAccountBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mGoogleBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mGoogleBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegitsterBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegitsterBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mToNext:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mToNext:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mLoginBtn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mLoginBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegisterConfirmBtn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegisterConfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mForgetPswBtn:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mForgetPswBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAgreeMentBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAgreeMentBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mQuickTrial:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mQuickTrial:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPreTryBtn:Landroid/widget/Button;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPreTryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPreLoginBtn:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPreLoginBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method private initPreAccountBoxViews(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->initQuickTrial(Landroid/view/View;)V

    const-string v0, "jodoplay_otherlogin_prelogin"

    invoke-virtual {p0, p1, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->initLoginOtherView(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_pre_login_try_btn"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPreTryBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_pre_login_login_btn"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPreLoginBtn:Landroid/widget/Button;

    return-void
.end method

.method private initPswFilter()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/jodo/paysdk/x;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/x;-><init>(Lcom/jodo/paysdk/JodoLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private initRegisterConfirmView(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jodoplay_register_confirm_account"

    invoke-virtual {p0, v3}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jodoplay_register_confirm_pwd"

    invoke-virtual {p0, v3}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initRegisterConfirmViews(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->initPwdView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_name_box"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_register_confirm_btn"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegisterConfirmBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->initRegisterConfirmView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jodoplay_title_register_confirm"

    invoke-static {v0, p1, v1}, Lcom/jodo/paysdk/l;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/jodo/paysdk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mBaseTitle:Lcom/jodo/paysdk/l;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mBaseTitle:Lcom/jodo/paysdk/l;

    invoke-virtual {v0, v3}, Lcom/jodo/paysdk/l;->a(Z)Lcom/jodo/paysdk/l;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/v;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/v;-><init>(Lcom/jodo/paysdk/JodoLoginActivity;)V

    invoke-virtual {v0, v1, p0}, Lcom/jodo/paysdk/l;->a(Lcom/jodo/paysdk/m;Ljava/lang/Object;)Lcom/jodo/paysdk/l;

    move-result-object v0

    const-string v1, "jodoplay_title_register_confirm"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/l;->a(Ljava/lang/String;)Lcom/jodo/paysdk/l;

    const-string v0, "jodoplay_save_account_tips"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private initRegisterView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->initPswFilter()V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getCollectTk(Landroid/content/Context;)I

    move-result v0

    if-ne v4, v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctk"

    const-string v2, "got"

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctk"

    const-string v2, "reg_from_dialog"

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctk"

    const-string v2, "reg_from_dialog"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Z

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->getxxHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v4}, Lcom/jodo/paysdk/util/g;->a(Landroid/content/Context;Landroid/os/Handler;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "jodoplay_ctk_prompt"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "jodoplay_ctk_safe_login"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "jodoplay_ctk_get_google_account"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/u;

    invoke-direct {v2, p0}, Lcom/jodo/paysdk/u;-><init>(Lcom/jodo/paysdk/JodoLoginActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private login()V
    .locals 4

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->checkLoginParam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/jodo/paysdk/g/a;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1, p0}, Lcom/jodo/paysdk/g/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jodo/paysdk/g/g;)V

    invoke-virtual {v2}, Lcom/jodo/paysdk/g/a;->a()V

    const/4 v0, 0x1

    const-string v1, "jodoplay_network_communicating"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->showLoadingView(ZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->setActionBtnEnable(Z)V

    goto :goto_0
.end method

.method private oauthLogin(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v7, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/jodo/paysdk/g/c;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/jodo/paysdk/g/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILcom/jodo/paysdk/g/g;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/c;->a()V

    const-string v0, "jodoplay_network_communicating"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->showLoadingView(ZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->setActionBtnEnable(Z)V

    :cond_1
    return-void
.end method

.method private oauthPreLoginFailed(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jodoplay_login_failed"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private register()V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->checkRegisterParam(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/jodo/paysdk/g/e;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/jodo/paysdk/g/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/jodo/paysdk/g/h;)V

    invoke-virtual {v1}, Lcom/jodo/paysdk/g/e;->a()V

    const/4 v0, 0x1

    const-string v1, "jodoplay_network_communicating"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->showLoadingView(ZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->setActionBtnEnable(Z)V

    goto :goto_0
.end method

.method private registerConfirm()V
    .locals 2

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->saveCurrentImage()V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->Finish()V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoSysNoticeActivity;->OnLoginSuccess(Landroid/content/Context;Z)V

    return-void
.end method

.method private saveCurrentImage()V
    .locals 8

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_0
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Screenshots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/JodoPlay_Screen_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jodoplay_save_screen_image_tips"

    invoke-virtual {p0, v3}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private setActionBtnEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegitsterBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegitsterBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mForgetPswBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mForgetPswBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mToNext:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mToNext:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mLoginBtn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mLoginBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mBaseTitle:Lcom/jodo/paysdk/l;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mBaseTitle:Lcom/jodo/paysdk/l;

    iget-object v0, v0, Lcom/jodo/paysdk/l;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegisterConfirmBtn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegisterConfirmBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mQuickTrial:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mQuickTrial:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method private showFacebookSelectAccount()V
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getFacebookAccount()Lcom/jodo/paysdk/account/JodoAccount;

    move-result-object v4

    if-eqz v4, :cond_0

    move v0, v5

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "jodoplay_what_identity"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/jodo/paysdk/account/JodoAccount;->getNickName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "jodoplay_use_new_account"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "jodoplay_facebook_privacy_policy"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-virtual {v4}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/jodo/paysdk/account/JodoAccount;->getOauthExpire()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jodo/paysdk/JodoLoginActivity;->showFacebookSelectAccount_DialogHelper([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    new-array v1, v7, [Ljava/lang/String;

    const-string v0, "jodoplay_use_new_account"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "jodoplay_facebook_privacy_policy"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/jodo/paysdk/JodoLoginActivity;->showFacebookSelectAccount_DialogHelper([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    goto :goto_1
.end method

.method private showFacebookSelectAccount_DialogHelper([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 7

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "jodoplay_facebook_account_login"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/jodo/paysdk/q;

    move-object v1, p0

    move v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jodo/paysdk/q;-><init>(Lcom/jodo/paysdk/JodoLoginActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6, p1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSelectAccount()V
    .locals 5

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getNormalAccountList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "jodoplay_use_exist_account"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/jodo/paysdk/z;

    invoke-direct {v0, p0, v2}, Lcom/jodo/paysdk/z;-><init>(Lcom/jodo/paysdk/JodoLoginActivity;Ljava/util/List;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static singleGameLogin(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->generateVisitorOpenid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->generateVisitorToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/g/c;

    const/4 v2, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/jodo/paysdk/y;

    invoke-direct {v6, p0}, Lcom/jodo/paysdk/y;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jodo/paysdk/g/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILcom/jodo/paysdk/g/g;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/g/c;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method changeView()V
    .locals 5

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    iget v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anim"

    const-string v4, "jodoplay_slide_up_in"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "anim"

    const-string v4, "jodoplay_slide_down_out"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method

.method initAccountBoxViews(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->initPwdView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->initQuickTrial(Landroid/view/View;)V

    const-string v0, "jodoplay_otherlogin_login"

    invoke-virtual {p0, p1, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->initLoginOtherView(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_name_box"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_login_btn"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mLoginBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_account_select_btn"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mSelectAccountBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_forget_psw_btn"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mForgetPswBtn:Landroid/widget/Button;

    const-string v0, "jodoplay_nextstep_2_register"

    invoke-virtual {p0, p1, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->initNextView(Landroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->initAccountView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jodoplay_title_login"

    invoke-static {v0, p1, v1}, Lcom/jodo/paysdk/l;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/jodo/paysdk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mBaseTitle:Lcom/jodo/paysdk/l;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mBaseTitle:Lcom/jodo/paysdk/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/l;->a(Z)Lcom/jodo/paysdk/l;

    move-result-object v0

    const-string v1, "jodoplay_title_login"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/l;->a(Ljava/lang/String;)Lcom/jodo/paysdk/l;

    return-void
.end method

.method initLoginOtherView(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1, p2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "jodoplay_icon_fb"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookBtn:Landroid/widget/ImageView;

    return-void
.end method

.method initNextView(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_to_next_page"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mToNext:Landroid/widget/LinearLayout;

    return-void
.end method

.method initPwdView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_psw_box"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    return-void
.end method

.method initQuickTrial(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_login_trynow"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mQuickTrial:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mQuickTrial:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getEnabledVisitorView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mQuickTrial:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mQuickTrial:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method initRegisterBoxViews(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->initPwdView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_agreemeng_textview"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAgreeMentBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_register_btn"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegitsterBtn:Landroid/widget/Button;

    const-string v0, "jodoplay_nextstep_2_login"

    invoke-virtual {p0, p1, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->initNextView(Landroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/JodoLoginActivity;->initRegisterView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jodoplay_title_register"

    invoke-static {v0, p1, v1}, Lcom/jodo/paysdk/l;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/jodo/paysdk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mBaseTitle:Lcom/jodo/paysdk/l;

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mBaseTitle:Lcom/jodo/paysdk/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/l;->a(Z)Lcom/jodo/paysdk/l;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/t;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/t;-><init>(Lcom/jodo/paysdk/JodoLoginActivity;)V

    invoke-virtual {v0, v1, p0}, Lcom/jodo/paysdk/l;->a(Lcom/jodo/paysdk/m;Ljava/lang/Object;)Lcom/jodo/paysdk/l;

    move-result-object v0

    const-string v1, "jodoplay_title_register"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/l;->a(Ljava/lang/String;)Lcom/jodo/paysdk/l;

    return-void
.end method

.method public initView()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->setupViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method initViews()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_1
    iget v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->initListener()V

    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->initPreAccountBoxViews(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->initAccountBoxViews(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->initRegisterBoxViews(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->initRegisterConfirmViews(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegitsterBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->register()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mLoginBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->login()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mToNext:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->setupNextViews()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mRegisterConfirmBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->registerConfirm()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mSelectAccountBtn:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->showSelectAccount()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAgreeMentBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showAgreementView(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mFacebookBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->showFacebookSelectAccount()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mQuickTrial:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->generateVisitorOpenid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->generateVisitorToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/jodo/paysdk/JodoLoginActivity;->oauthLogin(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/jodo/paysdk/JodoLoginActivity;->setActionBtnEnable(Z)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mGoogleBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mForgetPswBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showRegetPswView(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPreTryBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->generateVisitorOpenid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/JodoLoginActivity;->generateVisitorToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/jodo/paysdk/JodoLoginActivity;->oauthLogin(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/jodo/paysdk/JodoLoginActivity;->setActionBtnEnable(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mPreLoginBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->setupLoginViews()V

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/jodo/paysdk/a/a;->onDetachedFromWindow()V

    return-void
.end method

.method public onImageDownloadFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onImageDownloadSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {p1}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onLoginFailed(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoginFailed(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->setActionBtnEnable(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->showLoadingView(ZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess(Lcom/jodo/paysdk/account/JodoAccount;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->Finish()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->setActionBtnEnable(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoSysNoticeActivity;->OnLoginSuccess(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRegisterFailed(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->setActionBtnEnable(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->showLoadingView(ZLjava/lang/String;)V

    const/16 v0, 0xfb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jodoplay_login_name_already_exists"

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->setupLoginViews()V

    iget-object v1, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/jodo/paysdk/JodoLoginActivity;->toast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRegisterSuccess(Lcom/jodo/paysdk/account/JodoAccount;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->showLoadingView(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->setupRegisterConfirmViews()V

    const-string v0, "jodoplay_save_account_tips"

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    :cond_0
    return v3
.end method

.method renderView()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jodo/paysdk/JodoLoginActivity;->setActionBtnEnable(Z)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->changeView()V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->initViews()V

    return-void
.end method

.method setupLoginViews()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->renderView()V

    return-void
.end method

.method setupNextViews()V
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->setupRegisterViews()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->setupLoginViews()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setupPreLoginViews()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->renderView()V

    return-void
.end method

.method setupRegisterConfirmViews()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->renderView()V

    return-void
.end method

.method setupRegisterViews()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mWindowIndex:I

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->renderView()V

    return-void
.end method

.method protected setupViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "jodoplay_main"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->setContentLayout(I)V

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "jodoplay_viewflipper"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/jodo/paysdk/JodoLoginActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/jodo/paysdk/JodoLoginActivity;->renderView()V

    return-void
.end method
