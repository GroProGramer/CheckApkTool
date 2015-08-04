.class final Lcom/jodo/paysdk/util/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/jodo/paysdk/util/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/util/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/jodo/paysdk/util/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/jodo/paysdk/util/o;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/paysdk/util/o;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/util/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jodo/paysdk/util/o;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/http/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jodo/paysdk/util/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/paysdk/util/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/util/o;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/jodo/paysdk/util/n;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/jodo/paysdk/util/o;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/util/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/jodo/paysdk/util/o;->e:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/util/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/paysdk/util/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/util/o;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/jodo/paysdk/util/n;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
