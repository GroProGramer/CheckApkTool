.class final Lcom/jodo/paysdk/d/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:I

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/d/r;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/jodo/paysdk/d/r;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/jodo/paysdk/d/r;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/jodo/paysdk/d/r;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/jodo/paysdk/d/r;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/jodo/paysdk/d/r;->f:Ljava/lang/String;

    iput p7, p0, Lcom/jodo/paysdk/d/r;->g:I

    iput-boolean p8, p0, Lcom/jodo/paysdk/d/r;->h:Z

    iput-object p9, p0, Lcom/jodo/paysdk/d/r;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/jodo/paysdk/d/r;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/jodo/paysdk/d/r;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/jodo/paysdk/d/r;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/jodo/paysdk/d/r;->m:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/jodo/paysdk/d/r;->a:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/jodo/paysdk/model/b;

    iget-object v1, p0, Lcom/jodo/paysdk/d/r;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/paysdk/d/r;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/d/r;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/jodo/paysdk/d/r;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/jodo/paysdk/d/r;->f:Ljava/lang/String;

    iget v6, p0, Lcom/jodo/paysdk/d/r;->g:I

    invoke-virtual {v12}, Lcom/jodo/paysdk/model/b;->b()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v8, p0, Lcom/jodo/paysdk/d/r;->h:Z

    iget-object v9, p0, Lcom/jodo/paysdk/d/r;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/jodo/paysdk/d/r;->j:Ljava/lang/String;

    iget-object v11, p0, Lcom/jodo/paysdk/d/r;->k:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/jodo/paysdk/model/b;->a()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/jodo/paysdk/d/r;->l:Ljava/lang/String;

    invoke-static/range {v1 .. v13}, Lcom/jodo/paysdk/d/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/paysdk/d/r;->m:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
