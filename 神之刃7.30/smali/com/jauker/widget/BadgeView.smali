.class public Lcom/jauker/widget/BadgeView;
.super Landroid/widget/TextView;
.source "BadgeView.java"


# instance fields
.field private mHideOnNull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jauker/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/jauker/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jauker/widget/BadgeView;->mHideOnNull:Z

    .line 55
    invoke-direct {p0}, Lcom/jauker/widget/BadgeView;->init()V

    .line 56
    return-void
.end method

.method private dip2Px(F)I
    .locals 2
    .param p1, "dip"    # F

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v2, -0x2

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 59
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_0

    .line 61
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    const/16 v1, 0x35

    .line 61
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 65
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/jauker/widget/BadgeView;->setTextColor(I)V

    .line 70
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lcom/jauker/widget/BadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 71
    const/4 v1, 0x2

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {p0, v1, v2}, Lcom/jauker/widget/BadgeView;->setTextSize(IF)V

    .line 72
    invoke-direct {p0, v3}, Lcom/jauker/widget/BadgeView;->dip2Px(F)I

    move-result v1

    invoke-direct {p0, v4}, Lcom/jauker/widget/BadgeView;->dip2Px(F)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/jauker/widget/BadgeView;->dip2Px(F)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/jauker/widget/BadgeView;->dip2Px(F)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jauker/widget/BadgeView;->setPadding(IIII)V

    .line 75
    const/16 v1, 0x9

    const-string v2, "#d3321b"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/jauker/widget/BadgeView;->setBackground(II)V

    .line 77
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/jauker/widget/BadgeView;->setGravity(I)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/jauker/widget/BadgeView;->setHideOnNull(Z)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/jauker/widget/BadgeView;->setBadgeCount(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public decrementBadgeCount(I)V
    .locals 1
    .param p1, "decrement"    # I

    .prologue
    .line 181
    neg-int v0, p1

    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->incrementBadgeCount(I)V

    .line 182
    return-void
.end method

.method public getBadgeCount()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    .line 138
    :goto_0
    return-object v2

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "text":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getBadgeGravity()I
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v1
.end method

.method public getBadgeMargin()[I
    .locals 4

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 168
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    aput v3, v1, v2

    return-object v1
.end method

.method public incrementBadgeCount(I)V
    .locals 2
    .param p1, "increment"    # I

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getBadgeCount()Ljava/lang/Integer;

    move-result-object v0

    .line 173
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/jauker/widget/BadgeView;->setBadgeCount(I)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/jauker/widget/BadgeView;->setBadgeCount(I)V

    goto :goto_0
.end method

.method public isHideOnNull()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/jauker/widget/BadgeView;->mHideOnNull:Z

    return v0
.end method

.method public setBackground(II)V
    .locals 7
    .param p1, "dipRadius"    # I
    .param p2, "badgeColor"    # I

    .prologue
    const/4 v6, 0x0

    .line 86
    int-to-float v4, p1

    invoke-direct {p0, v4}, Lcom/jauker/widget/BadgeView;->dip2Px(F)I

    move-result v1

    .line 87
    .local v1, "radius":I
    const/16 v4, 0x8

    new-array v2, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x1

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x2

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x3

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x4

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x5

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x6

    int-to-float v5, v1

    aput v5, v2, v4

    const/4 v4, 0x7

    int-to-float v5, v1

    aput v5, v2, v4

    .line 89
    .local v2, "radiusArray":[F
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 90
    .local v3, "roundRect":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 91
    .local v0, "bgDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void
.end method

.method public setBadgeCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 126
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public setBadgeGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void
.end method

.method public setBadgeMargin(I)V
    .locals 0
    .param p1, "dipMargin"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/jauker/widget/BadgeView;->setBadgeMargin(IIII)V

    .line 155
    return-void
.end method

.method public setBadgeMargin(IIII)V
    .locals 2
    .param p1, "leftDipMargin"    # I
    .param p2, "topDipMargin"    # I
    .param p3, "rightDipMargin"    # I
    .param p4, "bottomDipMargin"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v1, p1

    invoke-direct {p0, v1}, Lcom/jauker/widget/BadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 160
    int-to-float v1, p2

    invoke-direct {p0, v1}, Lcom/jauker/widget/BadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 161
    int-to-float v1, p3

    invoke-direct {p0, v1}, Lcom/jauker/widget/BadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 162
    int-to-float v1, p4

    invoke-direct {p0, v1}, Lcom/jauker/widget/BadgeView;->dip2Px(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 163
    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-void
.end method

.method public setHideOnNull(Z)V
    .locals 1
    .param p1, "hideOnNull"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/jauker/widget/BadgeView;->mHideOnNull:Z

    .line 107
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    :cond_0
    if-nez p1, :cond_2

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_3

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 216
    .local v2, "parentContainer":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 217
    .local v1, "groupIndex":I
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "badgeContainer":Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 222
    .local v3, "parentlayoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 225
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 226
    .end local v0    # "badgeContainer":Landroid/widget/FrameLayout;
    .end local v1    # "groupIndex":I
    .end local v2    # "parentContainer":Landroid/view/ViewGroup;
    .end local v3    # "parentlayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ParentView is needed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTargetView(Landroid/widget/TabWidget;I)V
    .locals 1
    .param p1, "target"    # Landroid/widget/TabWidget;
    .param p2, "tabIndex"    # I

    .prologue
    .line 192
    invoke-virtual {p1, p2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "tabView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->setTargetView(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/jauker/widget/BadgeView;->isHideOnNull()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->setVisibility(I)V

    .line 122
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 123
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jauker/widget/BadgeView;->setVisibility(I)V

    goto :goto_0
.end method
