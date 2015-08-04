.class final Lcom/jodo/paysdk/http/jodohttp/d;
.super Lcom/jodo/paysdk/http/f;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/jodo/paysdk/http/jodohttp/a;

.field final synthetic c:Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;JLcom/jodo/paysdk/http/jodohttp/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/http/jodohttp/d;->c:Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;

    iput-wide p2, p0, Lcom/jodo/paysdk/http/jodohttp/d;->a:J

    iput-object p4, p0, Lcom/jodo/paysdk/http/jodohttp/d;->b:Lcom/jodo/paysdk/http/jodohttp/a;

    invoke-direct {p0}, Lcom/jodo/paysdk/http/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/d;->c:Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;

    iget-wide v1, p0, Lcom/jodo/paysdk/http/jodohttp/d;->a:J

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a(Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;J)V

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/d;->b:Lcom/jodo/paysdk/http/jodohttp/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/jodohttp/a;->d()Lcom/jodo/paysdk/http/jodohttp/c;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/d;->c:Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;

    iget-wide v1, p0, Lcom/jodo/paysdk/http/jodohttp/d;->a:J

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;->a(Lcom/jodo/paysdk/http/jodohttp/JodoHttpService;J)V

    iget-object v0, p0, Lcom/jodo/paysdk/http/jodohttp/d;->b:Lcom/jodo/paysdk/http/jodohttp/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/jodohttp/a;->d()Lcom/jodo/paysdk/http/jodohttp/c;

    return-void
.end method
