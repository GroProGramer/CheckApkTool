.class final Lcom/jodo/paysdk/webviews/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/webviews/g;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/webviews/g;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/i;->a:Lcom/jodo/paysdk/webviews/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/jodo/paysdk/webviews/j;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/webviews/j;-><init>(Lcom/jodo/paysdk/webviews/i;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;J)V

    return-void
.end method
