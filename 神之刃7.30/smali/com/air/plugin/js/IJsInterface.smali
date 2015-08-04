.class public interface abstract Lcom/air/plugin/js/IJsInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getWebView()Lcom/air/plugin/js/IWebView;
.end method

.method public abstract loadJar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public abstract returnJs(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract returnJs(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setWebView(Lcom/air/plugin/js/IWebView;)V
.end method

.method public abstract uploadLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
