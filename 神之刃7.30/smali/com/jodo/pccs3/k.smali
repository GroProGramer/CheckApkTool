.class final Lcom/jodo/pccs3/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jodo/pccs3/a/d;

.field final synthetic c:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/k;->c:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/k;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/jodo/pccs3/k;->b:Lcom/jodo/pccs3/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/jodo/pccs3/k;->c:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/k;->b:Lcom/jodo/pccs3/a/d;

    invoke-static {v0, v1, v2}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V

    return-void
.end method
