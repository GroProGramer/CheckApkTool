.class public abstract Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;
.super Lcom/avos/avoscloud/im/v2/AVIMMessage;
.source "AVIMTypedMessage.java"


# static fields
.field static fieldCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avospush/util/FieldAttribute;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private messageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    .line 30
    .local v0, "type":Lcom/avos/avoscloud/im/v2/AVIMMessageType;
    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageType;->type()I

    move-result v1

    iput v1, p0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->messageType:I

    .line 31
    return-void
.end method

.method protected static computeFieldAttribute(Ljava/lang/Class;)V
    .locals 34
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 73
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v20, "fieldAttributeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/avos/avospush/util/FieldAttribute;>;"
    move-object/from16 v33, p0

    .line 75
    .local v33, "tmpClazz":Ljava/lang/Class;
    new-instance v31, Ljava/util/LinkedList;

    invoke-direct/range {v31 .. v31}, Ljava/util/LinkedList;-><init>()V

    .line 76
    .local v31, "methodsClassPairs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<[Ljava/lang/reflect/Method;Ljava/lang/Class;>;>;"
    const/16 v28, 0x0

    .line 77
    .local v28, "length":I
    :goto_0
    if-eqz v33, :cond_0

    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, v33

    if-eq v0, v5, :cond_0

    .line 78
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v18

    .line 79
    .local v18, "declaredFields":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v33

    .line 81
    goto :goto_0

    .line 83
    .end local v18    # "declaredFields":[Ljava/lang/reflect/Method;
    :cond_0
    invoke-static/range {v31 .. v31}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 84
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/Pair;

    .line 85
    .local v32, "pair":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/reflect/Method;Ljava/lang/Class;>;"
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Class;

    .line 86
    .local v17, "currentClazz":Ljava/lang/Class;
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/reflect/Method;

    .line 87
    .local v16, "currentClassMethods":[Ljava/lang/reflect/Method;
    move-object/from16 v13, v16

    .local v13, "arr$":[Ljava/lang/reflect/Method;
    array-length v0, v13

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    aget-object v6, v13, v22

    .line 88
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v30

    .line 89
    .local v30, "methodName":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-ge v5, v7, :cond_3

    .line 87
    :cond_2
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 98
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    .line 106
    :cond_4
    const-string v5, "set"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "getMetaClass"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "groovy.lang.MetaClass"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "get"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "is"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    :cond_5
    const/4 v3, 0x0

    .line 113
    .local v3, "propertyName":Ljava/lang/String;
    const-string v5, "set"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    .line 114
    .local v26, "isSetterMethod":Z
    const-string v5, "get"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    .line 115
    .local v25, "isGetterMethod":Z
    const-string v5, "is"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    .line 116
    .local v23, "isBooleanGetterMethod":Z
    if-eqz v26, :cond_d

    .line 117
    const/4 v5, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 119
    .local v15, "c3":C
    invoke-static {v15}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .end local v15    # "c3":C
    :cond_6
    :goto_3
    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 167
    .local v19, "field":Ljava/lang/reflect/Field;
    if-nez v19, :cond_8

    if-nez v23, :cond_7

    if-eqz v26, :cond_8

    .line 168
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 170
    .local v24, "isFieldName":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 171
    if-eqz v19, :cond_8

    .line 172
    move-object/from16 v3, v24

    .line 176
    .end local v24    # "isFieldName":Ljava/lang/String;
    :cond_8
    if-eqz v19, :cond_2

    .line 177
    const-class v5, Lcom/avos/avoscloud/im/v2/AVIMMessageField;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v29

    check-cast v29, Lcom/avos/avoscloud/im/v2/AVIMMessageField;

    .line 179
    .local v29, "messageField":Lcom/avos/avoscloud/im/v2/AVIMMessageField;
    if-eqz v29, :cond_2

    .line 180
    invoke-interface/range {v29 .. v29}, Lcom/avos/avoscloud/im/v2/AVIMMessageField;->name()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "annotatedName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 182
    .local v2, "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 183
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    check-cast v2, Lcom/avos/avospush/util/FieldAttribute;

    .line 185
    .restart local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    :cond_9
    if-eqz v26, :cond_14

    .line 186
    if-nez v2, :cond_13

    .line 187
    new-instance v2, Lcom/avos/avospush/util/FieldAttribute;

    .end local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/avos/avospush/util/FieldAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 189
    .restart local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_a
    :goto_4
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_2

    .line 121
    .end local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    .end local v4    # "annotatedName":Ljava/lang/String;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v29    # "messageField":Lcom/avos/avoscloud/im/v2/AVIMMessageField;
    .restart local v15    # "c3":C
    :cond_b
    const/16 v5, 0x5f

    if-ne v15, v5, :cond_c

    .line 122
    const/4 v5, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 123
    :cond_c
    const/16 v5, 0x66

    if-ne v15, v5, :cond_2

    .line 124
    const/4 v5, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 130
    .end local v15    # "c3":C
    :cond_d
    if-eqz v25, :cond_10

    .line 131
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x4

    if-lt v5, v7, :cond_2

    .line 135
    const-string v5, "getClass"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 139
    const/4 v5, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 141
    .restart local v15    # "c3":C
    invoke-static {v15}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 143
    :cond_e
    const/16 v5, 0x5f

    if-ne v15, v5, :cond_f

    .line 144
    const/4 v5, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 145
    :cond_f
    const/16 v5, 0x66

    if-ne v15, v5, :cond_2

    .line 146
    const/4 v5, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 150
    .end local v15    # "c3":C
    :cond_10
    if-eqz v23, :cond_6

    .line 151
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-lt v5, v7, :cond_2

    .line 154
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 156
    .local v14, "c2":C
    invoke-static {v14}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 158
    :cond_11
    const/16 v5, 0x5f

    if-ne v14, v5, :cond_12

    .line 159
    const/4 v5, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 160
    :cond_12
    const/16 v5, 0x66

    if-ne v14, v5, :cond_2

    .line 161
    const/4 v5, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 191
    .end local v14    # "c2":C
    .restart local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    .restart local v4    # "annotatedName":Ljava/lang/String;
    .restart local v19    # "field":Ljava/lang/reflect/Field;
    .restart local v29    # "messageField":Lcom/avos/avoscloud/im/v2/AVIMMessageField;
    :cond_13
    invoke-virtual {v2, v6}, Lcom/avos/avospush/util/FieldAttribute;->setSetterMethod(Ljava/lang/reflect/Method;)V

    goto/16 :goto_4

    .line 193
    :cond_14
    if-nez v23, :cond_15

    if-eqz v25, :cond_a

    .line 194
    :cond_15
    if-nez v2, :cond_16

    .line 195
    new-instance v2, Lcom/avos/avospush/util/FieldAttribute;

    .end local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    const/4 v11, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v10, v6

    invoke-direct/range {v7 .. v12}, Lcom/avos/avospush/util/FieldAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 197
    .restart local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 199
    :cond_16
    invoke-virtual {v2, v6}, Lcom/avos/avospush/util/FieldAttribute;->setGetterMethod(Ljava/lang/reflect/Method;)V

    goto/16 :goto_4

    .line 207
    .end local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v4    # "annotatedName":Ljava/lang/String;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v13    # "arr$":[Ljava/lang/reflect/Method;
    .end local v16    # "currentClassMethods":[Ljava/lang/reflect/Method;
    .end local v17    # "currentClazz":Ljava/lang/Class;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "i$":I
    .end local v23    # "isBooleanGetterMethod":Z
    .end local v25    # "isGetterMethod":Z
    .end local v26    # "isSetterMethod":Z
    .end local v27    # "len$":I
    .end local v29    # "messageField":Lcom/avos/avoscloud/im/v2/AVIMMessageField;
    .end local v30    # "methodName":Ljava/lang/String;
    .end local v32    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/reflect/Method;Ljava/lang/Class;>;"
    :cond_17
    sget-object v5, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 7

    .prologue
    .line 43
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 44
    .local v4, "json":Lcom/alibaba/fastjson/JSONObject;
    const-string v5, "_lctype"

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->getMessageType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v5, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->computeFieldAttribute(Ljava/lang/Class;)V

    .line 48
    :cond_0
    sget-object v5, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 49
    .local v0, "classFieldAttributesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/avos/avospush/util/FieldAttribute;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avospush/util/FieldAttribute;

    .line 50
    .local v1, "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    invoke-virtual {v1, p0}, Lcom/avos/avospush/util/FieldAttribute;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/avos/avospush/util/FieldAttribute;->getAliaName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    .end local v1    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->messageType:I

    return v0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v5, Ljava/util/Map;

    invoke-static {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 59
    .local v1, "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->computeFieldAttribute(Ljava/lang/Class;)V

    .line 62
    :cond_0
    sget-object v5, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 63
    .local v0, "classFieldAttributesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/avos/avospush/util/FieldAttribute;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avospush/util/FieldAttribute;

    .line 64
    .local v2, "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    invoke-virtual {v2}, Lcom/avos/avospush/util/FieldAttribute;->getAliaName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 65
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/avos/avospush/util/FieldAttribute;->getFieldType()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 66
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/avos/avospush/util/FieldAttribute;->getFieldType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    :cond_1
    invoke-virtual {v2, p0, v4}, Lcom/avos/avospush/util/FieldAttribute;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    .end local v2    # "fieldAttribute":Lcom/avos/avospush/util/FieldAttribute;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method protected setMessageType(I)V
    .locals 0
    .param p1, "messageType"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->messageType:I

    .line 39
    return-void
.end method
