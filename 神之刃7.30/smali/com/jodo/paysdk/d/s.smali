.class final Lcom/jodo/paysdk/d/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Z

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/d/s;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/d/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/d/s;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/jodo/paysdk/d/s;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/jodo/paysdk/d/s;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/jodo/paysdk/d/s;->f:Ljava/lang/String;

    iput p7, p0, Lcom/jodo/paysdk/d/s;->g:I

    iput p8, p0, Lcom/jodo/paysdk/d/s;->h:I

    iput-boolean p9, p0, Lcom/jodo/paysdk/d/s;->i:Z

    iput-object p10, p0, Lcom/jodo/paysdk/d/s;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/jodo/paysdk/d/s;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/jodo/paysdk/d/s;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCloseWebview(Ljava/lang/String;)V
    .locals 15

    invoke-static {}, Lcom/jodo/paysdk/f/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jodo/paysdk/f/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/d/s;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/d/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/jodo/paysdk/d/s;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/d/s;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/jodo/paysdk/d/s;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/jodo/paysdk/d/s;->f:Ljava/lang/String;

    iget v6, p0, Lcom/jodo/paysdk/d/s;->g:I

    iget v7, p0, Lcom/jodo/paysdk/d/s;->h:I

    iget-boolean v8, p0, Lcom/jodo/paysdk/d/s;->i:Z

    iget-object v9, p0, Lcom/jodo/paysdk/d/s;->j:Ljava/lang/String;

    iget-object v10, p0, Lcom/jodo/paysdk/d/s;->k:Ljava/lang/String;

    const-string v11, ""

    iget-object v12, p0, Lcom/jodo/paysdk/d/s;->l:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v14}, Lcom/jodo/paysdk/CheckPayResultService;->call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onOpenWebview()V
    .locals 0

    return-void
.end method
