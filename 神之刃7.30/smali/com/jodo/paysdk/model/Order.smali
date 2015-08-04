.class public Lcom/jodo/paysdk/model/Order;
.super Ljava/lang/Object;


# instance fields
.field private cporderid:Ljava/lang/String;

.field private orderid:Ljava/lang/String;

.field private price:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCporderid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/Order;->cporderid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/Order;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/model/Order;->price:I

    return v0
.end method

.method public setCporderid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/Order;->cporderid:Ljava/lang/String;

    return-void
.end method

.method public setOrderid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/model/Order;->orderid:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/paysdk/model/Order;->price:I

    return-void
.end method
