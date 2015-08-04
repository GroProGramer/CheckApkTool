.class final Lcom/jodo/paysdk/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/f/c;

.field final synthetic b:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/f/c;Lcom/facebook/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/f/b;->a:Lcom/jodo/paysdk/f/c;

    iput-object p2, p0, Lcom/jodo/paysdk/f/b;->b:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/f/b;->a:Lcom/jodo/paysdk/f/c;

    iget-object v1, p0, Lcom/jodo/paysdk/f/b;->b:Lcom/facebook/Session;

    invoke-interface {v0, p1, v1}, Lcom/jodo/paysdk/f/c;->a(Lcom/facebook/model/GraphUser;Lcom/facebook/Session;)V

    return-void
.end method
