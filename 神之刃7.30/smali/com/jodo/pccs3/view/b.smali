.class final Lcom/jodo/pccs3/view/b;
.super Landroid/widget/Filter;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/a;


# direct methods
.method private constructor <init>(Lcom/jodo/pccs3/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/b;->a:Lcom/jodo/pccs3/view/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jodo/pccs3/view/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jodo/pccs3/view/b;-><init>(Lcom/jodo/pccs3/view/a;)V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v1, p0, Lcom/jodo/pccs3/view/b;->a:Lcom/jodo/pccs3/view/a;

    iget-object v1, v1, Lcom/jodo/pccs3/view/a;->a:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jodo/pccs3/view/b;->a:Lcom/jodo/pccs3/view/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/jodo/pccs3/view/a;->a:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/jodo/pccs3/view/b;->a:Lcom/jodo/pccs3/view/a;

    iget-object v1, v1, Lcom/jodo/pccs3/view/a;->a:Ljava/util/List;

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jodo/pccs3/view/b;->a:Lcom/jodo/pccs3/view/a;

    iget-object v1, v1, Lcom/jodo/pccs3/view/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/view/b;->a:Lcom/jodo/pccs3/view/a;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/a;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/view/b;->a:Lcom/jodo/pccs3/view/a;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/a;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
