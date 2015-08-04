.class public Lcom/facebook/internal/LikeButton;
.super Landroid/widget/Button;


# instance fields
.field private isLiked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/facebook/internal/LikeButton;->isLiked:Z

    invoke-direct {p0}, Lcom/facebook/internal/LikeButton;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 7

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeButton;->setGravity(I)V

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "com_facebook_likebutton_text_color"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeButton;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dimen"

    const-string v4, "com_facebook_likebutton_text_size"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/LikeButton;->setTextSize(IF)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeButton;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "com_facebook_likebutton_compound_drawable_padding"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeButton;->setCompoundDrawablePadding(I)V

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "com_facebook_likebutton_padding_left"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dimen"

    const-string v4, "com_facebook_likebutton_padding_top"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "dimen"

    const-string v5, "com_facebook_likebutton_padding_right"

    invoke-static {v3, v4, v5}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "dimen"

    const-string v6, "com_facebook_likebutton_padding_bottom"

    invoke-static {v4, v5, v6}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/internal/LikeButton;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/facebook/internal/LikeButton;->updateForLikeStatus()V

    return-void
.end method

.method private updateForLikeStatus()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/facebook/internal/LikeButton;->isLiked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "com_facebook_button_like_selected"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeButton;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "com_facebook_button_like_icon_selected"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/facebook/internal/LikeButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "com_facebook_like_button_liked"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "com_facebook_button_like"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeButton;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "com_facebook_button_like_icon"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/facebook/internal/LikeButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/LikeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "com_facebook_like_button_not_liked"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/LikeButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public setLikeState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/LikeButton;->isLiked:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/facebook/internal/LikeButton;->isLiked:Z

    invoke-direct {p0}, Lcom/facebook/internal/LikeButton;->updateForLikeStatus()V

    :cond_0
    return-void
.end method
