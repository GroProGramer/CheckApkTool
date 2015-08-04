.class public final Lcom/jodo/shares/net/jd/providers/downloads/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/database/Cursor;

.field private c:Landroid/database/CharArrayBuffer;

.field private d:Landroid/database/CharArrayBuffer;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->b:Landroid/database/Cursor;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->b:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->b:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->b:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->b:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->d:Landroid/database/CharArrayBuffer;

    if-nez v1, :cond_2

    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->d:Landroid/database/CharArrayBuffer;

    :cond_2
    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->b:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->d:Landroid/database/CharArrayBuffer;

    invoke-interface {v1, v0, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->d:Landroid/database/CharArrayBuffer;

    iget v1, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->d:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {p1, v0, v6, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->c:Landroid/database/CharArrayBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->c:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v0, v1, :cond_5

    :cond_4
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->c:Landroid/database/CharArrayBuffer;

    :cond_5
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->c:Landroid/database/CharArrayBuffer;

    iget-object v2, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->d:Landroid/database/CharArrayBuffer;

    iget-object v3, v0, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p1, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget-char v4, v2, v0

    aget-char v5, v3, v0

    if-eq v4, v5, :cond_6

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v6, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static a(Lcom/jodo/shares/net/jd/providers/downloads/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/jodo/shares/net/jd/providers/downloads/g;->a(Lcom/jodo/shares/net/jd/providers/downloads/g;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->b:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->b:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/jodo/shares/net/jd/providers/downloads/al;)Lcom/jodo/shares/net/jd/providers/downloads/g;
    .locals 7

    const/4 v2, 0x0

    new-instance v6, Lcom/jodo/shares/net/jd/providers/downloads/g;

    const/4 v0, 0x0

    invoke-direct {v6, p1, p2, v0}, Lcom/jodo/shares/net/jd/providers/downloads/g;-><init>(Landroid/content/Context;Lcom/jodo/shares/net/jd/providers/downloads/al;B)V

    invoke-virtual {p0, v6}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Lcom/jodo/shares/net/jd/providers/downloads/g;)V

    invoke-static {v6}, Lcom/jodo/shares/net/jd/providers/downloads/g;->a(Lcom/jodo/shares/net/jd/providers/downloads/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v6}, Lcom/jodo/shares/net/jd/providers/downloads/g;->d()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "headers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/h;->a:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "header"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Lcom/jodo/shares/net/jd/providers/downloads/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v0, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "Cookie"

    iget-object v1, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->q:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Lcom/jodo/shares/net/jd/providers/downloads/g;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->s:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "Referer"

    iget-object v1, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->s:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Lcom/jodo/shares/net/jd/providers/downloads/g;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v6
.end method

.method public final a(Lcom/jodo/shares/net/jd/providers/downloads/g;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "_id"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->b:Ljava/lang/String;

    const-string v3, "uri"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->b:Ljava/lang/String;

    const-string v0, "no_integrity"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->c:Z

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->d:Ljava/lang/String;

    const-string v3, "hint"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    const-string v3, "_data"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->f:Ljava/lang/String;

    const-string v3, "mimetype"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->f:Ljava/lang/String;

    const-string v0, "destination"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->g:I

    const-string v0, "visibility"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->h:I

    const-string v0, "status"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    const-string v0, "numfailed"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->k:I

    const-string v0, "method"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0xfffffff

    and-int/2addr v0, v3

    iput v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->l:I

    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->m:J

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->n:Ljava/lang/String;

    const-string v3, "notificationpackage"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->n:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->o:Ljava/lang/String;

    const-string v3, "notificationclass"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->p:Ljava/lang/String;

    const-string v3, "notificationextras"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->p:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->q:Ljava/lang/String;

    const-string v3, "cookiedata"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->r:Ljava/lang/String;

    const-string v3, "useragent"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->r:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->s:Ljava/lang/String;

    const-string v3, "referer"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->s:Ljava/lang/String;

    const-string v0, "total_bytes"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->t:J

    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->u:J

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->v:Ljava/lang/String;

    const-string v3, "etag"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->v:Ljava/lang/String;

    const-string v0, "scanned"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->w:Z

    const-string v0, "deleted"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->x:Z

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->y:Ljava/lang/String;

    const-string v3, "mediaprovider_uri"

    invoke-direct {p0, v0, v3}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->y:Ljava/lang/String;

    const-string v0, "is_public_api"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->z:Z

    const-string v0, "allowed_network_types"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->A:I

    const-string v0, "allow_roaming"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->B:Z

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->C:Ljava/lang/String;

    const-string v1, "title"

    invoke-direct {p0, v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->C:Ljava/lang/String;

    iget-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->D:Ljava/lang/String;

    const-string v1, "description"

    invoke-direct {p0, v0, v1}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->D:Ljava/lang/String;

    const-string v0, "bypass_recommended_size_limit"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->E:I

    monitor-enter p0

    :try_start_0
    const-string v0, "control"

    invoke-direct {p0, v0}, Lcom/jodo/shares/net/jd/providers/downloads/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/jodo/shares/net/jd/providers/downloads/g;->i:I

    monitor-exit p0

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
