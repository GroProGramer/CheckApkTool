.class final Lcom/jodo/paysdk/wallet/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jodo/paysdk/wallet/l;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/wallet/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/wallet/m;->c:Lcom/jodo/paysdk/wallet/l;

    iput-object p2, p0, Lcom/jodo/paysdk/wallet/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/wallet/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/wallet/m;->a:Ljava/lang/String;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/jodo/paysdk/wallet/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/f/d;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
