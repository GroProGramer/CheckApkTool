.class final Lcom/jodo/pccs3/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/jodo/pccs3/a/e;

.field final synthetic d:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Landroid/content/Context;ILcom/jodo/pccs3/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/h;->d:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/h;->a:Landroid/content/Context;

    iput p3, p0, Lcom/jodo/pccs3/h;->b:I

    iput-object p4, p0, Lcom/jodo/pccs3/h;->c:Lcom/jodo/pccs3/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/jodo/pccs3/h;->d:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/h;->a:Landroid/content/Context;

    iget v2, p0, Lcom/jodo/pccs3/h;->b:I

    iget-object v3, p0, Lcom/jodo/pccs3/h;->c:Lcom/jodo/pccs3/a/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;ILcom/jodo/pccs3/a/e;)V

    return-void
.end method
