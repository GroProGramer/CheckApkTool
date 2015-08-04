.class public Lcom/jodo/paysdk/model/UnzipInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2c6c37f25c0bd87dL


# instance fields
.field private autoDownloadExtFiles:Z

.field private enableOverride:Z

.field private storageFolderAbsolutePath:Ljava/lang/String;

.field private useCustomizedActivtiy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->useCustomizedActivtiy:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->autoDownloadExtFiles:Z

    return-void
.end method


# virtual methods
.method public getStorageFolderAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->storageFolderAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoDownloadExtFiles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->autoDownloadExtFiles:Z

    return v0
.end method

.method public isEnableOverride()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->enableOverride:Z

    return v0
.end method

.method public isUseCustomizedActivtiy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->useCustomizedActivtiy:Z

    return v0
.end method

.method public setAutoDownloadExtFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jodo/paysdk/model/UnzipInfo;->autoDownloadExtFiles:Z

    return-void
.end method

.method public setEnableOverride(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jodo/paysdk/model/UnzipInfo;->enableOverride:Z

    return-void
.end method

.method public setStorageFolderAbsolutePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/UnzipInfo;->storageFolderAbsolutePath:Ljava/lang/String;

    return-void
.end method

.method public setUseCustomizedActivtiy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jodo/paysdk/model/UnzipInfo;->useCustomizedActivtiy:Z

    return-void
.end method
