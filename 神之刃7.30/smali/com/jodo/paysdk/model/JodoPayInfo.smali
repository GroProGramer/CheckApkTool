.class public Lcom/jodo/paysdk/model/JodoPayInfo;
.super Ljava/lang/Object;


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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->price:I

    iput-boolean v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->priceFixed:Z

    return-void
.end method


# virtual methods
.method public getCporderid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->cporderid:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->price:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRolelevel()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->rolelevel:I

    return v0
.end method

.method public getRolename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->rolename:Ljava/lang/String;

    return-object v0
.end method

.method public getServerid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->serverid:Ljava/lang/String;

    return-object v0
.end method

.method public getServername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->servername:Ljava/lang/String;

    return-object v0
.end method

.method public isPriceFixed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->priceFixed:Z

    return v0
.end method

.method public setCporderid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->cporderid:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->ext:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->price:I

    return-void
.end method

.method public setPriceFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->priceFixed:Z

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public setRolelevel(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->rolelevel:I

    return-void
.end method

.method public setRolename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->rolename:Ljava/lang/String;

    return-void
.end method

.method public setServerid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->serverid:Ljava/lang/String;

    return-void
.end method

.method public setServername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/JodoPayInfo;->servername:Ljava/lang/String;

    return-void
.end method
