.class public Lcom/jodo/paysdk/model/AppInfo;
.super Ljava/lang/Object;


# static fields
.field public static final FLAG_AD:I = 0x4

.field public static final FLAG_APP:I = 0x10

.field public static final FLAG_GAME:I = 0x8

.field public static final FLAG_SYS:I = 0x1

.field public static final FLAG_THIRDPART:I = 0x2


# instance fields
.field public mAppName:Ljava/lang/String;
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mDownloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mFlag:I
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconUrl:Ljava/lang/String;
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mInstalledTime:J
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mIntent:Landroid/content/Intent;
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mOrder:I
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mPackageSize:J
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mPkgName:Ljava/lang/String;
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mStartCount:I
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mVersionCode:I
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field

.field public mVersionName:Ljava/lang/String;
    .annotation runtime Lcom/jodo/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndexFromAppList(Ljava/util/ArrayList;Lcom/jodo/paysdk/model/AppInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jodo/paysdk/model/AppInfo;",
            ">;",
            "Lcom/jodo/paysdk/model/AppInfo;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static isInAppList(Ljava/util/List;Lcom/jodo/paysdk/model/AppInfo;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jodo/paysdk/model/AppInfo;",
            ">;",
            "Lcom/jodo/paysdk/model/AppInfo;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static obtainAppInfo()Lcom/jodo/paysdk/model/AppInfo;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/jodo/paysdk/model/AppInfo;

    invoke-direct {v0}, Lcom/jodo/paysdk/model/AppInfo;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/jodo/paysdk/model/AppInfo;->mAppName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jodo/paysdk/model/AppInfo;->mInstalledTime:J

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lcom/jodo/paysdk/model/AppInfo;->mPackageSize:J

    iput v3, v0, Lcom/jodo/paysdk/model/AppInfo;->mOrder:I

    iput v3, v0, Lcom/jodo/paysdk/model/AppInfo;->mStartCount:I

    iput v3, v0, Lcom/jodo/paysdk/model/AppInfo;->mFlag:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jodo/paysdk/model/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public equalPkgName(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/jodo/paysdk/model/AppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/jodo/paysdk/model/AppInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/jodo/paysdk/model/AppInfo;

    invoke-virtual {p0}, Lcom/jodo/paysdk/model/AppInfo;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/jodo/paysdk/model/AppInfo;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mPkgName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledTime()J
    .locals 2

    iget-wide v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mInstalledTime:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mOrder:I

    return v0
.end method

.method public getPackageSize()J
    .locals 2

    iget-wide v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mPackageSize:J

    return-wide v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCount()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mStartCount:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mVersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAppIntent(Landroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/jodo/paysdk/model/AppInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setInstalledTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mInstalledTime:J

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mOrder:I

    return-void
.end method

.method public setPackageSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mPackageSize:J

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public setStartCount(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mStartCount:I

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mVersionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/AppInfo;->mVersionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jodo/paysdk/model/AppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/model/AppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
