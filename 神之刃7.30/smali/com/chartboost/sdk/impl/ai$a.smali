.class public Lcom/chartboost/sdk/impl/ai$a;
.super Lcom/chartboost/sdk/impl/ah$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic e:Lcom/chartboost/sdk/impl/ai;

.field private i:Lcom/chartboost/sdk/impl/bl;

.field private j:Lcom/chartboost/sdk/impl/ap;

.field private k:Lcom/chartboost/sdk/impl/am;

.field private l:Lcom/chartboost/sdk/impl/ag;

.field private m:Lcom/chartboost/sdk/impl/ak;

.field private n:Lcom/chartboost/sdk/impl/bl;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 83
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/ah$a;-><init>(Lcom/chartboost/sdk/impl/ah;Landroid/content/Context;)V

    .line 86
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v0, Lcom/chartboost/sdk/impl/am;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/am;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    .line 88
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/am;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/impl/ap;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/ap;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ap;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 95
    new-instance v0, Lcom/chartboost/sdk/impl/ag;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/ag;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ag;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 99
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->b(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_1

    .line 100
    new-instance v0, Lcom/chartboost/sdk/impl/ak;

    invoke-direct {v0, p2, p1}, Lcom/chartboost/sdk/impl/ak;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ak;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 106
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a$1;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/chartboost/sdk/impl/ai$a$1;-><init>(Lcom/chartboost/sdk/impl/ai$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    .line 117
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 121
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/chartboost/sdk/impl/ai$a$2;-><init>(Lcom/chartboost/sdk/impl/ai$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    .line 127
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->addView(Landroid/view/View;)V

    .line 131
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "background-color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "border-color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "progress-color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "radius"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->D:Z

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->c()Lcom/chartboost/sdk/impl/al;

    move-result-object v0

    .line 137
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "background-color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/al;->a(I)V

    .line 138
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "border-color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/al;->b(I)V

    .line 139
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "progress-color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/al;->c(I)V

    .line 140
    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "radius"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->j()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/al;->b(F)V

    .line 143
    :cond_2
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "video-controls-background"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "video-controls-background"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ap;->a(I)V

    .line 147
    :cond_3
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->e(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->r:Z

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "post-video-toaster"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "post-video-toaster"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "tagline"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_4
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->f(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->q:Z

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "confirmation"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "confirmation"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/am;->a(Ljava/lang/String;I)V

    .line 157
    :cond_5
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->g(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->s:Z

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-reward-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "inside-top"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/chartboost/sdk/impl/an$a;->a:Lcom/chartboost/sdk/impl/an$a;

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/impl/an$a;)V

    .line 161
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "post-video-reward-toaster"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 162
    iget-object v0, p1, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 166
    :cond_6
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->h(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "video-click-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->d()V

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "video-progress-timer-enabled"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->i(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ap;->c(Z)V

    .line 171
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->F:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/ai;->E:Z

    if-eqz v0, :cond_9

    .line 172
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :cond_9
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ai;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 175
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->i(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    if-eqz v0, :cond_b

    const-string v0, "video-portrait"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 176
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ap;->a(Ljava/lang/String;)V

    .line 179
    return-void

    .line 158
    :cond_a
    sget-object v0, Lcom/chartboost/sdk/impl/an$a;->b:Lcom/chartboost/sdk/impl/an$a;

    goto/16 :goto_0

    .line 175
    :cond_b
    const-string v0, "video-landscape"

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai$1;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/ai$a;-><init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ak;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai$a;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/ai$b;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iput-object p1, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    .line 347
    sget-object v0, Lcom/chartboost/sdk/impl/ai$2;->a:[I

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/ai$b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 388
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->f()Z

    move-result v0

    .line 389
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bl;

    move-result-object v3

    .line 390
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 391
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v4, v0, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 392
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    .line 393
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 394
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v3, v2, v0, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 397
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->E:Z

    if-eqz v0, :cond_2

    .line 398
    :cond_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 399
    :cond_2
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 400
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-eq p1, v0, :cond_a

    :goto_3
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ai$a;->a(Z)V

    .line 401
    return-void

    .line 349
    :pswitch_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 350
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->p(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v3, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v3, :cond_3

    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 354
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 355
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ap;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 349
    goto :goto_4

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 361
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->q(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v3, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v3, :cond_5

    .line 362
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 364
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ap;->setEnabled(Z)V

    goto/16 :goto_0

    .line 371
    :pswitch_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 372
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->r(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v3, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v3, :cond_6

    .line 373
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 374
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 375
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1, v3, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 376
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->r:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 378
    :goto_5
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v3, v0, v4, p2}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;Z)V

    .line 379
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ap;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->t:Z

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->e(Z)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 376
    goto :goto_5

    :cond_8
    move v0, v2

    .line 398
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 399
    goto/16 :goto_2

    :cond_a
    move v1, v2

    .line 400
    goto/16 :goto_3

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai$a;Z)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ai$a;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 280
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v3, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v3, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->q:Z

    if-eqz v0, :cond_2

    .line 284
    const-string v0, "integrated"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->J:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    goto :goto_0

    .line 288
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "timer"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v3, "delay"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    const-string v3, "InterstitialVideoViewProtocol"

    const-string v4, "controls starting %s, setting timer"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Z

    if-eqz v0, :cond_3

    const-string v0, "visible"

    :goto_1
    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/ai;->p:Z

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ap;->a(Z)V

    .line 293
    const-wide v2, 0x408f400000000000L    # 1000.0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v4, "timer"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v4, "delay"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->g(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    new-instance v5, Lcom/chartboost/sdk/impl/ai$a$3;

    invoke-direct {v5, p0}, Lcom/chartboost/sdk/impl/ai$a$3;-><init>(Lcom/chartboost/sdk/impl/ai$a;)V

    invoke-static {v0, v4, v5, v2, v3}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/impl/ai;Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 304
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ai;->J:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v3, v3, Lcom/chartboost/sdk/impl/ai;->l:I

    invoke-static {v0, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->e()V

    .line 306
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-gt v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->o(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->g()V

    goto/16 :goto_0

    .line 291
    :cond_3
    const-string v0, "hidden"

    goto :goto_1

    .line 302
    :cond_4
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/impl/ap;->a(Z)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private d(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 314
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->f()V

    .line 315
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->J:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-eq v0, v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-reward-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->e(Z)V

    .line 325
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    .line 327
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->requestLayout()V

    goto :goto_0
.end method

.method private e(Z)V
    .locals 4

    .prologue
    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Z)V

    .line 338
    :goto_0
    sget-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ai$a$4;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ai$a$4;-><init>(Lcom/chartboost/sdk/impl/ai$a;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 343
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->m:Lcom/chartboost/sdk/impl/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ak;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(FF)V
    .locals 5

    .prologue
    .line 461
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_2

    .line 468
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai$a;->h()V

    .line 466
    const-string v0, "insterstitial"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ai;->v(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected a(II)V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v1, -0x1

    .line 207
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/impl/ah$a;->a(II)V

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, v9}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v2

    .line 215
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->f:Lcom/chartboost/sdk/impl/bk;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bk;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    iget-object v7, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    :goto_0
    invoke-virtual {v7, v3, v1, v12}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 227
    iget-object v7, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    if-eqz v2, :cond_3

    const-string v1, "replay-portrait"

    :goto_1
    invoke-virtual {v7, v1}, Lcom/chartboost/sdk/impl/ai;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 228
    iget v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v7, v7

    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    add-float/2addr v7, v8

    iget v8, v1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 229
    iget v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v8, v8

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v10

    add-float/2addr v0, v8

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v10

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 230
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v7, p1, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 231
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 232
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->bringToFront()V

    .line 233
    if-eqz v2, :cond_4

    .line 234
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 239
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v1

    if-nez v1, :cond_5

    .line 241
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 242
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 243
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 244
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 246
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 247
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 248
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 249
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 263
    :goto_3
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 264
    const/16 v1, 0x48

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 265
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 266
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x48

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->m(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/am;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/ap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->l:Lcom/chartboost/sdk/impl/ag;

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/bl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->n(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->k:Lcom/chartboost/sdk/impl/am;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/am;->a()V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->a()V

    .line 277
    return-void

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    goto/16 :goto_0

    .line 227
    :cond_3
    const-string v1, "replay-landscape"

    goto/16 :goto_1

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->i:Lcom/chartboost/sdk/impl/bl;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    goto/16 :goto_2

    .line 252
    :cond_5
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->G:Lcom/chartboost/sdk/Libraries/j;

    .line 255
    :goto_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v2, v7, v1, v12}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V

    .line 256
    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 257
    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 258
    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 259
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v2, v7}, Lcom/chartboost/sdk/impl/bl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    goto/16 :goto_3

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->H:Lcom/chartboost/sdk/Libraries/j;

    goto :goto_4
.end method

.method public b(Z)Lcom/chartboost/sdk/impl/bl;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->r()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->n:Lcom/chartboost/sdk/impl/bl;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->g:Lcom/chartboost/sdk/impl/bl;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->l()V

    .line 426
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah$a;->b()V

    .line 427
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah$a;->d()V

    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ai;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->c(Z)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    invoke-direct {p0, v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->a(Lcom/chartboost/sdk/impl/ai$b;Z)V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 194
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    .line 195
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->h()V

    .line 196
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v1, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    .line 197
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->j(Lcom/chartboost/sdk/impl/ai;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->k(Lcom/chartboost/sdk/impl/ai;)V

    .line 199
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->n:I

    if-lt v0, v2, :cond_0

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->l(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->f()V

    .line 202
    :cond_0
    return-void
.end method

.method protected f()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 404
    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v3, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v3, :cond_3

    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v2, :cond_3

    .line 408
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->s(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->a()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v3, "delay"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(F)F

    move-result v0

    .line 410
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 411
    :goto_1
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iput v0, v3, Lcom/chartboost/sdk/impl/ai;->u:I

    .line 412
    if-ltz v0, :cond_2

    .line 413
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ap;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/chartboost/sdk/impl/bh$a;->d()I

    move-result v3

    if-le v0, v3, :cond_3

    move v0, v1

    .line 420
    :goto_2
    return v0

    .line 408
    :cond_0
    const-string v0, "landscape"

    goto :goto_0

    .line 410
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 416
    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method protected g()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 431
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->I:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "cancel-popup"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "confirm"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->g()V

    .line 436
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v2, :cond_0

    .line 437
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->n()V

    .line 457
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    .line 444
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->j:Lcom/chartboost/sdk/impl/ap;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->h()V

    .line 445
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v0, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v2, :cond_1

    .line 446
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v1, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/chartboost/sdk/impl/ai;->l:I

    .line 447
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->k(Lcom/chartboost/sdk/impl/ai;)V

    .line 448
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai;->t(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->f()V

    .line 451
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/f;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ai$a$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ai$a$5;-><init>(Lcom/chartboost/sdk/impl/ai$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget v2, v2, Lcom/chartboost/sdk/impl/ai;->u:I

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 471
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0, v2, v2}, Lcom/chartboost/sdk/impl/ai;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 474
    return-void
.end method

.method protected i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 477
    const-string v0, "integrated"

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ai;->J:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 478
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->e:Lcom/chartboost/sdk/impl/ai;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/impl/ai;->q:Z

    .line 479
    invoke-direct {p0, v2}, Lcom/chartboost/sdk/impl/ai$a;->c(Z)V

    .line 480
    return-void
.end method
