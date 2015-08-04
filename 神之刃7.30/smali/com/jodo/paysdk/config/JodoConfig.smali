.class public final Lcom/jodo/paysdk/config/JodoConfig;
.super Ljava/lang/Object;


# static fields
.field public static final API_VERSION:Ljava/lang/String; = "2.3.4.6"

.field public static final CONFIG_TAG:Ljava/lang/String; = "jodoGameConfig"

.field public static final DEBUG_MODE:Z = false

.field public static final STAT_NETWORK_MAX_RETRY_TIMES:Ljava/lang/Integer;

.field public static final TAG:Ljava/lang/String; = "JODOPAYSDK"

.field private static annoucepageurl:Ljava/lang/String; = null

.field private static appsflykey:Ljava/lang/String; = null

.field private static auto_login_interval_count:I = 0x0

.field private static btn_return_to_pay_url:Ljava/lang/String; = null

.field private static buoy_autoexpand:Z = false

.field private static buoy_bbs_enabled:Z = false

.field private static buoy_bbs_url:Ljava/lang/String; = null

.field private static buoy_facebook_fans_url:Ljava/lang/String; = null

.field private static buoy_giftcardcenter_enabled:Z = false

.field private static buoy_jpoint_url:Ljava/lang/String; = null

.field private static buoy_webpay_enabled:Z = false

.field private static buoy_webpay_redirect_url:Ljava/lang/String; = null

.field private static chartboostId:Ljava/lang/String; = null

.field private static chartboostKey:Ljava/lang/String; = null

.field private static collectTk:I = 0x0

.field private static cs_contact:Ljava/lang/String; = null

.field private static cs_problem_url:Ljava/lang/String; = null

.field private static currencyCode:Ljava/lang/String; = null

.field private static daysUntilPrompt:I = 0x0

.field private static daysUntilPromptForRemindLater:I = 0x0

.field private static enableGoogleWalletBase:Z = false

.field private static enableGoogleWalletRoleLevel:I = 0x0

.field private static enableGoogleWalletSelector:Z = false

.field private static enableannouncepage:Z = false

.field private static enabledAutoLogin:Z = false

.field private static enabledJpointShortcut:Z = false

.field private static enabledQuickLogin:Z = false

.field private static enabledRememberPsw:Z = false

.field private static enabledVisitorView:Z = false

.field private static enablequitpage:Z = false

.field private static facebookAccountAppid:Ljava/lang/String; = null

.field private static facebookPromoAppid:Ljava/lang/String; = null

.field private static gw_item_list:Ljava/lang/String; = null

.field private static gw_product_prefix:Ljava/lang/String; = null

.field private static gw_publickey:Ljava/lang/String; = null

.field private static helpshift_apiKey:Ljava/lang/String; = null

.field private static helpshift_appId:Ljava/lang/String; = null

.field private static helpshift_domain:Ljava/lang/String; = null

.field private static innerPayview:I = 0x0

.field public static is_fix_black_screen:Z = false

.field private static is_open_help_center:Z = false

.field private static is_open_live_chat:Z = false

.field private static jpointShortcutWaitingTimes:I = 0x0

.field private static launchesUntilPrompt:I = 0x0

.field private static launchesUntilPromptForRemindLater:I = 0x0

.field private static moneyType:Ljava/lang/String; = null

.field public static final oneDay_ms:J = 0x5265c00L

.field public static final oneHour_ms:J = 0x36ee80L

.field public static final oneMinute_ms:J = 0xea60L

.field public static final oneMonth_ms:J = 0x9fa52400L

.field public static final oneSecond_ms:J = 0x3e8L

.field public static final oneWeek_ms:J = 0x240c8400L

.field private static quitpageurl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->STAT_NETWORK_MAX_RETRY_TIMES:Ljava/lang/Integer;

    sput-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enableGoogleWalletBase:Z

    const/16 v0, 0xf

    sput v0, Lcom/jodo/paysdk/config/JodoConfig;->enableGoogleWalletRoleLevel:I

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->enableGoogleWalletSelector:Z

    sput v1, Lcom/jodo/paysdk/config/JodoConfig;->daysUntilPrompt:I

    sput v3, Lcom/jodo/paysdk/config/JodoConfig;->launchesUntilPrompt:I

    sput v3, Lcom/jodo/paysdk/config/JodoConfig;->daysUntilPromptForRemindLater:I

    const/4 v0, 0x7

    sput v0, Lcom/jodo/paysdk/config/JodoConfig;->launchesUntilPromptForRemindLater:I

    sput v2, Lcom/jodo/paysdk/config/JodoConfig;->innerPayview:I

    sput-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enabledVisitorView:Z

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->enabledRememberPsw:Z

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->enabledAutoLogin:Z

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->enabledJpointShortcut:Z

    sput v3, Lcom/jodo/paysdk/config/JodoConfig;->jpointShortcutWaitingTimes:I

    const-string v0, "cny_"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->gw_product_prefix:Ljava/lang/String;

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAi1ReCmwszxm3Ig+ZlFEcDl4zzryns9cMNQpObMNU5Gn2JBOgb2ww6SFTlgokzB2qMc1GmMZSnfbKyqgrnZEUNgj6HTfvBBRIeubKQXvUk+5DZ+U8NjJ+vH2wmZSsjKjzmTgly/8j4I8Evr09ldz+yPzhHvCNYY6Y3D8iER6DNSj4CLJqHd4cu/rukQHodVNWOaJUqUZMSjTOB5mnyRDq6MUjdwqP4IObgMXxm4ZbwN18p7PvclLgqzvthbYo9aX21XpgU/Rt0WT628MZUSj6QpbE9U4lLRMz2xoEe6CIlI8xm54DWM/pDY2a4og+p93BdR24Ydp77xBH0lraKMRjdQIDAQAB"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->gw_publickey:Ljava/lang/String;

    sput-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enabledQuickLogin:Z

    sput v2, Lcom/jodo/paysdk/config/JodoConfig;->collectTk:I

    const-string v0, "254781188058861"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->facebookAccountAppid:Ljava/lang/String;

    const-string v0, "749473085127302"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->facebookPromoAppid:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->gw_item_list:Ljava/lang/String;

    const-string v0, "CNY"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->moneyType:Ljava/lang/String;

    sput-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_giftcardcenter_enabled:Z

    sput-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_bbs_enabled:Z

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->buoy_bbs_url:Ljava/lang/String;

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->buoy_webpay_enabled:Z

    const-string v0, "http://pay.jodoplay.com"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->buoy_webpay_redirect_url:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->buoy_facebook_fans_url:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->buoy_jpoint_url:Ljava/lang/String;

    const-string v0, "94ae22bb9f8dc4f7b9239f0f39dc8663"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->helpshift_apiKey:Ljava/lang/String;

    const-string v0, "jodotech.helpshift.com"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->helpshift_domain:Ljava/lang/String;

    const-string v0, "jodotech_platform_20150309095023545-a9ef90b9e44073d"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->helpshift_appId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->chartboostId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->chartboostKey:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->appsflykey:Ljava/lang/String;

    const-string v0, "CNY"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->currencyCode:Ljava/lang/String;

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->enablequitpage:Z

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->quitpageurl:Ljava/lang/String;

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->enableannouncepage:Z

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->annoucepageurl:Ljava/lang/String;

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->buoy_autoexpand:Z

    const-string v0, ""

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->btn_return_to_pay_url:Ljava/lang/String;

    sput v3, Lcom/jodo/paysdk/config/JodoConfig;->auto_login_interval_count:I

    sput-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->is_open_help_center:Z

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->is_open_live_chat:Z

    sput-boolean v1, Lcom/jodo/paysdk/config/JodoConfig;->is_fix_black_screen:Z

    const-string v0, "support@1fpay.com"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->cs_contact:Ljava/lang/String;

    const-string v0, "http://jjtest-1.getapk.cn/pccs3/getFAQ.do"

    sput-object v0, Lcom/jodo/paysdk/config/JodoConfig;->cs_problem_url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnoucepageurl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "annoucepageurl"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->annoucepageurl:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppsflykey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "appsflykey"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->appsflykey:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAutoLoginIntervalCount(Landroid/content/Context;)I
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "auto_login_interval_count"

    sget v2, Lcom/jodo/paysdk/config/JodoConfig;->auto_login_interval_count:I

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getBtnReturnToPayUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "btn_return_to_pay_url"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->btn_return_to_pay_url:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuoyAutoexpand(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "buoy_autoexpand"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_autoexpand:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBuoyBbsEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "buoy_bbs_enabled"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_bbs_enabled:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBuoyBbsUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "buoy_bbs_url"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_bbs_url:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuoyFacebookFansUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "buoy_facebook_fans_url"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_facebook_fans_url:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuoyGiftcardcenterEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "buoy_giftcardcenter_enabled"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_giftcardcenter_enabled:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBuoyJpointUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "buoy_jpoint_url"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_jpoint_url:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBuoyWebpayEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "buoy_webpay_enabled"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_webpay_enabled:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBuoyWebpayRedirectUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "buoy_webpay_redirect_url"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->buoy_webpay_redirect_url:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChartboostId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "chartboostId"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->chartboostId:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChartboostKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "chartboostKey"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->chartboostKey:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectTk(Landroid/content/Context;)I
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "collectTk"

    sget v2, Lcom/jodo/paysdk/config/JodoConfig;->collectTk:I

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCsContact(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "cs_contact"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->cs_contact:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCsProblemUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "cs_problem_url"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->cs_problem_url:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "currencyCode"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->currencyCode:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDaysUntilPrompt(Landroid/content/Context;)I
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "daysUntilPrompt"

    sget v2, Lcom/jodo/paysdk/config/JodoConfig;->daysUntilPrompt:I

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDaysUntilPromptForRemindLater(Landroid/content/Context;)I
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "daysUntilPromptForRemindLater"

    sget v2, Lcom/jodo/paysdk/config/JodoConfig;->daysUntilPromptForRemindLater:I

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEnableGoogleWalletBase(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enableGoogleWalletBase"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enableGoogleWalletBase:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnableGoogleWalletRoleLevel(Landroid/content/Context;)I
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enableGoogleWalletRoleLevel"

    sget v2, Lcom/jodo/paysdk/config/JodoConfig;->enableGoogleWalletRoleLevel:I

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEnableGoogleWalletSelector(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enableGoogleWalletSelector"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enableGoogleWalletSelector:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnableannouncepage(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enableannouncepage"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enableannouncepage:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnabledAutoLogin(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enabledAutoLogin"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enabledAutoLogin:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnabledJpointShortcut(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enabledJpointShortcut"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enabledJpointShortcut:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnabledQuickLogin(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enabledQuickLogin"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enabledQuickLogin:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnabledRememberPsw(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enabledRememberPsw"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enabledRememberPsw:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnabledVisitorView(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enabledVisitorView"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enabledVisitorView:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnablequitpage(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "enablequitpage"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->enablequitpage:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFacebookAccountAppid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "facebookAccountAppid"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->facebookAccountAppid:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFacebookPromoAppid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "facebookPromoAppid"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->facebookPromoAppid:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGwItemList(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "gw_item_list"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->gw_item_list:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGwProductPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "gw_product_prefix"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->gw_product_prefix:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGwPublickey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "gw_publickey"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->gw_publickey:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHelpshiftApiKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "helpshift_apiKey"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->helpshift_apiKey:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHelpshiftAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "helpshift_appId"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->helpshift_appId:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHelpshiftDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "helpshift_domain"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->helpshift_domain:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInnerPayview(Landroid/content/Context;)I
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "innerPayview"

    sget v2, Lcom/jodo/paysdk/config/JodoConfig;->innerPayview:I

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIsFixBlackScreen(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "is_fix_black_screen"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->is_fix_black_screen:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getIsOpenHelpCenter(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "is_open_help_center"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->is_open_help_center:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getJpointShortcutWaitingTimes(Landroid/content/Context;)I
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "jpointShortcutWaitingTimes"

    sget v2, Lcom/jodo/paysdk/config/JodoConfig;->jpointShortcutWaitingTimes:I

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLaunchesUntilPrompt(Landroid/content/Context;)I
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "launchesUntilPrompt"

    sget v2, Lcom/jodo/paysdk/config/JodoConfig;->launchesUntilPrompt:I

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLaunchesUntilPromptForRemindLater(Landroid/content/Context;)I
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "launchesUntilPromptForRemindLater"

    sget v2, Lcom/jodo/paysdk/config/JodoConfig;->launchesUntilPromptForRemindLater:I

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMoneyType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "moneyType"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->moneyType:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQuitpageurl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "quitpageurl"

    sget-object v2, Lcom/jodo/paysdk/config/JodoConfig;->quitpageurl:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isHelpCenterOpen(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "is_open_help_center"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->is_open_help_center:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLiveChatOpen(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "jodoGameConfig"

    const-string v1, "is_open_live_chat"

    sget-boolean v2, Lcom/jodo/paysdk/config/JodoConfig;->is_open_live_chat:Z

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static refreshConfigs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16

    const-class v1, Lcom/jodo/paysdk/config/JodoConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const-string v1, "jodoGameConfig"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :goto_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    array-length v11, v4

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v11, :cond_4

    aget-object v12, v4, v3

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12, v1}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v13, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12, v1}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v10, v13, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v12, v1}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    invoke-interface {v10, v13, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_2

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v14

    invoke-interface {v5, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v14, v15}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v14

    invoke-interface {v10, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_2

    :catch_7
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_8
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static refreshDynamicConfigs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jodo/paysdk/config/JodoConfig;->refreshConfigs(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
