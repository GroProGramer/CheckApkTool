.class public Lcom/jodo/pccs3/view/e;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field public static c:Z

.field private static v:Lcom/jodo/pccs3/view/e;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field public a:I

.field public b:Z

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Lcom/jodo/pccs3/view/v;

.field private n:Landroid/widget/TextView;

.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jodo/pccs3/message/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/content/SharedPreferences;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/view/View;

.field private w:Landroid/widget/RelativeLayout$LayoutParams;

.field private x:Landroid/widget/RelativeLayout$LayoutParams;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/pccs3/view/e;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput-boolean v3, p0, Lcom/jodo/pccs3/view/e;->o:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->w:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->x:Landroid/widget/RelativeLayout$LayoutParams;

    iput-boolean v3, p0, Lcom/jodo/pccs3/view/e;->y:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->B:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/view/e;I)I
    .locals 0

    iput p1, p0, Lcom/jodo/pccs3/view/e;->q:I

    return p1
.end method

.method static synthetic a(Lcom/jodo/pccs3/view/e;J)I
    .locals 2

    iget v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    return v0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2

    sget-object v0, Lcom/jodo/pccs3/view/e;->v:Lcom/jodo/pccs3/view/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/pccs3/view/e;

    invoke-direct {v0}, Lcom/jodo/pccs3/view/e;-><init>()V

    sput-object v0, Lcom/jodo/pccs3/view/e;->v:Lcom/jodo/pccs3/view/e;

    :cond_0
    invoke-static {p4}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jodo/pccs3/view/e;->v:Lcom/jodo/pccs3/view/e;

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    invoke-static {p0}, Lcom/jodo/pccs3/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jodo/pccs3/view/e;->z:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/jodo/pccs3/view/e;->v:Lcom/jodo/pccs3/view/e;

    iput-object p2, v0, Lcom/jodo/pccs3/view/e;->A:Ljava/lang/String;

    sget-object v0, Lcom/jodo/pccs3/view/e;->v:Lcom/jodo/pccs3/view/e;

    iput-object p3, v0, Lcom/jodo/pccs3/view/e;->B:Ljava/lang/String;

    sget-object v0, Lcom/jodo/pccs3/view/e;->v:Lcom/jodo/pccs3/view/e;

    iput p1, v0, Lcom/jodo/pccs3/view/e;->a:I

    sget-object v0, Lcom/jodo/pccs3/view/e;->v:Lcom/jodo/pccs3/view/e;

    return-object v0

    :cond_1
    sget-object v0, Lcom/jodo/pccs3/view/e;->v:Lcom/jodo/pccs3/view/e;

    iput-object p4, v0, Lcom/jodo/pccs3/view/e;->z:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/jodo/pccs3/view/e;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/jodo/pccs3/view/e;J)Landroid/view/View;
    .locals 8

    const/16 v7, 0xb

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "jodoplay_service_chatting_datetime"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "id"

    const-string v3, "jodoplay_service_chatting_datetime_noti"

    invoke-static {v0, v1, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v4, v1, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v4, v1, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v4, v1, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    const/16 v5, 0x18

    invoke-virtual {v1, v7, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v1, p1, v4

    if-gez v1, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    return-object v2

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "jodoplay_service_datetime_pattern"

    invoke-static {v4, v5}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/jodo/pccs3/view/e;)Lcom/jodo/pccs3/view/v;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    return-object v0
.end method

.method static synthetic c(Lcom/jodo/pccs3/view/e;)I
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    return v0
.end method

.method static synthetic d(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/jodo/pccs3/view/e;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/jodo/pccs3/view/e;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->s:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic h(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/jodo/pccs3/view/e;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/jodo/pccs3/view/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/jodo/pccs3/view/e;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/jodo/pccs3/view/e;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/jodo/pccs3/view/e;)I
    .locals 1

    iget v0, p0, Lcom/jodo/pccs3/view/e;->q:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/v;->notifyDataSetChanged()V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "color"

    const-string v4, "jodoplay_service_disabled_ui_fontcolor"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "color"

    const-string v4, "jodoplay_service_ui_fontcolor"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "jodoplay_service_repick_a_image_text"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    :try_start_0
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "jodoplay_send_pic_title"

    invoke-static {v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/jodo/pccs3/view/u;

    invoke-direct {v4, p0}, Lcom/jodo/pccs3/view/u;-><init>(Lcom/jodo/pccs3/view/e;)V

    new-instance v5, Lcom/jodo/pccs3/view/g;

    invoke-direct {v5, p0}, Lcom/jodo/pccs3/view/g;-><init>(Lcom/jodo/pccs3/view/e;)V

    invoke-virtual/range {v0 .. v5}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jodo/pccs3/a/c;Lcom/jodo/pccs3/a/g;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v2, v6

    goto :goto_3

    :cond_3
    move-object v0, v6

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const-wide/16 v5, 0x96

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "jodoplay_service_send_content_null"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/pccs3/view/e;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/jodo/pccs3/view/p;

    invoke-direct {v4, p0}, Lcom/jodo/pccs3/view/p;-><init>(Lcom/jodo/pccs3/view/e;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/jodo/pccs3/a/g;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/jodo/pccs3/view/r;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/r;-><init>(Lcom/jodo/pccs3/view/e;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "jodoplay_service_tips_cant_send_yet"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "jodoplay_service_pick_a_image_text"

    invoke-static {v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/jodo/pccs3/view/e;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/jodo/pccs3/view/t;

    invoke-direct {v1, p0}, Lcom/jodo/pccs3/view/t;-><init>(Lcom/jodo/pccs3/view/e;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->n:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput v2, p0, Lcom/jodo/pccs3/view/e;->p:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->f:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/jodo/pccs3/view/bd;->a()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    sput-object p0, Lcom/jodo/pccs3/view/ChatActivity;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->x:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->x:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "dimen"

    const-string v5, "jodoplay_service_chatting_datetime_noti_margin_vert"

    invoke-static {v3, v4, v5}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "dimen"

    const-string v7, "jodoplay_service_chatting_datetime_noti_margin_vert"

    invoke-static {v5, v6, v7}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/pccs3/view/e;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "jodoplay_service_fragment_chatting"

    invoke-static {v0, v1, v2}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_new_msg_tip"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_chatlist"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->e:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_top_backbtn"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_bottom_sendimage_btn"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_creating_tips_in_chatting"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_click_to_create_problem_in_chatting"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_bottom_inputtext"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_bottom_sendbtn"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_bottom_sendemoji_btn"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_bottom_input_area"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "jodoplay_global_sharedpreferences_name"

    invoke-static {v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->s:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/jodo/pccs3/view/v;

    invoke-direct {v0, p0}, Lcom/jodo/pccs3/view/v;-><init>(Lcom/jodo/pccs3/view/e;)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/pccs3/view/e;->y:Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->j:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->g:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->r:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jodo/pccs3/view/e;->r:Ljava/util/List;

    :cond_0
    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->r:Ljava/util/List;

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "-1"

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->r:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v2, p0, Lcom/jodo/pccs3/view/e;->a:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->e:Landroid/widget/ListView;

    new-instance v2, Lcom/jodo/pccs3/view/f;

    invoke-direct {v2, p0}, Lcom/jodo/pccs3/view/f;-><init>(Lcom/jodo/pccs3/view/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    new-instance v2, Lcom/jodo/pccs3/view/i;

    invoke-direct {v2, p0}, Lcom/jodo/pccs3/view/i;-><init>(Lcom/jodo/pccs3/view/e;)V

    invoke-virtual {v0, v2}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a/f;)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    const-class v2, Lcom/jodo/pccs3/view/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/jodo/pccs3/e/h;

    new-instance v4, Lcom/jodo/pccs3/view/j;

    invoke-direct {v4, p0}, Lcom/jodo/pccs3/view/j;-><init>(Lcom/jodo/pccs3/view/e;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/jodo/pccs3/a;->a(Ljava/lang/String;Ljava/lang/Class;Lcom/jodo/pccs3/a/a;)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    new-instance v2, Lcom/jodo/pccs3/view/l;

    invoke-direct {v2, p0}, Lcom/jodo/pccs3/view/l;-><init>(Lcom/jodo/pccs3/view/e;)V

    invoke-virtual {v0, v2}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a/b;)V

    return-object v1

    :pswitch_0
    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "problem_chat"

    invoke-static {v8, v9}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/jodo/pccs3/view/v;->a(Ljava/util/List;Z)J

    sget-boolean v0, Lcom/jodo/pccs3/view/e;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/pccs3/view/e;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/jodo/pccs3/view/e;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/jodo/pccs3/view/e;->z:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->t:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->k:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->i:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/pccs3/a;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->z:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jodo/pccs3/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->s:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "conversation_created_not_init"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/jodo/pccs3/e/d;

    invoke-direct {v3}, Lcom/jodo/pccs3/e/d;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "jodoplay_service_ask_to_detailize_problem_prefix"

    invoke-static {v5, v6}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jodo/pccs3/view/e;->z:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "jodoplay_service_ask_to_detailize_problem_rarefix"

    invoke-static {v5, v6}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jodo/pccs3/e/d;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jodo/pccs3/e/d;->j()Lcom/jodo/pccs3/message/e;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/jodo/pccs3/message/d;->b(J)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jodo/pccs3/message/d;->a(Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/jodo/pccs3/e/d;

    invoke-direct {v3}, Lcom/jodo/pccs3/e/d;-><init>()V

    iget-object v4, p0, Lcom/jodo/pccs3/view/e;->B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jodo/pccs3/e/d;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jodo/pccs3/e/d;->j()Lcom/jodo/pccs3/message/e;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/jodo/pccs3/message/d;->b(J)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jodo/pccs3/message/d;->a(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jodo/pccs3/message/d;->c(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/jodo/pccs3/view/v;->a(Ljava/util/List;ZZ)J

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/pccs3/view/e;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/jodo/pccs3/view/e;->B:Ljava/lang/String;

    iget-object v5, p0, Lcom/jodo/pccs3/view/e;->z:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/pccs3/view/e;->c:Z

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jodo/pccs3/view/e;->b:Z

    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->i:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "jodoplay_service_input_bottom"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jodo/pccs3/view/e;->u:Landroid/view/View;

    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->u:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/jodo/pccs3/view/v;->a(Ljava/util/List;Z)J

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jodo/pccs3/a;->c()Lcom/jodo/pccs3/message/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->unregisterMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V

    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jodo/pccs3/a;->d()Lcom/jodo/pccs3/message/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->unregisterMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jodo/pccs3/a;->e()Lcom/jodo/pccs3/message/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerDefaultMessageHandler(Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jodo/pccs3/a;->c()Lcom/jodo/pccs3/message/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V

    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jodo/pccs3/a;->d()Lcom/jodo/pccs3/message/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    const/4 v6, 0x1

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/jodo/pccs3/view/e;->y:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jodo/pccs3/view/e;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/v;->a()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/jodo/pccs3/view/v;->a(Ljava/util/List;Z)J

    move-result-wide v0

    :goto_0
    long-to-int v2, v0

    new-instance v3, Lcom/jodo/pccs3/view/o;

    invoke-direct {v3, p0, p1, v2}, Lcom/jodo/pccs3/view/o;-><init>(Lcom/jodo/pccs3/view/e;Landroid/widget/AbsListView;I)V

    const-wide/16 v4, 0x96

    invoke-virtual {p1, v3, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-boolean v6, p0, Lcom/jodo/pccs3/view/e;->y:Z

    :cond_0
    iget v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->n:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    add-int v0, p2, p3

    sub-int v0, p4, v0

    iget v1, p0, Lcom/jodo/pccs3/view/e;->p:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    iget-object v1, p0, Lcom/jodo/pccs3/view/e;->n:Landroid/widget/TextView;

    iget v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    const/16 v2, 0x63

    if-le v0, v2, :cond_4

    const-string v0, "99+"

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/pccs3/view/e;->m:Lcom/jodo/pccs3/view/v;

    invoke-virtual {v3}, Lcom/jodo/pccs3/view/v;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/jodo/pccs3/view/v;->a(Ljava/util/List;Z)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/jodo/pccs3/view/e;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/e;->d:Ljava/lang/CharSequence;

    return-void
.end method
