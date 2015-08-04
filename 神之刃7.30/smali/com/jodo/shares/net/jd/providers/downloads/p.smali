.class final Lcom/jodo/shares/net/jd/providers/downloads/p;
.super Landroid/database/CursorWrapper;

# interfaces
.implements Landroid/database/CrossProcessCursor;


# instance fields
.field final synthetic a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadProvider;

.field private b:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Lcom/jodo/shares/net/jd/providers/downloads/DownloadProvider;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/p;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadProvider;

    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    check-cast p2, Landroid/database/CrossProcessCursor;

    iput-object p2, p0, Lcom/jodo/shares/net/jd/providers/downloads/p;->b:Landroid/database/CrossProcessCursor;

    return-void
.end method


# virtual methods
.method public final fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/p;->b:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public final getWindow()Landroid/database/CursorWindow;
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/p;->b:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final onMove(II)Z
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/p;->b:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
