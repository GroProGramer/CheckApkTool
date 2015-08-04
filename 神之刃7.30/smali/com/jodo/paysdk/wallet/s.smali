.class final Lcom/jodo/paysdk/wallet/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/jodo/paysdk/wallet/l;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/wallet/l;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/s;->e:Lcom/jodo/paysdk/wallet/l;

    iput-object p2, p0, Lcom/jodo/paysdk/wallet/s;->a:Ljava/lang/String;

    iput p3, p0, Lcom/jodo/paysdk/wallet/s;->b:I

    iput-object p4, p0, Lcom/jodo/paysdk/wallet/s;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/jodo/paysdk/wallet/s;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/s;->a:Ljava/lang/String;

    const/16 v1, 0x9

    iget v2, p0, Lcom/jodo/paysdk/wallet/s;->b:I

    iget-object v3, p0, Lcom/jodo/paysdk/wallet/s;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/jodo/paysdk/wallet/s;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
