.class final Lcom/jodo/shares/net/shares/service/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jodo/shares/net/shares/service/RA_Service;


# direct methods
.method constructor <init>(Lcom/jodo/shares/net/shares/service/RA_Service;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/shares/net/shares/service/a;->b:Lcom/jodo/shares/net/shares/service/RA_Service;

    iput-object p2, p0, Lcom/jodo/shares/net/shares/service/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/jodo/paysdk/webviews/a;

    iget-object v1, p0, Lcom/jodo/shares/net/shares/service/a;->b:Lcom/jodo/shares/net/shares/service/RA_Service;

    iget-object v2, p0, Lcom/jodo/shares/net/shares/service/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/jodo/paysdk/webviews/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/a;->b()V

    return-void
.end method
