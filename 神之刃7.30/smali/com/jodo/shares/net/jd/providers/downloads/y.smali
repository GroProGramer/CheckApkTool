.class final Lcom/jodo/shares/net/jd/providers/downloads/y;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/io/FileOutputStream;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jodo/shares/net/jd/providers/downloads/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/y;->d:Z

    iput v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/y;->e:I

    iput v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/y;->f:I

    iput-boolean v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/y;->h:Z

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/jodo/shares/net/jd/providers/downloads/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/y;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/y;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/y;->a:Ljava/lang/String;

    return-void
.end method
