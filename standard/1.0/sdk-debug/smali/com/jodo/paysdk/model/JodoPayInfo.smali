.class public Lcom/jodo/paysdk/model/JodoPayInfo;
.super Ljava/lang/Object;
.source "JodoPayInfo.java"

# interfaces
.implements Lcom/jodo/common/IPublic;


# instance fields
.field private cporderid:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private price:I

.field private priceFixed:Z

.field private productName:Ljava/lang/String;

.field private rolelevel:I

.field private rolename:Ljava/lang/String;

.field private serverid:Ljava/lang/String;

.field private servername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->price:I

    .line 26
    iput-boolean v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->priceFixed:Z

    return-void
.end method


# virtual methods
.method public getCporderid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->cporderid:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->price:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRolelevel()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->rolelevel:I

    return v0
.end method

.method public getRolename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->rolename:Ljava/lang/String;

    return-object v0
.end method

.method public getServerid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->serverid:Ljava/lang/String;

    return-object v0
.end method

.method public getServername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->servername:Ljava/lang/String;

    return-object v0
.end method

.method public isPriceFixed()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->priceFixed:Z

    return v0
.end method

.method public setCporderid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cporderid"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->cporderid:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->ext:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPrice(I)V
    .locals 0
    .param p1, "price"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->price:I

    .line 107
    return-void
.end method

.method public setPriceFixed(Z)V
    .locals 0
    .param p1, "priceFixed"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->priceFixed:Z

    .line 122
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->productName:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setRolelevel(I)V
    .locals 0
    .param p1, "rolelevel"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->rolelevel:I

    .line 92
    return-void
.end method

.method public setRolename(Ljava/lang/String;)V
    .locals 0
    .param p1, "rolename"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->rolename:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setServerid(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverid"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->serverid:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setServername(Ljava/lang/String;)V
    .locals 0
    .param p1, "servername"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->servername:Ljava/lang/String;

    .line 62
    return-void
.end method
