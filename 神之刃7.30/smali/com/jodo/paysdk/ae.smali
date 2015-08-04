.class final Lcom/jodo/paysdk/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/jodo/paysdk/JodoPayviewActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoPayviewActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/ae;->b:Lcom/jodo/paysdk/JodoPayviewActivity;

    iput-object p2, p0, Lcom/jodo/paysdk/ae;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/jodo/paysdk/ae;->b:Lcom/jodo/paysdk/JodoPayviewActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoPayviewActivity;->finish()V

    iget-object v0, p0, Lcom/jodo/paysdk/ae;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jodo/paysdk/ae;->a:Landroid/app/Activity;

    const-string v3, "anim"

    const-string v4, "jodoplay_payview_out"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
