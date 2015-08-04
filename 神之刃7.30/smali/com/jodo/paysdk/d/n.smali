.class final Lcom/jodo/paysdk/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/d/m;->a:Landroid/app/Activity;

    sget-object v1, Lcom/jodo/paysdk/d/m;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jodo/paysdk/config/JodoConfig;->getDaysUntilPrompt(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/jodo/paysdk/d/m;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/jodo/paysdk/config/JodoConfig;->getLaunchesUntilPrompt(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/d/a;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
