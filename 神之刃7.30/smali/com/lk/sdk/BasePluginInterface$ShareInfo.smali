.class public final Lcom/lk/sdk/BasePluginInterface$ShareInfo;
.super Ljava/lang/Object;
.source "BasePluginInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lk/sdk/BasePluginInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareInfo"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private imageId:I

.field private imageUrl:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->imageId:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->content:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setImageId(I)V
    .locals 0
    .param p1, "imageId"    # I

    .prologue
    .line 537
    iput p1, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->imageId:I

    .line 538
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->imageUrl:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareUrl"    # Ljava/lang/String;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->shareUrl:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->subTitle:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->title:Ljava/lang/String;

    .line 498
    return-void
.end method
