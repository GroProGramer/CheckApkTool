.class public abstract Lcom/jodo/pccs3/message/d;
.super Lcom/jodo/pccs3/message/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
        ">",
        "Lcom/jodo/pccs3/message/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jodo/pccs3/message/f;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jodo/pccs3/message/d;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/pccs3/message/d;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/pccs3/message/d;->f:Z

    return-void
.end method

.method public static a(I)Lcom/jodo/pccs3/message/a;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/jodo/pccs3/message/e;

    invoke-direct {v0}, Lcom/jodo/pccs3/message/e;-><init>()V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/jodo/pccs3/message/e;

    invoke-direct {v0}, Lcom/jodo/pccs3/message/e;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/jodo/pccs3/message/b;

    invoke-direct {v0}, Lcom/jodo/pccs3/message/b;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;)Lcom/jodo/pccs3/message/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            "P:",
            "Ljava/lang/Object;",
            ">(TT1;)",
            "Lcom/jodo/pccs3/message/d",
            "<TT1;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getMessageType()I

    move-result v0

    invoke-static {v0}, Lcom/jodo/pccs3/message/d;->a(I)Lcom/jodo/pccs3/message/a;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/message/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jodo/pccs3/message/d;->e:Z

    invoke-virtual {v0, p0}, Lcom/jodo/pccs3/message/d;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/jodo/pccs3/message/a;)Z
    .locals 2

    invoke-interface {p0}, Lcom/jodo/pccs3/message/a;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/message/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jodo/pccs3/message/d;->d:J

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;)Lcom/jodo/pccs3/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jodo/pccs3/b/a;->a(Lcom/jodo/pccs3/message/a;)J

    return-void
.end method

.method public a(Lcom/jodo/pccs3/d/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jodo/pccs3/message/d;->d:J

    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->c()I

    move-result v0

    iput v0, p0, Lcom/jodo/pccs3/message/d;->c:I

    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/message/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jodo/pccs3/message/d;->b:J

    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/jodo/pccs3/message/d;->e:Z

    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->f()I

    move-result v0

    iput v0, p0, Lcom/jodo/pccs3/message/d;->h:I

    :goto_0
    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/message/d;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jodo/pccs3/d/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/message/d;->j:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/jodo/pccs3/message/d;->h:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/message/d;->i:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/message/d;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jodo/pccs3/message/d;->e:Z

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/jodo/pccs3/message/d;->b:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/pccs3/message/d;->c:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/jodo/pccs3/message/d;->b:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/message/d;->j:Ljava/lang/String;

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/jodo/pccs3/message/d;->d:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/jodo/pccs3/message/d;->h:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/message/d;->c:I

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/message/d;->a:Ljava/lang/String;

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jodo/pccs3/message/d;->e:Z

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/message/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/message/d;->h:I

    return v0
.end method

.method public h()Lcom/jodo/pccs3/d/a;
    .locals 3

    new-instance v0, Lcom/jodo/pccs3/d/a;

    invoke-direct {v0}, Lcom/jodo/pccs3/d/a;-><init>()V

    iget-wide v1, p0, Lcom/jodo/pccs3/message/d;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/jodo/pccs3/d/a;->b(J)V

    iget-object v1, p0, Lcom/jodo/pccs3/message/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/d/a;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/jodo/pccs3/message/d;->c:I

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/d/a;->a(I)V

    iget-wide v1, p0, Lcom/jodo/pccs3/message/d;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/jodo/pccs3/d/a;->a(J)V

    iget-boolean v1, p0, Lcom/jodo/pccs3/message/d;->e:Z

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/d/a;->a(Z)V

    iget v1, p0, Lcom/jodo/pccs3/message/d;->h:I

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/d/a;->b(I)V

    iget-object v1, p0, Lcom/jodo/pccs3/message/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/d/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/pccs3/message/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/d/a;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/pccs3/message/d;->f:Z

    return-void
.end method

.method public final l()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/message/d;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/message/d;->j:Ljava/lang/String;

    return-object v0
.end method
