.class public final Lcom/jodo/paysdk/webviews/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/air/plugin/js/IWebView;
.implements Lcom/jodo/paysdk/webviews/a/a;
.implements Lcom/jodo/paysdk/webviews/a/c;


# static fields
.field public static i:J


# instance fields
.field a:Lcom/jodo/paysdk/webviews/e;

.field b:Landroid/widget/ProgressBar;

.field c:Landroid/widget/ProgressBar;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Ljava/lang/String;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/jodo/paysdk/webviews/a/c;

.field private m:Lcom/jodo/paysdk/webviews/a/a;

.field private n:Lcom/jodo/paysdk/webviews/a/b;

.field private o:Landroid/content/Context;

.field private p:I

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jodo/paysdk/webviews/g;->i:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/jodo/paysdk/webviews/g;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->g:Z

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/g;->o:Landroid/content/Context;

    iput-object p4, p0, Lcom/jodo/paysdk/webviews/g;->n:Lcom/jodo/paysdk/webviews/a/b;

    new-instance v0, Lcom/jodo/paysdk/webviews/e;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/jodo/paysdk/webviews/e;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/a/c;Lcom/jodo/paysdk/webviews/a/a;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    const v1, 0xd4d2d2

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/webviews/e;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/e;->a()V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/e;->b()V

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/webviews/g;->a(Landroid/content/Context;)Lcom/jodo/paysdk/h/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jodo/paysdk/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/g;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/jodo/paysdk/h/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/g;->k:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/g;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/g;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/webviews/g;->a(ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/jodo/paysdk/webviews/g;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;IZB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;IZB)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jodo/paysdk/webviews/g;->d:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jodo/paysdk/webviews/g;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jodo/paysdk/webviews/g;->f:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jodo/paysdk/webviews/g;->g:Z

    move/from16 v0, p7

    iput v0, p0, Lcom/jodo/paysdk/webviews/g;->p:I

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->q:Z

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/g;->o:Landroid/content/Context;

    iput-object p4, p0, Lcom/jodo/paysdk/webviews/g;->n:Lcom/jodo/paysdk/webviews/a/b;

    new-instance v1, Lcom/jodo/paysdk/webviews/e;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/jodo/paysdk/webviews/e;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/a/c;Lcom/jodo/paysdk/webviews/a/a;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    const v2, 0xd4d2d2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/webviews/e;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v1}, Lcom/jodo/paysdk/webviews/e;->a()V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v1}, Lcom/jodo/paysdk/webviews/e;->b()V

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/webviews/g;->a(Landroid/content/Context;)Lcom/jodo/paysdk/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jodo/paysdk/h/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jodo/paysdk/webviews/g;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Lcom/jodo/paysdk/h/a;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jodo/paysdk/webviews/g;->k:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/g;->k:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/jodo/paysdk/webviews/g;->k:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->bringToFront()V

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->bringToFront()V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/jodo/paysdk/webviews/g;->a(ZI)V

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/jodo/paysdk/h/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/jodo/paysdk/h/a",
            "<",
            "Landroid/widget/RelativeLayout;",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "jodoplay_layout_webviewpage"

    invoke-static {p1, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "id"

    const-string v2, "jodoplay_webview_layout"

    invoke-static {p1, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string v2, "id"

    const-string v3, "jodoplay_bottom_layout"

    invoke-static {p1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const-string v3, "id"

    const-string v4, "jodoplay_btn_back_to_game"

    invoke-static {p1, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const-string v4, "id"

    const-string v5, "jodoplay_btn_reselect_pay"

    invoke-static {p1, v4, v5}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "id"

    const-string v6, "jodoplay_reselect_pay_text"

    invoke-static {p1, v5, v6}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "id"

    const-string v7, "jodoplay_v_line"

    invoke-static {p1, v6, v7}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/jodo/paysdk/webviews/h;

    invoke-direct {v7, p0}, Lcom/jodo/paysdk/webviews/h;-><init>(Lcom/jodo/paysdk/webviews/g;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v7, p0, Lcom/jodo/paysdk/webviews/g;->p:I

    packed-switch v7, :pswitch_data_0

    iget-object v7, p0, Lcom/jodo/paysdk/webviews/g;->o:Landroid/content/Context;

    const-string v8, "jodoplay_reselect_pay_method"

    invoke-static {v7, v8}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/jodo/paysdk/webviews/k;

    invoke-direct {v5, p0}, Lcom/jodo/paysdk/webviews/k;-><init>(Lcom/jodo/paysdk/webviews/g;)V

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v5, p0, Lcom/jodo/paysdk/webviews/g;->q:Z

    if-nez v5, :cond_0

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget v2, p0, Lcom/jodo/paysdk/webviews/g;->p:I

    const/16 v3, 0xf01

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/jodo/paysdk/webviews/g;->p:I

    const/16 v3, 0xf03

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    new-instance v2, Lcom/jodo/paysdk/h/a;

    invoke-direct {v2, v0, v1}, Lcom/jodo/paysdk/h/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :pswitch_0
    iget-object v7, p0, Lcom/jodo/paysdk/webviews/g;->o:Landroid/content/Context;

    const-string v8, "jodoplay_back_to_pay"

    invoke-static {v7, v8}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/jodo/paysdk/webviews/i;

    invoke-direct {v5, p0}, Lcom/jodo/paysdk/webviews/i;-><init>(Lcom/jodo/paysdk/webviews/g;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf03
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/jodo/paysdk/webviews/g;)Lcom/jodo/paysdk/webviews/a/b;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->n:Lcom/jodo/paysdk/webviews/a/b;

    return-object v0
.end method

.method static synthetic b(Lcom/jodo/paysdk/webviews/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->o:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jodo/paysdk/webviews/g;->g:Z

    new-instance v0, Lcom/jodo/paysdk/webviews/l;

    invoke-direct {v0, p0, p1}, Lcom/jodo/paysdk/webviews/l;-><init>(Lcom/jodo/paysdk/webviews/g;Z)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(ZI)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public final b()Lcom/jodo/paysdk/webviews/e;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    iget-object v0, v0, Lcom/jodo/paysdk/webviews/e;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/e;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/e;->goBack()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v0}, Lcom/jodo/paysdk/webviews/e;->reload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->o:Landroid/content/Context;

    return-object v0
.end method

.method public final initClient(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final initJsInterface(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final initSettings(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->d:Z

    iput-object p1, p0, Lcom/jodo/paysdk/webviews/g;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->a:Lcom/jodo/paysdk/webviews/e;

    invoke-virtual {v0, p1}, Lcom/jodo/paysdk/webviews/e;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final onInit(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final onWebPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    const-string v0, "onWebPageFinished,cost:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/jodo/paysdk/webviews/g;->i:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/webviews/g;->a(ZI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->e:Z

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->l:Lcom/jodo/paysdk/webviews/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->l:Lcom/jodo/paysdk/webviews/a/c;

    invoke-interface {v0, p1, p2}, Lcom/jodo/paysdk/webviews/a/c;->onWebPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final onWebPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/jodo/paysdk/f/d;->h()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jodo/paysdk/webviews/g;->i:J

    const-string v0, "onWebPageStarted"

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/webviews/g;->a(ZI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->e:Z

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->l:Lcom/jodo/paysdk/webviews/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->l:Lcom/jodo/paysdk/webviews/a/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/jodo/paysdk/webviews/a/c;->onWebPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final onWebProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    :try_start_0
    const-string v0, "onWebProgressChanged:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/jodo/paysdk/webviews/g;->a(ZI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->e:Z

    :goto_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->m:Lcom/jodo/paysdk/webviews/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->m:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v0, p1, p2}, Lcom/jodo/paysdk/webviews/a/a;->onWebProgressChanged(Landroid/webkit/WebView;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/jodo/paysdk/webviews/g;->a(ZI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public final onWebReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    const-string v0, "onWebReceivedError => errorCode:%d,%s,%s,cost:%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/jodo/paysdk/webviews/g;->i:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/paysdk/webviews/g;->a(ZI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/webviews/g;->d:Z

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->l:Lcom/jodo/paysdk/webviews/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->l:Lcom/jodo/paysdk/webviews/a/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/jodo/paysdk/webviews/a/c;->onWebReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final onWebTitleChange(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->n:Lcom/jodo/paysdk/webviews/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->n:Lcom/jodo/paysdk/webviews/a/b;

    invoke-interface {v0, p2}, Lcom/jodo/paysdk/webviews/a/b;->setWebTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->m:Lcom/jodo/paysdk/webviews/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/webviews/g;->m:Lcom/jodo/paysdk/webviews/a/a;

    invoke-interface {v0, p1, p2}, Lcom/jodo/paysdk/webviews/a/a;->onWebTitleChange(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
