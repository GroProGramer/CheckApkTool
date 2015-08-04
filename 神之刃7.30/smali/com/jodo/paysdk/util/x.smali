.class final Lcom/jodo/paysdk/util/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jodo/paysdk/util/z;

.field final synthetic c:Lcom/jodo/paysdk/util/y;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/util/z;Lcom/jodo/paysdk/util/y;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/util/x;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/util/x;->b:Lcom/jodo/paysdk/util/z;

    iput-object p3, p0, Lcom/jodo/paysdk/util/x;->c:Lcom/jodo/paysdk/util/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/jodo/paysdk/util/x;->b:Lcom/jodo/paysdk/util/z;

    iget-object v0, v0, Lcom/jodo/paysdk/util/z;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/jodo/paysdk/util/x;->b:Lcom/jodo/paysdk/util/z;

    iget v1, v1, Lcom/jodo/paysdk/util/z;->b:I

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/w;->a(Ljava/lang/String;I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/jodo/paysdk/util/x;->c:Lcom/jodo/paysdk/util/y;

    iget-object v3, p0, Lcom/jodo/paysdk/util/x;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/jodo/paysdk/util/x;->b:Lcom/jodo/paysdk/util/z;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/jodo/paysdk/util/y;->a(Landroid/content/Context;Lcom/jodo/paysdk/util/z;J)V

    return-void
.end method
