.class Lcom/mqgame/lib/SLaunchActivity$SUnityRender;
.super Ljava/lang/Object;
.source "SLaunchActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mqgame/lib/SLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SUnityRender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqgame/lib/SLaunchActivity;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SLaunchActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mqgame/lib/SLaunchActivity$SUnityRender;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 126
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 127
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 123
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$SUnityRender;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mqgame/lib/SLaunchActivity;->GPURender:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$SUnityRender;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const/16 v3, 0x1f00

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mqgame/lib/SLaunchActivity;->GPUVender:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :goto_0
    :try_start_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 108
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 109
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$SUnityRender;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iget-object v2, v2, Lcom/mqgame/lib/SLaunchActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 120
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$SUnityRender;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mqgame/lib/SLaunchActivity;->GPUInfoReady:Z

    .line 121
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Error;
    :catch_2
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 117
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1
.end method
