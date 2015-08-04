.class final Lcom/jodo/paysdk/wallet/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/jodo/paysdk/wallet/l;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/wallet/l;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/o;->d:Lcom/jodo/paysdk/wallet/l;

    iput-object p2, p0, Lcom/jodo/paysdk/wallet/o;->a:Ljava/lang/String;

    iput p3, p0, Lcom/jodo/paysdk/wallet/o;->b:I

    iput-object p4, p0, Lcom/jodo/paysdk/wallet/o;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/o;->a:Ljava/lang/String;

    iget v1, p0, Lcom/jodo/paysdk/wallet/o;->b:I

    iget-object v2, p0, Lcom/jodo/paysdk/wallet/o;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
