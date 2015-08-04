.class public final Lcom/jodo/pccs3/view/bd;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/jodo/pccs3/view/bc;


# static fields
.field private static c:Ljava/lang/String;

.field private static u:Lcom/jodo/pccs3/view/bd;

.field private static v:Z

.field private static final w:[Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private d:Landroid/widget/RadioButton;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/RadioButton;

.field private h:Landroid/widget/RadioButton;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/AutoCompleteTextView;

.field private l:Lcom/jodo/pccs3/view/a;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/LinearLayout;

.field private t:Lcom/jodo/pccs3/view/LinearLayoutWithOnLayoutChangedListener;

.field private x:Z

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RadioButton;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ProblemSubmitFragment"

    sput-object v0, Lcom/jodo/pccs3/view/bd;->c:Ljava/lang/String;

    sput-boolean v2, Lcom/jodo/pccs3/view/bd;->v:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "@gmail.com"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "@yahoo.com.tw"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "@yahoo.com.hk"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@hotmail.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jodo/pccs3/view/bd;->w:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/pccs3/view/bd;->x:Z

    iput-object v1, p0, Lcom/jodo/pccs3/view/bd;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/jodo/pccs3/view/bd;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/jodo/pccs3/view/bd;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->A:Ljava/lang/String;

    return-void
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/jodo/pccs3/view/bd;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    sget-object v0, Lcom/jodo/pccs3/view/bd;->u:Lcom/jodo/pccs3/view/bd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jodo/pccs3/view/bd;

    invoke-direct {v0}, Lcom/jodo/pccs3/view/bd;-><init>()V

    sput-object v0, Lcom/jodo/pccs3/view/bd;->u:Lcom/jodo/pccs3/view/bd;

    :cond_0
    sget-object v0, Lcom/jodo/pccs3/view/bd;->u:Lcom/jodo/pccs3/view/bd;

    iput-object p0, v0, Lcom/jodo/pccs3/view/bd;->a:Ljava/lang/String;

    sget-object v0, Lcom/jodo/pccs3/view/bd;->u:Lcom/jodo/pccs3/view/bd;

    iput-object p1, v0, Lcom/jodo/pccs3/view/bd;->b:Ljava/lang/String;

    sget-object v0, Lcom/jodo/pccs3/view/bd;->u:Lcom/jodo/pccs3/view/bd;

    return-object v0
.end method

.method private a(Landroid/widget/RadioButton;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->A:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->o:Landroid/widget/Button;

    invoke-direct {p0, v3}, Lcom/jodo/pccs3/view/bd;->a(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const-string v0, "onCreateView"

    const-string v1, "selectRadioButton"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/jodo/pccs3/view/bd;)V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/bd;->d()V

    return-void
.end method

.method private a(Z)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    if-nez v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->k:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v2

    :goto_4
    if-nez v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_7
    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    const-string v0, "jodoplay_service_tips_illegal_email"

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->z:Ljava/lang/String;

    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private c()V
    .locals 5

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/account/JodoAccountManager;->getInstance(Landroid/content/Context;)Lcom/jodo/paysdk/account/JodoAccountManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jodo/paysdk/account/JodoAccountManager;->getCurrentRoleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->n:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jodo/pccs3/view/bd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->o:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jodo/pccs3/view/bd;->a(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jodo/pccs3/view/bd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-direct {p0, v0}, Lcom/jodo/pccs3/view/bd;->a(Landroid/widget/RadioButton;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->k:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "CS_Data"

    const-string v3, "email"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/jodo/paysdk/util/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->o:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/jodo/pccs3/view/bd;->a(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 3

    const/16 v2, 0x64

    if-ne p1, p3, :cond_2

    sub-int v0, p2, p4

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->s:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    sub-int v0, p4, p2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->s:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/bd;->d()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string v0, "onCreateView"

    const-string v1, "onCheckedChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/RadioButton;

    invoke-direct {p0, p1}, Lcom/jodo/pccs3/view/bd;->a(Landroid/widget/RadioButton;)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->o:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/jodo/pccs3/view/bd;->v:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v6, Lcom/jodo/pccs3/view/bd;->v:Z

    invoke-direct {p0, v5}, Lcom/jodo/pccs3/view/bd;->a(Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->z:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/bd;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    sput-boolean v5, Lcom/jodo/pccs3/view/bd;->v:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->k:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "CS_Data"

    const-string v3, "email"

    invoke-static {v1, v2, v3, v0}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/bd;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/jodo/pccs3/view/bd;->A:Ljava/lang/String;

    invoke-static {v3, v5, v0, v1, v4}, Lcom/jodo/pccs3/view/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    :cond_5
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v6, p0, Lcom/jodo/pccs3/view/bd;->x:Z

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/jodo/pccs3/view/e;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    :cond_6
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->p:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/pccs3/view/ChatActivity;->a(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jodo/pccs3/view/bd;->v:Z

    sput-object p0, Lcom/jodo/pccs3/view/ChatActivity;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "jodoplay_service_fragment_problem_submit"

    invoke-static {v1, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_selection_login"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->d:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_selection_account"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->e:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_selection_deposit"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->f:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_selection_game"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->g:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_selection_other"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->h:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_input_email"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->k:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_input_problem_desc"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->m:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_input_nickname"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->n:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_submit_btn"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->o:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_to_chat_history"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_top_backbtn"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->p:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_problem_submit_contact_email"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_problemsubmit_bottom_part"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "jodoplay_service_problemsubmit_middle_part"

    invoke-static {v0, v2, v3}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jodo/pccs3/view/LinearLayoutWithOnLayoutChangedListener;

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->t:Lcom/jodo/pccs3/view/LinearLayoutWithOnLayoutChangedListener;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/jodo/paysdk/config/JodoConfig;->getCsContact(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    const-string v2, "1"

    iget-object v3, p0, Lcom/jodo/pccs3/view/bd;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    const-string v2, "2"

    iget-object v3, p0, Lcom/jodo/pccs3/view/bd;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    const-string v2, "3"

    iget-object v3, p0, Lcom/jodo/pccs3/view/bd;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    const-string v2, "4"

    iget-object v3, p0, Lcom/jodo/pccs3/view/bd;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    const-string v2, "5"

    iget-object v3, p0, Lcom/jodo/pccs3/view/bd;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->y:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->y:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->d:Landroid/widget/RadioButton;

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->y:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->e:Landroid/widget/RadioButton;

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->y:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->f:Landroid/widget/RadioButton;

    const-string v3, "3"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->y:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->g:Landroid/widget/RadioButton;

    const-string v3, "4"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->y:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->h:Landroid/widget/RadioButton;

    const-string v3, "5"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->k:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->h:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->k:Landroid/widget/AutoCompleteTextView;

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->k:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    new-instance v0, Lcom/jodo/pccs3/view/a;

    invoke-virtual {p0}, Lcom/jodo/pccs3/view/bd;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/jodo/pccs3/view/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jodo/pccs3/view/bd;->l:Lcom/jodo/pccs3/view/a;

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->k:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->l:Lcom/jodo/pccs3/view/a;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->k:Landroid/widget/AutoCompleteTextView;

    new-instance v2, Lcom/jodo/pccs3/view/be;

    invoke-direct {v2, p0}, Lcom/jodo/pccs3/view/be;-><init>(Lcom/jodo/pccs3/view/bd;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/jodo/pccs3/view/bd;->c()V

    invoke-direct {p0}, Lcom/jodo/pccs3/view/bd;->b()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->i:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->m:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/jodo/pccs3/view/bd;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/jodo/pccs3/view/bd;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    iget-boolean v0, p0, Lcom/jodo/pccs3/view/bd;->x:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/jodo/pccs3/view/bd;->b()V

    iget-object v0, p0, Lcom/jodo/pccs3/view/bd;->m:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/jodo/pccs3/view/bd;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jodo/pccs3/view/bd;->x:Z

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
