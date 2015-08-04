.class public Lcom/jodo/paysdk/model/UnzipInfo;
.super Ljava/lang/Object;
.source "UnzipInfo.java"

# interfaces
.implements Lcom/jodo/common/IPublic;
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

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->useCustomizedActivtiy:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->autoDownloadExtFiles:Z

    return-void
.end method


# virtual methods
.method public getStorageFolderAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->storageFolderAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoDownloadExtFiles()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->autoDownloadExtFiles:Z

    return v0
.end method

.method public isEnableOverride()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->enableOverride:Z

    return v0
.end method

.method public isUseCustomizedActivtiy()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/jodo/paysdk/model/UnzipInfo;->useCustomizedActivtiy:Z

    return v0
.end method

.method public setAutoDownloadExtFiles(Z)V
    .locals 0
    .param p1, "autoDownloadExtFiles"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/jodo/paysdk/model/UnzipInfo;->autoDownloadExtFiles:Z

    .line 29
    return-void
.end method

.method public setEnableOverride(Z)V
    .locals 0
    .param p1, "enableOverride"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/jodo/paysdk/model/UnzipInfo;->enableOverride:Z

    .line 53
    return-void
.end method

.method public setStorageFolderAbsolutePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageFolderAbsolutePath"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jodo/paysdk/model/UnzipInfo;->storageFolderAbsolutePath:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setUseCustomizedActivtiy(Z)V
    .locals 0
    .param p1, "useCustomizedActivtiy"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/jodo/paysdk/model/UnzipInfo;->useCustomizedActivtiy:Z

    .line 37
    return-void
.end method
