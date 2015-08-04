.class final Lcom/air/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/air/a/e;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcom/air/a/a;


# direct methods
.method constructor <init>(Lcom/air/a/a;Lcom/air/a/e;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/air/a/b;->d:Lcom/air/a/a;

    iput-object p2, p0, Lcom/air/a/b;->a:Lcom/air/a/e;

    iput-object p3, p0, Lcom/air/a/b;->b:Landroid/content/Context;

    iput p4, p0, Lcom/air/a/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/air/a/b;->a:Lcom/air/a/e;

    iget-object v1, p0, Lcom/air/a/b;->b:Landroid/content/Context;

    iget v2, p0, Lcom/air/a/b;->c:I

    invoke-interface {v0, v1, v2}, Lcom/air/a/e;->run(Landroid/content/Context;I)V

    return-void
.end method
