.class public Lcom/mqgame/lib/SSDK;
.super Ljava/lang/Object;
.source "SSDK.java"


# static fields
.field public static Language:Ljava/lang/String; = null

.field private static final SHARE_MSG:Ljava/lang/String; = "{\"shareTitle\":\"%s\", \"viceTitle\":\"%s\", \"shareContent\":\"%s\",\"shareUrl\":\"%s\",\"imageUrl\":\"%s\",\"iconId\":\"%s\"}"

.field public static mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

.field private static mPluginInterface:Lcom/lk/sdk/PluginInterface;

.field public static mTmpAParam:Landroid/app/Activity;

.field public static mTmpSParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "BIG5"

    sput-object v0, Lcom/mqgame/lib/SSDK;->Language:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/lk/sdk/PluginInterface;

    invoke-direct {v0}, Lcom/lk/sdk/PluginInterface;-><init>()V

    sput-object v0, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    .line 140
    const-string v0, ""

    sput-object v0, Lcom/mqgame/lib/SSDK;->mTmpSParam:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lcom/mqgame/lib/SSDK;->mTmpAParam:Landroid/app/Activity;

    .line 142
    new-instance v0, Lcom/mqgame/lib/SSDK$4;

    invoke-direct {v0}, Lcom/mqgame/lib/SSDK$4;-><init>()V

    sput-object v0, Lcom/mqgame/lib/SSDK;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/lk/sdk/PluginInterface;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    return-object v0
.end method

.method public static deinit()I
    .locals 3

    .prologue
    .line 323
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    new-instance v2, Lcom/mqgame/lib/SSDK$6;

    invoke-direct {v2}, Lcom/mqgame/lib/SSDK$6;-><init>()V

    invoke-virtual {v1, v2}, Lcom/lk/sdk/PluginInterface;->deinit(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    const/4 v1, 0x1

    .line 338
    :goto_0
    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 335
    :catch_1
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static enterBBS(Ljava/lang/String;)V
    .locals 2
    .param p0, "useless"    # Ljava/lang/String;

    .prologue
    .line 239
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1, p0}, Lcom/lk/sdk/PluginInterface;->enterBBS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static feedback(Ljava/lang/String;)V
    .locals 27
    .param p0, "useless"    # Ljava/lang/String;

    .prologue
    .line 250
    :try_start_0
    new-instance v6, Lcom/mqgame/lib/SUtility$SIniReader;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "users"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "feedback.ini"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v6, "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    move-object/from16 v9, p0

    .line 253
    .local v9, "sCmd":Ljava/lang/String;
    const-string v23, "share"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 255
    const-string v23, "Param"

    const-string v24, "Title"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 256
    .local v20, "sTitle":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "Content"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 257
    .local v10, "sContent":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "ShareUrl"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 258
    .local v16, "sShareURL":Ljava/lang/String;
    const-string v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const v26, 0x7f02002f

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 259
    .local v11, "sImageId":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "SubTitle"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, "sSubTitle":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "ImageUrl"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 261
    .local v12, "sImageURL":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "ShareType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 263
    .local v15, "sShareType":Ljava/lang/String;
    const-string v23, "{\"shareTitle\":\"%s\", \"viceTitle\":\"%s\", \"shareContent\":\"%s\",\"shareUrl\":\"%s\",\"imageUrl\":\"%s\",\"iconId\":\"%s\"}"

    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    const/16 v25, 0x1

    aput-object v17, v24, v25

    const/16 v25, 0x2

    aput-object v10, v24, v25

    const/16 v25, 0x3

    aput-object v16, v24, v25

    const/16 v25, 0x4

    aput-object v12, v24, v25

    const/16 v25, 0x5

    aput-object v11, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "msg":Ljava/lang/String;
    new-instance v22, Lcom/lk/sdk/BasePluginInterface$ShareInfo;

    invoke-direct/range {v22 .. v22}, Lcom/lk/sdk/BasePluginInterface$ShareInfo;-><init>()V

    .line 269
    .local v22, "shareInfo":Lcom/lk/sdk/BasePluginInterface$ShareInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->setContent(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->setShareUrl(Ljava/lang/String;)V

    .line 272
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->setImageId(I)V

    .line 273
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/lk/sdk/BasePluginInterface$ShareInfo;->setImageUrl(Ljava/lang/String;)V

    .line 274
    sget-object v23, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1, v5}, Lcom/lk/sdk/PluginInterface;->share(Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$ShareInfo;Ljava/lang/String;)V

    .line 320
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .end local v9    # "sCmd":Ljava/lang/String;
    .end local v10    # "sContent":Ljava/lang/String;
    .end local v11    # "sImageId":Ljava/lang/String;
    .end local v12    # "sImageURL":Ljava/lang/String;
    .end local v15    # "sShareType":Ljava/lang/String;
    .end local v16    # "sShareURL":Ljava/lang/String;
    .end local v17    # "sSubTitle":Ljava/lang/String;
    .end local v20    # "sTitle":Ljava/lang/String;
    .end local v22    # "shareInfo":Lcom/lk/sdk/BasePluginInterface$ShareInfo;
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v6    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .restart local v9    # "sCmd":Ljava/lang/String;
    :cond_1
    const-string v23, "entergame"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 278
    const-string v23, "Param"

    const-string v24, "RoleName"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 279
    .local v14, "sRoleName":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "AccId"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "sAccId":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "AccName"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 281
    .local v8, "sAccName":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "ZoneName"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 282
    .local v19, "sSvrName":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "RoleLv"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 283
    .local v13, "sRoleLv":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "ZonId"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 284
    .local v18, "sSvrId":Ljava/lang/String;
    const-string v23, "Param"

    const-string v24, "VipLv"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 286
    .local v21, "sVipLv":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 288
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string v23, "roleName"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v23, "serverName"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v23, "roleLevel"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v23, "userName"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v23, "vipLevel"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 296
    :goto_1
    :try_start_2
    const-string v23, "SOG"

    const-string v24, "SDK EnterGame"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v23, "SOG"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    sget-object v23, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/lk/sdk/PluginInterface;->enterGame(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 314
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .end local v7    # "sAccId":Ljava/lang/String;
    .end local v8    # "sAccName":Ljava/lang/String;
    .end local v9    # "sCmd":Ljava/lang/String;
    .end local v13    # "sRoleLv":Ljava/lang/String;
    .end local v14    # "sRoleName":Ljava/lang/String;
    .end local v18    # "sSvrId":Ljava/lang/String;
    .end local v19    # "sSvrName":Ljava/lang/String;
    .end local v21    # "sVipLv":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 293
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "json":Lorg/json/JSONObject;
    .restart local v6    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .restart local v7    # "sAccId":Ljava/lang/String;
    .restart local v8    # "sAccName":Ljava/lang/String;
    .restart local v9    # "sCmd":Ljava/lang/String;
    .restart local v13    # "sRoleLv":Ljava/lang/String;
    .restart local v14    # "sRoleName":Ljava/lang/String;
    .restart local v18    # "sSvrId":Ljava/lang/String;
    .restart local v19    # "sSvrName":Ljava/lang/String;
    .restart local v21    # "sVipLv":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 294
    .local v3, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 317
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .end local v7    # "sAccId":Ljava/lang/String;
    .end local v8    # "sAccName":Ljava/lang/String;
    .end local v9    # "sCmd":Ljava/lang/String;
    .end local v13    # "sRoleLv":Ljava/lang/String;
    .end local v14    # "sRoleName":Ljava/lang/String;
    .end local v18    # "sSvrId":Ljava/lang/String;
    .end local v19    # "sSvrName":Ljava/lang/String;
    .end local v21    # "sVipLv":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 318
    .local v3, "e":Ljava/lang/Error;
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_0

    .line 300
    .end local v3    # "e":Ljava/lang/Error;
    .restart local v6    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    .restart local v9    # "sCmd":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v23, "invite"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 301
    sget-object v23, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Lcom/lk/sdk/PluginInterface;->inviteFriend(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :cond_3
    const-string v23, "feedback"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 304
    const-string v23, "Param"

    const-string v24, "RoleName"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 305
    .restart local v14    # "sRoleName":Ljava/lang/String;
    sget-object v23, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/lk/sdk/PluginInterface;->enterService(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    .end local v14    # "sRoleName":Ljava/lang/String;
    :cond_4
    const-string v23, "switchacc"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 308
    const-string v23, ""

    invoke-static/range {v23 .. v23}, Lcom/mqgame/lib/SSDK;->logout(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :cond_5
    const-string v23, "webex"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2

    move-result v23

    if-eqz v23, :cond_0

    goto/16 :goto_0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activtiy"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    new-instance v2, Lcom/mqgame/lib/SSDK$1;

    invoke-direct {v2}, Lcom/mqgame/lib/SSDK$1;-><init>()V

    invoke-virtual {v1, p0, p1, v2}, Lcom/lk/sdk/PluginInterface;->init(Landroid/app/Activity;Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 119
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    new-instance v2, Lcom/mqgame/lib/SSDK$2;

    invoke-direct {v2}, Lcom/mqgame/lib/SSDK$2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/lk/sdk/PluginInterface;->setPayCallback(Lcom/lk/sdk/BasePluginInterface$Callback;)V

    .line 125
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    new-instance v2, Lcom/mqgame/lib/SSDK$3;

    invoke-direct {v2}, Lcom/mqgame/lib/SSDK$3;-><init>()V

    invoke-virtual {v1, v2}, Lcom/lk/sdk/PluginInterface;->setSwitchAccountCallBack(Lcom/lk/sdk/BasePluginInterface$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static login(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activtiy"    # Landroid/app/Activity;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 177
    :try_start_0
    const-string v1, "SDK"

    const-string v2, "login...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sput-object p0, Lcom/mqgame/lib/SSDK;->mTmpAParam:Landroid/app/Activity;

    .line 179
    sput-object p1, Lcom/mqgame/lib/SSDK;->mTmpSParam:Ljava/lang/String;

    .line 180
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    sget-object v2, Lcom/mqgame/lib/SSDK;->mLoginCallback:Lcom/lk/sdk/BasePluginInterface$Callback;

    invoke-virtual {v1, p0, p1, v2}, Lcom/lk/sdk/PluginInterface;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static logout(Ljava/lang/String;)V
    .locals 3
    .param p0, "useless"    # Ljava/lang/String;

    .prologue
    .line 190
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    new-instance v2, Lcom/mqgame/lib/SSDK$5;

    invoke-direct {v2}, Lcom/mqgame/lib/SSDK$5;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/lk/sdk/PluginInterface;->logout(Ljava/lang/String;Lcom/lk/sdk/BasePluginInterface$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 77
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1, p0, p1, p2}, Lcom/lk/sdk/PluginInterface;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static onConfigChged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p0, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 342
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v1, Lcom/mqgame/lib/SNativeActivity;

    .line 343
    .local v1, "nv":Lcom/mqgame/lib/SNativeActivity;
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mqgame/lib/SNativeActivity;->showBlank(Z)V

    .line 355
    .end local v1    # "nv":Lcom/mqgame/lib/SNativeActivity;
    :goto_0
    return-void

    .line 346
    .restart local v1    # "nv":Lcom/mqgame/lib/SNativeActivity;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mqgame/lib/SNativeActivity;->showBlank(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 349
    .end local v1    # "nv":Lcom/mqgame/lib/SNativeActivity;
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 352
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static onCreate()V
    .locals 2

    .prologue
    .line 21
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1}, Lcom/lk/sdk/PluginInterface;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static onDestroy()V
    .locals 2

    .prologue
    .line 100
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1}, Lcom/lk/sdk/PluginInterface;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1, p0}, Lcom/lk/sdk/PluginInterface;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static onPause()V
    .locals 2

    .prologue
    .line 43
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1}, Lcom/lk/sdk/PluginInterface;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static onResume()V
    .locals 2

    .prologue
    .line 32
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1}, Lcom/lk/sdk/PluginInterface;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static onStart()V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1}, Lcom/lk/sdk/PluginInterface;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static onStop()V
    .locals 2

    .prologue
    .line 54
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1}, Lcom/lk/sdk/PluginInterface;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "orderId"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "customInfo"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "productDesc"    # Ljava/lang/String;
    .param p5, "productId"    # Ljava/lang/String;
    .param p6, "rate"    # Ljava/lang/String;
    .param p7, "notifyURL"    # Ljava/lang/String;
    .param p8, "ext"    # Ljava/lang/String;

    .prologue
    .line 218
    :try_start_0
    sget-object v0, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/lk/sdk/PluginInterface;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v10

    .line 220
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 222
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 223
    .local v10, "e":Ljava/lang/Error;
    invoke-virtual {v10}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static setAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 205
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1, p0, p1}, Lcom/lk/sdk/PluginInterface;->setAuth(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static userCenter(Ljava/lang/String;)V
    .locals 2
    .param p0, "useless"    # Ljava/lang/String;

    .prologue
    .line 228
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SSDK;->mPluginInterface:Lcom/lk/sdk/PluginInterface;

    invoke-virtual {v1, p0}, Lcom/lk/sdk/PluginInterface;->userCenter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method
