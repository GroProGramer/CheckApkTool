.class final Lcom/jodo/shares/net/jd/providers/downloads/n;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:J

.field c:J

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:[Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->b:J

    iput-wide v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->c:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->g:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;JJ)V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->b:J

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    iput-wide v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->c:J

    :goto_0
    iget v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->g:[Ljava/lang/String;

    iget v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    aput-object p1, v0, v1

    :cond_1
    iget v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    return-void

    :cond_2
    iget-wide v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->c:J

    add-long/2addr v0, p4

    iput-wide v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/n;->c:J

    goto :goto_0
.end method
