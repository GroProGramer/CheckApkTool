.class public final Lcom/jodo/paysdk/g/k;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/jodo/paysdk/g/l;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/g/k;->a:Ljava/lang/Integer;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/g/k;->b:Ljava/lang/Integer;

    const/16 v0, -0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/g/k;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/jodo/paysdk/g/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/jodo/paysdk/g/l;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/paysdk/g/k;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/jodo/paysdk/g/k;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/g/k;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/g/k;->f:Z

    iput-object p3, p0, Lcom/jodo/paysdk/g/k;->g:Ljava/util/List;

    iput-object p4, p0, Lcom/jodo/paysdk/g/k;->h:Lcom/jodo/paysdk/g/l;

    const/4 v0, 0x1

    iput v0, p0, Lcom/jodo/paysdk/g/k;->i:I

    return-void
.end method

.method private a()Ljava/lang/Integer;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/f/f;->a:Lcom/jodo/paysdk/f/f;

    invoke-virtual {v0}, Lcom/jodo/paysdk/f/f;->a()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jodo/paysdk/g/k;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/g/k;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/paysdk/g/k;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/g/k;->g:Ljava/util/List;

    invoke-static {v1, v2, v3, v0}, Lcom/jodo/paysdk/http/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/http/a/f;->b(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/http/a/f;->c(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/f;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/jodo/paysdk/g/k;->b:Ljava/lang/Integer;

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/jodo/paysdk/g/k;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/paysdk/g/k;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/paysdk/g/k;->g:Ljava/util/List;

    invoke-static {v1, v2, v3, v0}, Lcom/jodo/paysdk/http/a/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/http/a/f;->b(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/http/a/f;->c(Z)Lcom/jodo/paysdk/http/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/f;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/jodo/paysdk/g/k;->j:Ljava/lang/String;

    sget-object v0, Lcom/jodo/paysdk/g/k;->a:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/jodo/paysdk/g/k;->c:Ljava/lang/Integer;

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/jodo/paysdk/g/k;->i:I

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/jodo/paysdk/g/k;->a()Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/jodo/paysdk/g/k;->a:Ljava/lang/Integer;

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/jodo/paysdk/g/k;->h:Lcom/jodo/paysdk/g/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/g/k;->h:Lcom/jodo/paysdk/g/l;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/jodo/paysdk/g/k;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/jodo/paysdk/g/l;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
