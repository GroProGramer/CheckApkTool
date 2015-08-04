.class public final Lcom/jodo/paysdk/buoy/a;
.super Landroid/view/View;

# interfaces
.implements Lcom/jodo/paysdk/util/f;


# static fields
.field public static volatile n:Ljava/lang/Thread;

.field private static o:Lcom/jodo/paysdk/buoy/a;

.field private static p:Z


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/WindowManager;

.field c:Landroid/app/ActivityManager;

.field d:Lcom/jodo/paysdk/buoy/d;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/widget/RelativeLayout;

.field h:Landroid/widget/LinearLayout;

.field i:Landroid/widget/ImageView;

.field j:Lcom/jodo/paysdk/util/BorderHorizontalScrollView;

.field k:Lcom/jauker/widget/BadgeView;

.field l:Lcom/jauker/widget/BadgeView;

.field m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/jodo/paysdk/buoy/a;->o:Lcom/jodo/paysdk/buoy/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/paysdk/buoy/a;->p:Z

    sput-object v1, Lcom/jodo/paysdk/buoy/a;->n:Ljava/lang/Thread;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/jodo/paysdk/buoy/b;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/buoy/b;-><init>(Lcom/jodo/paysdk/buoy/a;)V

    iput-object v0, p0, Lcom/jodo/paysdk/buoy/a;->m:Landroid/os/Handler;

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/jodo/paysdk/buoy/a;->b:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/jodo/paysdk/buoy/a;->c:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic a(III)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/jodo/paysdk/buoy/a;->b(III)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/jodo/paysdk/buoy/a;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/buoy/a;->o:Lcom/jodo/paysdk/buoy/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/buoy/a;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/buoy/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jodo/paysdk/buoy/a;->o:Lcom/jodo/paysdk/buoy/a;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/buoy/a;->o:Lcom/jodo/paysdk/buoy/a;

    return-object v0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/buoy/a;->o:Lcom/jodo/paysdk/buoy/a;

    if-nez v0, :cond_1

    const-string v0, "BuoyView not initialized."

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/jodo/paysdk/buoy/a;->o:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyAutoexpand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/buoy/a;->o:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->d:Lcom/jodo/paysdk/buoy/d;

    invoke-virtual {v0}, Lcom/jodo/paysdk/buoy/d;->b()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "buoy_red_point"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/jodo/paysdk/buoy/a;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/jodo/paysdk/buoy/c;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/buoy/c;-><init>(Lcom/jodo/paysdk/buoy/a;)V

    sput-object v0, Lcom/jodo/paysdk/buoy/a;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(III)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-lt p2, v2, :cond_0

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-object v0
.end method

.method static synthetic b(Lcom/jodo/paysdk/buoy/a;)V
    .locals 5

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jauker/widget/BadgeView;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/jauker/widget/BadgeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_buoy_detail_window_livechat"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jauker/widget/BadgeView;->setTargetView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    const/16 v1, 0x32

    const-string v2, "#FF0000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jauker/widget/BadgeView;->setBackground(II)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/jauker/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Lcom/jauker/widget/BadgeView;->setBadgeGravity(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "dimen"

    const-string v4, "jodoplay_buoy_redpoint_size_detail"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jauker/widget/BadgeView;->setWidth(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "dimen"

    const-string v4, "jodoplay_buoy_redpoint_size_detail"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jauker/widget/BadgeView;->setHeight(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jauker/widget/BadgeView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/jodo/paysdk/buoy/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/paysdk/buoy/a;->d()V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/jodo/paysdk/buoy/a;->p:Z

    return v0
.end method

.method private d()V
    .locals 8

    const/16 v7, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v1, "buoy_red_point"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v2, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    const-string v6, "live_chat"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->l:Lcom/jauker/widget/BadgeView;

    :goto_2
    if-eqz v0, :cond_3

    if-nez v5, :cond_2

    invoke-virtual {v0, v7}, Lcom/jauker/widget/BadgeView;->setVisibility(I)V

    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/jauker/widget/BadgeView;->setVisibility(I)V

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    if-eqz v0, :cond_5

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    invoke-virtual {v0, v7}, Lcom/jauker/widget/BadgeView;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    invoke-virtual {v0, v3}, Lcom/jauker/widget/BadgeView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final b()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->b:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "jodoplay_buoy_ctrl_window"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "jodoplay_buoy_detail_window_container"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/buoy/a;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_buoy_ctrl_layout"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/buoy/a;->g:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "jodoplay_buoy_logo"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jodo/paysdk/buoy/a;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jodo/paysdk/util/ae;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v2, -0x2

    invoke-static {v5, v0, v2}, Lcom/jodo/paysdk/buoy/a;->b(III)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->g:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    if-nez v1, :cond_0

    new-instance v1, Lcom/jauker/widget/BadgeView;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/jauker/widget/BadgeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    :cond_0
    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Lcom/jauker/widget/BadgeView;->setTargetView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    const/16 v2, 0x32

    const-string v3, "#FF0000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/jauker/widget/BadgeView;->setBackground(II)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/jauker/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    const/16 v2, 0x35

    invoke-virtual {v1, v2}, Lcom/jauker/widget/BadgeView;->setBadgeGravity(I)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v4, "dimen"

    const-string v5, "jodoplay_buoy_redpoint_size_ctrl"

    invoke-static {v3, v4, v5}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jauker/widget/BadgeView;->setWidth(I)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v4, "dimen"

    const-string v5, "jodoplay_buoy_redpoint_size_ctrl"

    invoke-static {v3, v4, v5}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jauker/widget/BadgeView;->setHeight(I)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->k:Lcom/jauker/widget/BadgeView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/jauker/widget/BadgeView;->setVisibility(I)V

    :cond_1
    new-instance v1, Lcom/jodo/paysdk/buoy/d;

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/a;->b:Landroid/view/WindowManager;

    invoke-direct {v1, p0, v2, v0}, Lcom/jodo/paysdk/buoy/d;-><init>(Lcom/jodo/paysdk/buoy/a;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    iput-object v1, p0, Lcom/jodo/paysdk/buoy/a;->d:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/a;->d:Lcom/jodo/paysdk/buoy/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/jodo/paysdk/buoy/a;->d()V

    return-void
.end method
