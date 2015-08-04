.class final Lcom/jodo/paysdk/webviews/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/jodo/paysdk/webviews/g;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/g;Z)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/l;->b:Lcom/jodo/paysdk/webviews/g;

    iput-boolean p2, p0, Lcom/jodo/paysdk/webviews/l;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/l;->b:Lcom/jodo/paysdk/webviews/g;

    iget-boolean v1, p0, Lcom/jodo/paysdk/webviews/l;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jodo/paysdk/webviews/g;->a(ZI)V

    return-void
.end method
