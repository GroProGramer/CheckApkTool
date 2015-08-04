.class final Lcom/jodo/paysdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    # getter for: Lcom/jodo/paysdk/ExecuteScriptService;->_instance:Lcom/jodo/paysdk/ExecuteScriptService;
    invoke-static {}, Lcom/jodo/paysdk/ExecuteScriptService;->access$000()Lcom/jodo/paysdk/ExecuteScriptService;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jodo/paysdk/ExecuteScriptService;->run(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
