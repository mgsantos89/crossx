.class final Lbutterknife/internal/ViewInjector;
.super Ljava/lang/Object;
.source "ViewInjector.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private final classPackage:Ljava/lang/String;

.field private final collectionBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbutterknife/internal/CollectionBinding;",
            "[I>;"
        }
    .end annotation
.end field

.field private parentInjector:Ljava/lang/String;

.field private final targetClass:Ljava/lang/String;

.field private final viewIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lbutterknife/internal/ViewInjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewInjector;->collectionBindings:Ljava/util/Map;

    .line 26
    iput-object p1, p0, Lbutterknife/internal/ViewInjector;->classPackage:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lbutterknife/internal/ViewInjector;->className:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lbutterknife/internal/ViewInjector;->targetClass:Ljava/lang/String;

    return-void
.end method

.method static emitCastIfNeeded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.view.View"

    .line 358
    invoke-static {p0, v0, p1}, Lbutterknife/internal/ViewInjector;->emitCastIfNeeded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static emitCastIfNeeded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 363
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x28

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private emitCollectionBinding(Ljava/lang/StringBuilder;Lbutterknife/internal/CollectionBinding;[I)V
    .locals 3

    const-string v0, "    target."

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    sget-object v0, Lbutterknife/internal/ViewInjector$1;->$SwitchMap$butterknife$internal$CollectionBinding$Kind:[I

    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->getKind()Lbutterknife/internal/CollectionBinding$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lbutterknife/internal/CollectionBinding$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "Finder.listOf("

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown kind: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->getKind()Lbutterknife/internal/CollectionBinding$Kind;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "Finder.arrayOf("

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v0, 0x0

    .line 127
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_4

    if-lez v0, :cond_2

    const/16 v1, 0x2c

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "\n        "

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lbutterknife/internal/ViewInjector;->emitCastIfNeeded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "finder.findRequiredView(source, "

    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v0

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \""

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    invoke-virtual {p2}, Lbutterknife/internal/CollectionBinding;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, "finder.findOptionalView(source, "

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v0

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "\n    );"

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lbutterknife/internal/Binding;",
            ">;)V"
        }
    .end annotation

    .line 369
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 379
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 380
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbutterknife/internal/Binding;

    if-eqz v1, :cond_0

    const-string v3, ", "

    .line 382
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_1

    const-string v3, "and "

    .line 385
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    invoke-interface {v2}, Lbutterknife/internal/Binding;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/Binding;

    invoke-interface {v0}, Lbutterknife/internal/Binding;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " and "

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 376
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbutterknife/internal/Binding;

    invoke-interface {p1}, Lbutterknife/internal/Binding;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 371
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbutterknife/internal/Binding;

    invoke-interface {p1}, Lbutterknife/internal/Binding;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    return-void
.end method

.method private emitInject(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "  public static void inject(Finder finder, final "

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->targetClass:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " target, Object source) {\n"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "    "

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".inject(finder, target, source);\n\n"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "    View view;\n"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbutterknife/internal/ViewInjection;

    .line 102
    invoke-direct {p0, p1, v1}, Lbutterknife/internal/ViewInjector;->emitViewInjection(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->collectionBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbutterknife/internal/CollectionBinding;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {p0, p1, v2, v1}, Lbutterknife/internal/ViewInjector;->emitCollectionBinding(Ljava/lang/StringBuilder;Lbutterknife/internal/CollectionBinding;[I)V

    goto :goto_1

    :cond_2
    const-string v0, "  }\n"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private emitListenerBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V
    .locals 19

    move-object/from16 v0, p1

    .line 190
    invoke-virtual/range {p2 .. p2}, Lbutterknife/internal/ViewInjection;->getListenerBindings()Ljava/util/Map;

    move-result-object v1

    .line 191
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lbutterknife/internal/ViewInjection;->getRequiredBindings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "    if (view != null) {\n"

    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    goto :goto_0

    :cond_1
    const-string v3, ""

    .line 205
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbutterknife/internal/ListenerClass;

    .line 207
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v6, "android.view.View"

    .line 210
    invoke-interface {v5}, Lbutterknife/internal/ListenerClass;->targetType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "    "

    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    if-eqz v6, :cond_5

    const-string v9, "(("

    .line 214
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lbutterknife/internal/ListenerClass;->targetType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface {v5}, Lbutterknife/internal/ListenerClass;->genericArguments()I

    move-result v9

    if-lez v9, :cond_4

    const/16 v9, 0x3c

    .line 216
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    .line 217
    :goto_2
    invoke-interface {v5}, Lbutterknife/internal/ListenerClass;->genericArguments()I

    move-result v10

    if-ge v9, v10, :cond_3

    if-lez v9, :cond_2

    .line 219
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v10, 0x3f

    .line 221
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/16 v9, 0x3e

    .line 223
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v9, ") "

    .line 225
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v9, "view"

    .line 227
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_6

    const/16 v6, 0x29

    .line 229
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v6, 0x2e

    .line 231
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 232
    invoke-interface {v5}, Lbutterknife/internal/ListenerClass;->setter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "(\n"

    .line 233
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "      new "

    .line 237
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 238
    invoke-interface {v5}, Lbutterknife/internal/ListenerClass;->type()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "() {\n"

    .line 239
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {v5}, Lbutterknife/internal/ViewInjector;->getListenerMethods(Lbutterknife/internal/ListenerClass;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbutterknife/internal/ListenerMethod;

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "        @Override public "

    .line 244
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 245
    invoke-interface {v6}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    .line 246
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 247
    invoke-interface {v6}, Lbutterknife/internal/ListenerMethod;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 248
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-interface {v6}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v10

    .line 252
    array-length v11, v10

    const/4 v12, 0x0

    :goto_4
    const/16 v13, 0xa

    const-string v14, "          "

    if-ge v12, v11, :cond_8

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 254
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v10, v12

    .line 255
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " p"

    .line 256
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 257
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v11, -0x1

    if-ge v12, v14, :cond_7

    const/16 v14, 0x2c

    .line 259
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    :cond_7
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 265
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "        ) {\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "void"

    .line 269
    invoke-interface {v6}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_9

    const-string v11, "return "

    .line 271
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_9
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 275
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 276
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 278
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 279
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbutterknife/internal/ListenerBinding;

    const-string v12, "target."

    .line 280
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Lbutterknife/internal/ListenerBinding;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v15, 0x28

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v11}, Lbutterknife/internal/ListenerBinding;->getParameters()Ljava/util/List;

    move-result-object v11

    .line 282
    invoke-interface {v6}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v12

    .line 283
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v15, :cond_b

    .line 284
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lbutterknife/internal/Parameter;

    .line 285
    invoke-virtual/range {v16 .. v16}, Lbutterknife/internal/Parameter;->getListenerPosition()I

    move-result v13

    move-object/from16 v17, v1

    .line 286
    aget-object v1, v12, v13

    move-object/from16 v18, v4

    invoke-virtual/range {v16 .. v16}, Lbutterknife/internal/Parameter;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lbutterknife/internal/ViewInjector;->emitCastIfNeeded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x70

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v15, -0x1

    if-ge v8, v1, :cond_a

    .line 289
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v17

    move-object/from16 v4, v18

    const/16 v13, 0xa

    goto :goto_6

    :cond_b
    move-object/from16 v17, v1

    move-object/from16 v18, v4

    const-string v1, ");"

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "\n"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    move-object/from16 v1, v17

    move-object/from16 v4, v18

    const/16 v13, 0xa

    goto :goto_5

    :cond_d
    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move v1, v13

    goto :goto_7

    :cond_e
    move-object/from16 v17, v1

    move-object/from16 v18, v4

    if-eqz v10, :cond_f

    .line 298
    invoke-interface {v6}, Lbutterknife/internal/ListenerMethod;->defaultReturn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    const/16 v1, 0xa

    .line 300
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "        }\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    move-object/from16 v4, v18

    goto/16 :goto_3

    :cond_10
    move-object/from16 v17, v1

    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "      });\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    goto/16 :goto_1

    :cond_11
    if-eqz v2, :cond_12

    const-string v1, "    }\n"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    return-void
.end method

.method private emitReset(Ljava/lang/StringBuilder;)V
    .locals 6

    const-string v0, "  public static void reset("

    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " target) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "    "

    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reset(target);\n\n"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_0
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " = null;\n"

    const-string v3, "    target."

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbutterknife/internal/ViewInjection;

    .line 347
    invoke-virtual {v1}, Lbutterknife/internal/ViewInjection;->getViewBindings()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbutterknife/internal/ViewBinding;

    .line 348
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lbutterknife/internal/ViewBinding;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->collectionBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbutterknife/internal/CollectionBinding;

    .line 352
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lbutterknife/internal/CollectionBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "  }\n"

    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private emitViewBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V
    .locals 3

    .line 174
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getViewBindings()Ljava/util/Collection;

    move-result-object p2

    .line 175
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewBinding;

    const-string v1, "    target."

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Lbutterknife/internal/ViewBinding;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Lbutterknife/internal/ViewBinding;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbutterknife/internal/ViewInjector;->emitCastIfNeeded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v0, "view;\n"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private emitViewInjection(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V
    .locals 3

    const-string v0, "    view = "

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getRequiredBindings()Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "finder.findOptionalView(source, "

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");\n"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v0, "target;\n"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "finder.findRequiredView(source, "

    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjection;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \""

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {p1, v0}, Lbutterknife/internal/ViewInjector;->emitHumanDescription(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v0, "\");\n"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :goto_0
    invoke-direct {p0, p1, p2}, Lbutterknife/internal/ViewInjector;->emitViewBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V

    .line 170
    invoke-direct {p0, p1, p2}, Lbutterknife/internal/ViewInjector;->emitListenerBindings(Ljava/lang/StringBuilder;Lbutterknife/internal/ViewInjection;)V

    return-void
.end method

.method static getListenerMethods(Lbutterknife/internal/ListenerClass;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/internal/ListenerClass;",
            ")",
            "Ljava/util/List<",
            "Lbutterknife/internal/ListenerMethod;",
            ">;"
        }
    .end annotation

    .line 316
    invoke-interface {p0}, Lbutterknife/internal/ListenerClass;->method()[Lbutterknife/internal/ListenerMethod;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    invoke-interface {p0}, Lbutterknife/internal/ListenerClass;->method()[Lbutterknife/internal/ListenerMethod;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 321
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-interface {p0}, Lbutterknife/internal/ListenerClass;->callbacks()Ljava/lang/Class;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 324
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 325
    const-class v8, Lbutterknife/internal/ListenerMethod;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lbutterknife/internal/ListenerMethod;

    if-eqz v7, :cond_1

    .line 331
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "@%s\'s %s.%s missing @%s annotation."

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 328
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    .line 329
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v3, v1

    const-class p0, Lbutterknife/internal/ListenerMethod;

    const-string p0, "ListenerMethod"

    const/4 v1, 0x3

    aput-object p0, v3, v1

    .line 327
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 335
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private getOrCreateViewInjection(I)Lbutterknife/internal/ViewInjection;
    .locals 2

    .line 59
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewInjection;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lbutterknife/internal/ViewInjection;

    invoke-direct {v0, p1}, Lbutterknife/internal/ViewInjection;-><init>(I)V

    .line 62
    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method addCollection([ILbutterknife/internal/CollectionBinding;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->collectionBindings:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addListener(ILbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/ListenerBinding;)Z
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lbutterknife/internal/ViewInjector;->getOrCreateViewInjection(I)Lbutterknife/internal/ViewInjection;

    move-result-object p1

    .line 38
    invoke-virtual {p1, p2, p3}, Lbutterknife/internal/ViewInjection;->hasListenerBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "void"

    .line 39
    invoke-interface {p3}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lbutterknife/internal/ViewInjection;->addListenerBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/ListenerBinding;)V

    const/4 p1, 0x1

    return p1
.end method

.method addView(ILbutterknife/internal/ViewBinding;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lbutterknife/internal/ViewInjector;->getOrCreateViewInjection(I)Lbutterknife/internal/ViewInjection;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbutterknife/internal/ViewInjection;->addViewBinding(Lbutterknife/internal/ViewBinding;)V

    return-void
.end method

.method brewJava()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "// Generated code from Butter Knife. Do not modify!\npackage "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->classPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n\nimport android.view.View;\nimport butterknife.ButterKnife.Finder;\n\npublic class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0, v0}, Lbutterknife/internal/ViewInjector;->emitInject(Ljava/lang/StringBuilder;)V

    const/16 v1, 0xa

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {p0, v0}, Lbutterknife/internal/ViewInjector;->emitReset(Ljava/lang/StringBuilder;)V

    const-string v1, "}\n"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFqcn()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->classPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbutterknife/internal/ViewInjector;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getViewInjection(I)Lbutterknife/internal/ViewInjection;
    .locals 1

    .line 55
    iget-object v0, p0, Lbutterknife/internal/ViewInjector;->viewIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbutterknife/internal/ViewInjection;

    return-object p1
.end method

.method setParentInjector(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lbutterknife/internal/ViewInjector;->parentInjector:Ljava/lang/String;

    return-void
.end method
