.class final Lcom/jodo/pccs3/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/c;->b:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lcom/jodo/pccs3/e/a;

    invoke-direct {v0}, Lcom/jodo/pccs3/e/a;-><init>()V

    iget-object v1, p0, Lcom/jodo/pccs3/c;->b:Lcom/jodo/pccs3/a;

    iget-object v2, p0, Lcom/jodo/pccs3/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/jodo/pccs3/e/a;->j()Lcom/jodo/pccs3/message/e;

    move-result-object v0

    new-instance v3, Lcom/jodo/pccs3/d;

    invoke-direct {v3, p0}, Lcom/jodo/pccs3/d;-><init>(Lcom/jodo/pccs3/c;)V

    invoke-static {v1, v2, v0, v3}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/message/d;Lcom/jodo/pccs3/a/g;)V

    return-void
.end method
