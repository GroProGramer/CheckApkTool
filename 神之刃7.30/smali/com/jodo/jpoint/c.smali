.class final Lcom/jodo/jpoint/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/interfaces/LoginCallbackListener;


# instance fields
.field final synthetic a:Lcom/jodo/jpoint/b;


# direct methods
.method constructor <init>(Lcom/jodo/jpoint/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/jpoint/c;->a:Lcom/jodo/jpoint/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginCallback(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7f51\u6e38\u767b\u9646\u6210\u529f\uff01"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/jodo/jpoint/d;

    invoke-direct {v0, p0}, Lcom/jodo/jpoint/d;-><init>(Lcom/jodo/jpoint/c;)V

    invoke-virtual {v0}, Lcom/jodo/jpoint/d;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
