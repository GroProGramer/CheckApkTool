.class public final Lcom/jodo/pccs3/view/w;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/jodo/paysdk/webviews/a/b;


# static fields
.field private static a:Lcom/jodo/pccs3/view/w;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/jodo/paysdk/webviews/g;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/jodo/pccs3/view/w;
    .locals 1

    sget-object v0, Lcom/jodo/pccs3/view/w;->a:Lcom/jodo/pccs3/view/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/pccs3/view/w;

    invoke-direct {v0}, Lcom/jodo/pccs3/view/w;-><init>()V

    sput-object v0, Lcom/jodo/pccs3/view/w;->a:Lcom/jodo/pccs3/view/w;

    :cond_0
    sget-object v0, Lcom/jodo/pccs3/view/w;->a:Lcom/jodo/pccs3/view/w;

    return-object v0
.end method


# virtual methods
.method public final cancleAble()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final getWebPage()Lcom/jodo/paysdk/webviews/g;
    .locals 1

    const/4 v0, 0x0

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
    .locals 0

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const/4 v3, 0x1

    const/4 v10, -0x2

    const/4 v7, 0x0

    sput-object p0, Lcom/jodo/pccs3/view/ChatActivity;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "jodoplay_service_fragment_common_problems"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_service_faq_top_backbtn"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/w;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_service_to_customer_service"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/w;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_service_webview"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jodo/pccs3/view/w;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "jodoplay_service_problem_submit_contact_email"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/w;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jodo/pccs3/view/w;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/jodo/pccs3/view/x;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/x;-><init>(Lcom/jodo/pccs3/view/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/w;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/jodo/pccs3/view/y;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/y;-><init>(Lcom/jodo/pccs3/view/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/w;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/config/JodoConfig;->getCsContact(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/air/a/a;->a()Lcom/air/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/jodo/paysdk/webviews/js/Base_Webview_Js_Interface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p0, v4, v3

    invoke-virtual {v0, v1, p0, v2, v4}, Lcom/air/a/a;->a(Landroid/content/Context;Lcom/air/plugin/js/IWebView;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jodo/paysdk/webviews/js/Js_Interface;

    new-instance v0, Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v5, ""

    const-string v6, ""

    move-object v4, p0

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/jodo/paysdk/webviews/g;-><init>(Landroid/content/Context;Lcom/jodo/paysdk/webviews/js/Js_Interface;ILcom/jodo/paysdk/webviews/a/b;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/w;->d:Lcom/jodo/paysdk/webviews/g;

    iget-object v0, p0, Lcom/jodo/pccs3/view/w;->d:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/w;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/config/JodoConfig;->getCsProblemUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/http/jodohttp/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/webviews/g;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/jodo/pccs3/view/w;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jodo/pccs3/view/w;->d:Lcom/jodo/paysdk/webviews/g;

    invoke-virtual {v2}, Lcom/jodo/paysdk/webviews/g;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v9
.end method

.method public final onInit(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final setCancelable(Z)V
    .locals 0

    return-void
.end method

.method public final setWebTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
