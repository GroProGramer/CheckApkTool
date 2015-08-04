.class public final Lcom/jodo/shares/net/shares/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static d:I

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/shares/net/shares/i;->a:Z

    sput-object v1, Lcom/jodo/shares/net/shares/i;->b:Landroid/content/Context;

    sput-object v1, Lcom/jodo/shares/net/shares/i;->c:Ljava/lang/Class;

    const/4 v0, -0x1

    sput v0, Lcom/jodo/shares/net/shares/i;->d:I

    sput-object v1, Lcom/jodo/shares/net/shares/i;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/jodo/shares/net/shares/i;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v6, 0x0

    sput-boolean v4, Lcom/jodo/shares/net/shares/i;->a:Z

    sput-object p0, Lcom/jodo/shares/net/shares/i;->b:Landroid/content/Context;

    sput-object p2, Lcom/jodo/shares/net/shares/i;->c:Ljava/lang/Class;

    sput-object p3, Lcom/jodo/shares/net/shares/i;->e:Ljava/lang/String;

    sput p4, Lcom/jodo/shares/net/shares/i;->d:I

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/jodo/shares/net/shares/service/CLSC_service;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "first"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-boolean v0, Lcom/jodo/shares/net/shares/i;->a:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.jodo.sharesdk.create_launch_shortcut_Action"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/jodo/shares/net/shares/i;->d:I

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/shares/net/shares/i;->e:Ljava/lang/String;

    return-object v0
.end method
