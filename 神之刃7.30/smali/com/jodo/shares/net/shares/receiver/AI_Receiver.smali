.class public Lcom/jodo/shares/net/shares/receiver/AI_Receiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.jodo.android.install_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "apkpath"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1, v3}, Lcom/jodo/paysdk/util/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    move v2, v0

    :goto_0
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/jodo/paysdk/util/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jodo/paysdk/util/n;->e(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    :goto_1
    const-string v0, "onReceive apkfile:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->d(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/jodo/paysdk/util/ab;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1, v3}, Lcom/jodo/paysdk/util/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/jodo/paysdk/util/ab;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1, v3}, Lcom/jodo/paysdk/util/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/jodo/paysdk/util/ab;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/jodo/paysdk/util/af;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    const-string v2, "-r"

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LD_LIBRARY_PATH=/vendor/lib:/system/lib pm install "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    const-string v5, "\\ "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/jodo/paysdk/util/ab;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_3
    invoke-static {v2, v0}, Lcom/jodo/paysdk/util/af;->a(Ljava/lang/String;Z)Lcom/jodo/paysdk/util/ag;

    move-result-object v0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->b:Ljava/lang/String;

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->b:Ljava/lang/String;

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_7
    const-string v1, "PackageUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "installSilent successMsg:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/jodo/paysdk/util/ag;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ErrorMsg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_ALREADY_EXISTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_INVALID_APK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_INVALID_URI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_NO_SHARED_USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_DEXOPT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_OLDER_SDK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_NEWER_SDK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_TEST_ONLY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_MISSING_FEATURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_CONTAINER_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_VERIFICATION_FAILURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_FAILED_UID_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_NOT_APK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v2, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/jodo/paysdk/util/ag;->c:Ljava/lang/String;

    const-string v1, "INSTALL_FAILED_INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_3

    :cond_9
    invoke-static {p1, v3}, Lcom/jodo/paysdk/util/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_a
    const-string v0, "com.jodo.android.cancelDownLoad_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "apkpath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2
.end method
