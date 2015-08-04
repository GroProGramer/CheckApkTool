.class final Lcom/jodo/pccs3/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jodo/pccs3/a/e;

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/e;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/g;->d:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/g;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/jodo/pccs3/g;->b:Lcom/jodo/pccs3/a/e;

    iput-object p4, p0, Lcom/jodo/pccs3/g;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/jodo/pccs3/g;->d:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/g;->b:Lcom/jodo/pccs3/a/e;

    iget-object v3, p0, Lcom/jodo/pccs3/g;->c:Ljava/lang/Exception;

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/e;Ljava/lang/Exception;)V

    return-void
.end method
