.class public final Lcom/jodo/paysdk/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static g:Ljava/lang/String;

.field private static h:Lcom/jodo/paysdk/l;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ImageView;

.field d:Lcom/jodo/paysdk/m;

.field e:Landroid/widget/ImageView;

.field f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/l;->g:Ljava/lang/String;

    sput-object v0, Lcom/jodo/paysdk/l;->h:Lcom/jodo/paysdk/l;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/paysdk/l;->d:Lcom/jodo/paysdk/m;

    iput-object p1, p0, Lcom/jodo/paysdk/l;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/jodo/paysdk/l;->a:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/jodo/paysdk/l;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_title_text"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/paysdk/l;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jodo/paysdk/l;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_title_close"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jodo/paysdk/l;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jodo/paysdk/l;->a:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "jodoplay_divider_in_title"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jodo/paysdk/l;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jodo/paysdk/l;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/l;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/l;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/jodo/paysdk/l;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/l;->h:Lcom/jodo/paysdk/l;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/l;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/l;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/l;->h:Lcom/jodo/paysdk/l;

    new-instance v0, Lcom/jodo/paysdk/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/jodo/paysdk/l;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    sput-object v0, Lcom/jodo/paysdk/l;->h:Lcom/jodo/paysdk/l;

    :cond_1
    sget-object v0, Lcom/jodo/paysdk/l;->h:Lcom/jodo/paysdk/l;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/jodo/paysdk/m;Ljava/lang/Object;)Lcom/jodo/paysdk/l;
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/l;->d:Lcom/jodo/paysdk/m;

    iput-object p2, p0, Lcom/jodo/paysdk/l;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/jodo/paysdk/l;
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/l;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/l;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final a(Z)Lcom/jodo/paysdk/l;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/l;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/l;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/l;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/l;->d:Lcom/jodo/paysdk/m;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/l;->d:Lcom/jodo/paysdk/m;

    iget-object v1, p0, Lcom/jodo/paysdk/l;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/jodo/paysdk/m;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
