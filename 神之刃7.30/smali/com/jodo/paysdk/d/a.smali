.class public final Lcom/jodo/paysdk/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jodo/paysdk/d/a;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_0

    :goto_0
    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lcom/jodo/paysdk/util/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    return-void

    :cond_0
    const-string v0, "apprater"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "market_who_install_me"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v0, Lcom/jodo/paysdk/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Market Intent not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 10

    const/4 v9, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v0, "apprater"

    invoke-virtual {p0, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {p0}, Lcom/jodo/paysdk/d/e;->a(Landroid/content/Context;)Lcom/jodo/paysdk/d/e;

    move-result-object v1

    sget-boolean v2, Lcom/jodo/paysdk/d/a;->d:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/jodo/paysdk/d/e;->c()Ljava/lang/String;

    move-result-object v2

    const-string v4, "app_version_name"

    const-string v5, "none"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "app_version_name"

    invoke-virtual {v1}, Lcom/jodo/paysdk/d/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/jodo/paysdk/d/a;->b(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/jodo/paysdk/d/a;->b(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    sget-boolean v2, Lcom/jodo/paysdk/d/a;->e:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/jodo/paysdk/d/e;->b()I

    move-result v2

    const-string v4, "app_version_code"

    const/4 v5, -0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v2, v4, :cond_1

    const-string v2, "app_version_code"

    invoke-virtual {v1}, Lcom/jodo/paysdk/d/e;->b()I

    move-result v1

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/jodo/paysdk/d/a;->b(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/jodo/paysdk/d/a;->b(Landroid/content/SharedPreferences$Editor;)V

    :cond_1
    const-string v1, "dontshowagain"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const-string v1, "remindmelater"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getDaysUntilPromptForRemindLater(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getLaunchesUntilPromptForRemindLater(Landroid/content/Context;)I

    move-result p2

    :cond_3
    const-string v1, "launch_count"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    const-string v4, "launch_count"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v4, "date_firstlaunch"

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "date_firstlaunch"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_4
    int-to-long v4, p2

    cmp-long v1, v1, v4

    if-ltz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-int/lit8 v0, p1, 0x18

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v1, v4

    if-ltz v0, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    new-instance v0, Lcom/jodo/paysdk/d/ad;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jodo/paysdk/d/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->a:Ljava/lang/String;

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->b:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "dialog_title"

    const-string v4, "\u652f\u6301 %s"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "rate_message"

    const-string v4, "\u5982\u679c\u60a8\u89c9\u5f97\u6211\u4eec\u6e38\u620f\u4e0d\u9519\uff0c\u8bf7\u82b1\u7247\u523b\u65f6\u95f4\u5230\u5e02\u573a\u7ed9\u6211\u4eec\u4e00\u4e2a5\u661f\u597d\u8bc4\uff01\u611f\u8c22\u60a8\u7684\u652f\u6301\uff01"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "rate"

    const-string v4, "5\u661f\u597d\u8bc4"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "later"

    const-string v4, "\u7a0d\u540e\u63d0\u9192\u6211"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "no_thanks"

    const-string v4, "\u4e0d\u591f\u597d\u7528"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    move-object v1, v0

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_a

    sget-boolean v0, Lcom/jodo/paysdk/d/a;->b:Z

    if-eqz v0, :cond_a

    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-boolean v0, Lcom/jodo/paysdk/d/a;->a:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    :goto_2
    invoke-direct {v2, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_3
    invoke-static {p0}, Lcom/jodo/paysdk/d/e;->a(Landroid/content/Context;)Lcom/jodo/paysdk/d/e;

    move-result-object v4

    const-string v0, "dialog_title"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/jodo/paysdk/d/e;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "rate_message"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/jodo/paysdk/d/e;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "rate"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v4, Lcom/jodo/paysdk/d/b;

    invoke-direct {v4, p0, v3}, Lcom/jodo/paysdk/d/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "later"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v4, Lcom/jodo/paysdk/d/c;

    invoke-direct {v4, v3}, Lcom/jodo/paysdk/d/c;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-boolean v0, Lcom/jodo/paysdk/d/a;->c:Z

    if-nez v0, :cond_5

    const-string v0, "no_thanks"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/jodo/paysdk/d/d;

    invoke-direct {v1, v3}, Lcom/jodo/paysdk/d/d;-><init>(Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jodo/paysdk/d/a;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/d/a;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    sget-object v0, Lcom/jodo/paysdk/d/a;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_6
    invoke-static {v3}, Lcom/jodo/paysdk/d/a;->b(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "dialog_title"

    const-string v4, "\u652f\u6301 %s"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "rate_message"

    const-string v4, "\u5982\u679c\u60a8\u89ba\u5f97\u6211\u5011App\u4e0d\u932f\uff0c\u8acb\u82b1\u7247\u523b\u6642\u9593\u5230\u5e02\u5834\u7d66\u6211\u5011\u4e00\u500b5\u661f\u597d\u8a55\uff01\u611f\u8b1d\u4f60\u7684\u652f\u6301\uff01"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "rate"

    const-string v4, "5\u661f\u597d\u8a55"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "later"

    const-string v4, "\u7a0d\u5f8c\u63d0\u9192\u6211"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "no_thanks"

    const-string v4, "\u4e0d\u5920\u597d\u7528"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    move-object v1, v0

    goto/16 :goto_1

    :cond_8
    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "dialog_title"

    const-string v4, "Rate %s"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "rate_message"

    const-string v4, "If you enjoy using this app, please take a moment to rate it. Thanks for your support!"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "rate"

    const-string v4, "Rate Now"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "later"

    const-string v4, "Later"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    const-string v2, "no_thanks"

    const-string v4, "thanks"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    move-object v1, v0

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x3

    goto/16 :goto_2

    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "apprater"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "market_who_install_me"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/jodo/paysdk/d/a;->b(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic a(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    invoke-static {p0}, Lcom/jodo/paysdk/d/a;->b(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "apprater"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dontshowagain"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "remindmelater"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "launch_count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "date_firstlaunch"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/jodo/paysdk/d/a;->b(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static b(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
