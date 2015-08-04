.class final Lcom/jodo/paysdk/d/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/d/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/d/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/d/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/jodo/paysdk/d/o;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/jodo/paysdk/d/o;->e:Ljava/lang/String;

    iput p6, p0, Lcom/jodo/paysdk/d/o;->f:I

    iput p7, p0, Lcom/jodo/paysdk/d/o;->g:I

    iput-boolean p8, p0, Lcom/jodo/paysdk/d/o;->h:Z

    iput-object p9, p0, Lcom/jodo/paysdk/d/o;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/jodo/paysdk/d/o;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/jodo/paysdk/d/o;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/jodo/paysdk/d/o;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/d/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/d/o;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/jodo/paysdk/d/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/d/o;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/jodo/paysdk/d/o;->e:Ljava/lang/String;

    iget v5, p0, Lcom/jodo/paysdk/d/o;->f:I

    iget v6, p0, Lcom/jodo/paysdk/d/o;->g:I

    iget-boolean v7, p0, Lcom/jodo/paysdk/d/o;->h:Z

    iget-object v8, p0, Lcom/jodo/paysdk/d/o;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/jodo/paysdk/d/o;->j:Ljava/lang/String;

    iget-object v10, p0, Lcom/jodo/paysdk/d/o;->k:Ljava/lang/String;

    iget-object v11, p0, Lcom/jodo/paysdk/d/o;->l:Ljava/lang/String;

    invoke-static/range {v0 .. v11}, Lcom/jodo/paysdk/d/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/jodo/paysdk/d/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/d/o;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/jodo/paysdk/d/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/d/o;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/jodo/paysdk/d/o;->e:Ljava/lang/String;

    iget v5, p0, Lcom/jodo/paysdk/d/o;->f:I

    iget v6, p0, Lcom/jodo/paysdk/d/o;->g:I

    iget-boolean v7, p0, Lcom/jodo/paysdk/d/o;->h:Z

    iget-object v8, p0, Lcom/jodo/paysdk/d/o;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/jodo/paysdk/d/o;->j:Ljava/lang/String;

    iget-object v10, p0, Lcom/jodo/paysdk/d/o;->k:Ljava/lang/String;

    iget-object v11, p0, Lcom/jodo/paysdk/d/o;->l:Ljava/lang/String;

    invoke-static/range {v0 .. v11}, Lcom/jodo/paysdk/d/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
