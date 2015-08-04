.class final Lcom/air/plugin/js/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/air/a/e;


# instance fields
.field final synthetic a:Lcom/air/plugin/js/BaseJSInterface;


# direct methods
.method constructor <init>(Lcom/air/plugin/js/BaseJSInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/air/plugin/js/c;->a:Lcom/air/plugin/js/BaseJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/content/Context;I)V
    .locals 3

    iget-object v0, p0, Lcom/air/plugin/js/c;->a:Lcom/air/plugin/js/BaseJSInterface;

    const-string v1, "loadJar"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/air/plugin/js/BaseJSInterface;->returnJs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
