.class public final Lcom/jodo/paysdk/model/FingerInfo;
.super Ljava/lang/Object;


# static fields
.field private static mInstance:Lcom/jodo/paysdk/model/FingerInfo;

.field public static tmpIdfa:Ljava/lang/String;


# instance fields
.field android_id:Ljava/lang/String;

.field bluetoothadess:Ljava/lang/String;

.field board:Ljava/lang/String;

.field bootloader:Ljava/lang/String;

.field brand:Ljava/lang/String;

.field country:Ljava/lang/String;

.field cpu_abi:Ljava/lang/String;

.field device:Ljava/lang/String;

.field dsws:Ljava/lang/String;

.field fingerprint:Ljava/lang/String;

.field getcid:Ljava/lang/String;

.field getlac:Ljava/lang/String;

.field idfa:Ljava/lang/String;

.field imei:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field isWifi:Ljava/lang/String;

.field lang:Ljava/lang/String;

.field mPkgName:F

.field manufacturer:Ljava/lang/String;

.field min_sdk:Ljava/lang/String;

.field model:Ljava/lang/String;

.field networkcountryiso:Ljava/lang/String;

.field networkoperator:Ljava/lang/String;

.field networkoperatorname:Ljava/lang/String;

.field networktype:Ljava/lang/String;

.field os_bid:Ljava/lang/String;

.field os_release:Ljava/lang/String;

.field phonenum:Ljava/lang/String;

.field phonetype:Ljava/lang/String;

.field product:Ljava/lang/String;

.field rom_display:Ljava/lang/String;

.field screendensity:Ljava/lang/String;

.field screensize:Ljava/lang/String;

.field selfpn:Ljava/lang/String;

.field selfvc:Ljava/lang/String;

.field serialno:Ljava/lang/String;

.field simcountryiso:Ljava/lang/String;

.field simoperator:Ljava/lang/String;

.field simoperatorname:Ljava/lang/String;

.field simserialnumber:Ljava/lang/String;

.field simstate:Ljava/lang/String;

.field uid:Ljava/lang/String;

.field voicemailnumber:Ljava/lang/String;

.field wifiadess:Ljava/lang/String;

.field zg:Ljava/lang/String;

.field zl:Ljava/lang/String;

.field zt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/model/FingerInfo;->tmpIdfa:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/model/FingerInfo;->initFinger(Landroid/content/Context;)V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/jodo/paysdk/model/FingerInfo;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/jodo/gson/Gson;

    invoke-direct {v0}, Lcom/jodo/gson/Gson;-><init>()V

    const-class v1, Lcom/jodo/paysdk/model/FingerInfo;

    invoke-virtual {v0, p0, v1}, Lcom/jodo/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/model/FingerInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFinger(Landroid/content/Context;)Lcom/jodo/paysdk/model/FingerInfo;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/model/FingerInfo;->mInstance:Lcom/jodo/paysdk/model/FingerInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/model/FingerInfo;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/model/FingerInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jodo/paysdk/model/FingerInfo;->mInstance:Lcom/jodo/paysdk/model/FingerInfo;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/model/FingerInfo;->mInstance:Lcom/jodo/paysdk/model/FingerInfo;

    return-object v0
.end method

.method private initFinger(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->brand:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->brand:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->brand:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->model:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->model:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->model:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->serialno:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->serialno:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->serialno:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    :try_start_4
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_release:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_release:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_release:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    :try_start_5
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->min_sdk:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->min_sdk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->min_sdk:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_5
    :try_start_6
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_bid:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_bid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_bid:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_6
    :goto_6
    :try_start_7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->manufacturer:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->manufacturer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->manufacturer:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :cond_7
    :goto_7
    :try_start_8
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->product:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->product:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->product:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :cond_8
    :goto_8
    :try_start_9
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->cpu_abi:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->cpu_abi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->cpu_abi:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :cond_9
    :goto_9
    :try_start_a
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->rom_display:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->rom_display:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->rom_display:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :cond_a
    :goto_a
    :try_start_b
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->device:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->device:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->device:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :cond_b
    :goto_b
    :try_start_c
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->fingerprint:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->fingerprint:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :cond_c
    :goto_c
    :try_start_d
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :goto_d
    :try_start_e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    :cond_d
    :goto_e
    :try_start_f
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->imsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->imsi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->imsi:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    :cond_e
    :goto_f
    :try_start_10
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->dsws:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->dsws:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->dsws:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    :cond_f
    :goto_10
    :try_start_11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonenum:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonenum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonenum:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    :cond_10
    :goto_11
    :try_start_12
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonetype:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonetype:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonetype:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    :cond_11
    :goto_12
    :try_start_13
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simserialnumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simserialnumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simserialnumber:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    :cond_12
    :goto_13
    :try_start_14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simcountryiso:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simcountryiso:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simcountryiso:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    :cond_13
    :goto_14
    :try_start_15
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperator:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperator:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    :cond_14
    :goto_15
    :try_start_16
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperatorname:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperatorname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperatorname:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    :cond_15
    :goto_16
    :try_start_17
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simstate:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simstate:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simstate:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    :cond_16
    :goto_17
    :try_start_18
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->voicemailnumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->voicemailnumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->voicemailnumber:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    :cond_17
    :goto_18
    :try_start_19
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkcountryiso:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkcountryiso:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkcountryiso:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    :cond_18
    :goto_19
    :try_start_1a
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperator:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperator:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    :cond_19
    :goto_1a
    :try_start_1b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperatorname:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperatorname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperatorname:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    :cond_1a
    :goto_1b
    :try_start_1c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->networktype:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->networktype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->networktype:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    :cond_1b
    :goto_1c
    :try_start_1d
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->wifiadess:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->wifiadess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->wifiadess:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    :cond_1c
    :goto_1d
    :try_start_1e
    invoke-static {p1}, Lcom/jodo/paysdk/util/w;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "1"

    :goto_1e
    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->isWifi:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1e

    :goto_1f
    :try_start_1f
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bluetoothadess:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bluetoothadess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bluetoothadess:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1f

    :cond_1d
    :goto_20
    :try_start_20
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_20

    move-object v0, v1

    :goto_21
    :try_start_21
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->screensize:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->screensize:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->screensize:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_21

    :cond_1e
    :goto_22
    :try_start_22
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->screendensity:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->screendensity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->screendensity:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_22

    :cond_1f
    :goto_23
    :try_start_23
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getcid:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getcid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getcid:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_23

    :cond_20
    :goto_24
    :try_start_24
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getlac:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getlac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getlac:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_24

    :cond_21
    :goto_25
    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;

    invoke-static {v1}, Lcom/jodo/paysdk/http/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/jodo/paysdk/http/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_25

    :cond_22
    :goto_26
    :try_start_26
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->board:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->board:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->board:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_26

    :cond_23
    :goto_27
    :try_start_27
    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bootloader:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bootloader:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bootloader:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_27

    :cond_24
    :goto_28
    :try_start_28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->country:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->lang:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->country:Ljava/lang/String;

    :cond_25
    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->lang:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->lang:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_28

    :cond_26
    :goto_29
    :try_start_29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->selfpn:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_29

    :goto_2a
    :try_start_2a
    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->selfpn:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->selfvc:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_2a

    :goto_2b
    :try_start_2b
    sget-object v0, Lcom/jodo/paysdk/model/FingerInfo;->tmpIdfa:Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/jodo/paysdk/model/FingerInfo;->tmpIdfa:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->idfa:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2b

    :goto_2c
    return-void

    :catch_0
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->brand:Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->model:Ljava/lang/String;

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->serialno:Ljava/lang/String;

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;

    goto/16 :goto_3

    :catch_4
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_release:Ljava/lang/String;

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->min_sdk:Ljava/lang/String;

    goto/16 :goto_5

    :catch_6
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_bid:Ljava/lang/String;

    goto/16 :goto_6

    :catch_7
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->manufacturer:Ljava/lang/String;

    goto/16 :goto_7

    :catch_8
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->product:Ljava/lang/String;

    goto/16 :goto_8

    :catch_9
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->cpu_abi:Ljava/lang/String;

    goto/16 :goto_9

    :catch_a
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->rom_display:Ljava/lang/String;

    goto/16 :goto_a

    :catch_b
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->device:Ljava/lang/String;

    goto/16 :goto_b

    :catch_c
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->fingerprint:Ljava/lang/String;

    goto/16 :goto_c

    :catch_d
    move-exception v0

    move-object v0, v2

    goto/16 :goto_d

    :catch_e
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;

    goto/16 :goto_e

    :catch_f
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->imsi:Ljava/lang/String;

    goto/16 :goto_f

    :catch_10
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->dsws:Ljava/lang/String;

    goto/16 :goto_10

    :catch_11
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonenum:Ljava/lang/String;

    goto/16 :goto_11

    :catch_12
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonetype:Ljava/lang/String;

    goto/16 :goto_12

    :catch_13
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simserialnumber:Ljava/lang/String;

    goto/16 :goto_13

    :catch_14
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simcountryiso:Ljava/lang/String;

    goto/16 :goto_14

    :catch_15
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperator:Ljava/lang/String;

    goto/16 :goto_15

    :catch_16
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperatorname:Ljava/lang/String;

    goto/16 :goto_16

    :catch_17
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->simstate:Ljava/lang/String;

    goto/16 :goto_17

    :catch_18
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->voicemailnumber:Ljava/lang/String;

    goto/16 :goto_18

    :catch_19
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkcountryiso:Ljava/lang/String;

    goto/16 :goto_19

    :catch_1a
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperator:Ljava/lang/String;

    goto/16 :goto_1a

    :catch_1b
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperatorname:Ljava/lang/String;

    goto/16 :goto_1b

    :catch_1c
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->networktype:Ljava/lang/String;

    goto/16 :goto_1c

    :catch_1d
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->wifiadess:Ljava/lang/String;

    goto/16 :goto_1d

    :cond_27
    :try_start_2c
    const-string v0, "0"
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_1e

    goto/16 :goto_1e

    :catch_1e
    move-exception v0

    const-string v0, "0"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->isWifi:Ljava/lang/String;

    goto/16 :goto_1f

    :catch_1f
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bluetoothadess:Ljava/lang/String;

    goto/16 :goto_20

    :catch_20
    move-exception v0

    move-object v0, v2

    goto/16 :goto_21

    :catch_21
    move-exception v1

    const-string v1, "NULL"

    iput-object v1, p0, Lcom/jodo/paysdk/model/FingerInfo;->screensize:Ljava/lang/String;

    goto/16 :goto_22

    :catch_22
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->screendensity:Ljava/lang/String;

    goto/16 :goto_23

    :catch_23
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getcid:Ljava/lang/String;

    goto/16 :goto_24

    :catch_24
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getlac:Ljava/lang/String;

    goto/16 :goto_25

    :catch_25
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;

    goto/16 :goto_26

    :catch_26
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->board:Ljava/lang/String;

    goto/16 :goto_27

    :catch_27
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bootloader:Ljava/lang/String;

    goto/16 :goto_28

    :catch_28
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->country:Ljava/lang/String;

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->lang:Ljava/lang/String;

    goto/16 :goto_29

    :catch_29
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->selfpn:Ljava/lang/String;

    goto/16 :goto_2a

    :catch_2a
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->selfvc:Ljava/lang/String;

    goto/16 :goto_2b

    :cond_28
    :try_start_2d
    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->idfa:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2b

    goto/16 :goto_2c

    :catch_2b
    move-exception v0

    goto/16 :goto_2c
.end method


# virtual methods
.method public final getAndroid_id(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->android_id:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getBluetoothadess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bluetoothadess:Ljava/lang/String;

    return-object v0
.end method

.method public final getBoard()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->board:Ljava/lang/String;

    return-object v0
.end method

.method public final getBootloader()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->bootloader:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getCpu_abi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->cpu_abi:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public final getDsws()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->dsws:Ljava/lang/String;

    return-object v0
.end method

.method public final getFingerprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final getGetcid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getcid:Ljava/lang/String;

    return-object v0
.end method

.method public final getGetlac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->getlac:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdfa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method public final getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->imei:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getMin_sdk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->min_sdk:Ljava/lang/String;

    return-object v0
.end method

.method public final getMobileSummary()Ljava/lang/String;
    .locals 4

    const-string v0, "%s_%s_%s_%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jodo/paysdk/model/FingerInfo;->brand:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jodo/paysdk/model/FingerInfo;->model:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperatorname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkcountryiso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkcountryiso:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkoperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperator:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkoperatorname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->networkoperatorname:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworktype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->networktype:Ljava/lang/String;

    return-object v0
.end method

.method public final getOs_bid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_bid:Ljava/lang/String;

    return-object v0
.end method

.method public final getOs_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->os_release:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhonenum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonenum:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhonetype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->phonetype:Ljava/lang/String;

    return-object v0
.end method

.method public final getProduct()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public final getRom_display()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->rom_display:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreendensity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->screendensity:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreensize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->screensize:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelfpn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->selfpn:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelfvc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->selfvc:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialno()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->serialno:Ljava/lang/String;

    return-object v0
.end method

.method public final getSimcountryiso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->simcountryiso:Ljava/lang/String;

    return-object v0
.end method

.method public final getSimoperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperator:Ljava/lang/String;

    return-object v0
.end method

.method public final getSimoperatorname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->simoperatorname:Ljava/lang/String;

    return-object v0
.end method

.method public final getSimserialnumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->simserialnumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getSimstate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->simstate:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/jodo/paysdk/model/FingerInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/http/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/jodo/paysdk/model/FingerInfo;->getAndroid_id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/http/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->uid:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getVoicemailnumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->voicemailnumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getWifi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->isWifi:Ljava/lang/String;

    return-object v0
.end method

.method public final getWifiadess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->wifiadess:Ljava/lang/String;

    return-object v0
.end method

.method public final getZg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->zg:Ljava/lang/String;

    return-object v0
.end method

.method public final getZl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->zl:Ljava/lang/String;

    return-object v0
.end method

.method public final getZt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->zt:Ljava/lang/String;

    return-object v0
.end method

.method public final getmPkgName()F
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/model/FingerInfo;->mPkgName:F

    return v0
.end method

.method public final setZg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/FingerInfo;->zg:Ljava/lang/String;

    return-void
.end method

.method public final setZl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/FingerInfo;->zl:Ljava/lang/String;

    return-void
.end method

.method public final setZt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/FingerInfo;->zt:Ljava/lang/String;

    return-void
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/jodo/gson/Gson;

    invoke-direct {v0}, Lcom/jodo/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/jodo/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
