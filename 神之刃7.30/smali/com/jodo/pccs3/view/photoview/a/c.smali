.class public final Lcom/jodo/pccs3/view/photoview/a/c;
.super Lcom/jodo/pccs3/view/photoview/a/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field protected final f:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/jodo/pccs3/view/photoview/a/b;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/jodo/pccs3/view/photoview/a/d;

    invoke-direct {v0, p0}, Lcom/jodo/pccs3/view/photoview/a/d;-><init>(Lcom/jodo/pccs3/view/photoview/a/c;)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/jodo/pccs3/view/photoview/a/c;->f:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/a/c;->f:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/photoview/a/c;->f:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Lcom/jodo/pccs3/view/photoview/a/b;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
