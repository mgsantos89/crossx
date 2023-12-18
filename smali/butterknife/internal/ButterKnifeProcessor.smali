.class public final Lbutterknife/internal/ButterKnifeProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "ButterKnifeProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ANDROID_PREFIX:Ljava/lang/String; = "android."

.field public static final JAVA_PREFIX:Ljava/lang/String; = "java."

.field private static final LISTENERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LIST_TYPE:Ljava/lang/String;

.field public static final SUFFIX:Ljava/lang/String; = "$$ViewInjector"

.field static final VIEW_TYPE:Ljava/lang/String; = "android.view.View"


# instance fields
.field private elementUtils:Ljavax/lang/model/util/Elements;

.field private filer:Ljavax/annotation/processing/Filer;

.field private typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbutterknife/internal/ButterKnifeProcessor;->LIST_TYPE:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 64
    const-class v2, Lbutterknife/OnCheckedChanged;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lbutterknife/OnClick;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lbutterknife/OnEditorAction;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lbutterknife/OnFocusChange;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lbutterknife/OnItemClick;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lbutterknife/OnItemLongClick;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lbutterknife/OnItemSelected;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lbutterknife/OnLongClick;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lbutterknife/OnPageChange;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lbutterknife/OnTextChanged;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lbutterknife/OnTouch;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbutterknife/internal/ButterKnifeProcessor;->LISTENERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    return-void
.end method

.method private doubleErasure(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 2

    .line 372
    iget-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3c

    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 375
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private varargs error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 672
    array-length v0, p3

    if-lez v0, :cond_0

    .line 673
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 675
    :cond_0
    iget-object p3, p0, Lbutterknife/internal/ButterKnifeProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p3}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p3

    sget-object v0, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    invoke-interface {p3, v0, p2, p1}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    return-void
.end method

.method private findAndParseListener(Ljavax/annotation/processing/RoundEnvironment;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 383
    invoke-interface {p1, p2}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 385
    :try_start_0
    invoke-direct {p0, p2, v0, p3, p4}, Lbutterknife/internal/ButterKnifeProcessor;->parseListenerAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 387
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 388
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 391
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unable to generate view injector for @%s.\n\n%s"

    .line 390
    invoke-direct {p0, v0, v2, v1}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private findAndParseTargets(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 124
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 127
    const-class v2, Lbutterknife/InjectView;

    invoke-interface {p1, v2}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 129
    :try_start_0
    invoke-direct {p0, v3, v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->parseInjectView(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 131
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 132
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "Unable to generate view injector for @InjectView.\n\n%s"

    .line 134
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_0
    const-class v2, Lbutterknife/InjectViews;

    invoke-interface {p1, v2}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    .line 141
    :try_start_1
    invoke-direct {p0, v3, v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->parseInjectViews(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 143
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 144
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "Unable to generate view injector for @InjectViews.\n\n%s"

    .line 146
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    :cond_1
    sget-object v2, Lbutterknife/internal/ButterKnifeProcessor;->LISTENERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 152
    invoke-direct {p0, p1, v3, v0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->findAndParseListener(Ljavax/annotation/processing/RoundEnvironment;Ljava/lang/Class;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_2

    .line 156
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0, v3, v1}, Lbutterknife/internal/ButterKnifeProcessor;->findParentFqcn(Ljavax/lang/model/element/TypeElement;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbutterknife/internal/ViewInjector;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$$ViewInjector"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbutterknife/internal/ViewInjector;->setParentInjector(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method private static findDuplicate([I)Ljava/lang/Integer;
    .locals 5

    .line 359
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 361
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findParentFqcn(Ljavax/lang/model/element/TypeElement;Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 655
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 656
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 659
    :cond_1
    check-cast p1, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    .line 660
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-direct {p0, p1}, Lbutterknife/internal/ButterKnifeProcessor;->getPackageName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object p2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lbutterknife/internal/ButterKnifeProcessor;->getClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 647
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 648
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    const/16 v0, 0x24

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/ViewInjector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lbutterknife/internal/ViewInjector;"
        }
    .end annotation

    .line 634
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/ViewInjector;

    if-nez v0, :cond_0

    .line 636
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-direct {p0, p2}, Lbutterknife/internal/ButterKnifeProcessor;->getPackageName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object v1

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, v1}, Lbutterknife/internal/ButterKnifeProcessor;->getClassName(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$$ViewInjector"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    new-instance v3, Lbutterknife/internal/ViewInjector;

    invoke-direct {v3, v1, v2, v0}, Lbutterknife/internal/ViewInjector;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    :cond_0
    return-object v0
.end method

.method private getPackageName(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Elements;->getPackageOf(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            ")Z"
        }
    .end annotation

    .line 201
    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 202
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android."

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "@%s-annotated class incorrectly in Android framework package. (%s)"

    .line 205
    invoke-direct {p0, p2, v0, p1}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const-string v1, "java."

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "@%s-annotated class incorrectly in Java framework package. (%s)"

    .line 210
    invoke-direct {p0, p2, v0, p1}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z
    .locals 6

    .line 593
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 596
    :cond_0
    instance-of v0, p1, Ljavax/lang/model/type/DeclaredType;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 599
    :cond_1
    check-cast p1, Ljavax/lang/model/type/DeclaredType;

    .line 600
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    .line 601
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3c

    .line 603
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    .line 604
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    if-lez v4, :cond_2

    const/16 v5, 0x2c

    .line 606
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v5, 0x3f

    .line 608
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e

    .line 610
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 615
    :cond_4
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    .line 616
    instance-of v0, p1, Ljavax/lang/model/element/TypeElement;

    if-nez v0, :cond_5

    return v2

    .line 619
    :cond_5
    check-cast p1, Ljavax/lang/model/element/TypeElement;

    .line 620
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 621
    invoke-direct {p0, v0, p2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 624
    :cond_6
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 625
    invoke-direct {p0, v0, p2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_8
    return v2
.end method

.method private isValidForGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/Element;",
            ")Z"
        }
    .end annotation

    .line 169
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 172
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v1

    .line 173
    sget-object v2, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 175
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    .line 176
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    filled-new-array {v1, p2, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "@%s %s must not be private or static. (%s.%s)"

    .line 174
    invoke-direct {p0, p3, v2, v1}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 181
    :goto_1
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v4, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-eq v2, v4, :cond_2

    .line 183
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    .line 184
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    filled-new-array {v1, p2, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "@%s %s may only be contained in classes. (%s.%s)"

    .line 182
    invoke-direct {p0, v0, v2, v1}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 189
    :cond_2
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getModifiers()Ljava/util/Set;

    move-result-object v2

    sget-object v4, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    .line 192
    invoke-interface {p3}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p3

    filled-new-array {p1, p2, v1, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "@%s %s may not be contained in private classes. (%s.%s)"

    .line 190
    invoke-direct {p0, v0, p2, p1}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    return v3
.end method

.method private parseInjectView(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 224
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 225
    instance-of v2, v1, Ljavax/lang/model/type/TypeVariable;

    if-eqz v2, :cond_0

    .line 226
    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    .line 227
    invoke-interface {v1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    :cond_0
    const-string v2, "android.view.View"

    .line 229
    invoke-direct {p0, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 231
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "@InjectView fields must extend from View. (%s.%s)"

    .line 230
    invoke-direct {p0, p1, v5, v2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 236
    :goto_0
    const-class v5, Lbutterknife/InjectView;

    const-string v6, "fields"

    invoke-direct {p0, v5, v6, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isValidForGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 237
    const-class v5, Lbutterknife/InjectView;

    invoke-direct {p0, v5, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 240
    const-class v5, Lbutterknife/InjectViews;

    invoke-interface {p1, v5}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 242
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Only one of @InjectView and @InjectViews is allowed. (%s.%s)"

    .line 241
    invoke-direct {p0, p1, v5, v2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    return-void

    .line 251
    :cond_3
    const-class v2, Lbutterknife/InjectView;

    invoke-interface {p1, v2}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lbutterknife/InjectView;

    invoke-interface {v2}, Lbutterknife/InjectView;->value()I

    move-result v2

    .line 253
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbutterknife/internal/ViewInjector;

    if-eqz v5, :cond_4

    .line 255
    invoke-virtual {v5, v2}, Lbutterknife/internal/ViewInjector;->getViewInjection(I)Lbutterknife/internal/ViewInjection;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 257
    invoke-virtual {v5}, Lbutterknife/internal/ViewInjection;->getViewBindings()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 258
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 259
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbutterknife/internal/ViewBinding;

    .line 261
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 262
    invoke-virtual {p2}, Lbutterknife/internal/ViewBinding;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    .line 263
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    filled-new-array {p3, p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Attempt to use @InjectView for an already injected ID %d on \'%s\'. (%s.%s)"

    .line 260
    invoke-direct {p0, p1, p3, p2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 269
    :cond_4
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    const-class v6, Lbutterknife/Optional;

    invoke-interface {p1, v6}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    .line 273
    :goto_1
    invoke-direct {p0, p2, v0}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/ViewInjector;

    move-result-object p1

    .line 274
    new-instance p2, Lbutterknife/internal/ViewBinding;

    invoke-direct {p2, v5, v1, v3}, Lbutterknife/internal/ViewBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 275
    invoke-virtual {p1, v2, p2}, Lbutterknife/internal/ViewInjector;->addView(ILbutterknife/internal/ViewBinding;)V

    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parseInjectViews(Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 287
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 288
    invoke-direct {p0, v1}, Lbutterknife/internal/ButterKnifeProcessor;->doubleErasure(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    .line 292
    check-cast v1, Ljavax/lang/model/type/ArrayType;

    .line 293
    invoke-interface {v1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 294
    sget-object v2, Lbutterknife/internal/CollectionBinding$Kind;->ARRAY:Lbutterknife/internal/CollectionBinding$Kind;

    move-object v3, v2

    move v2, v6

    goto :goto_1

    .line 295
    :cond_0
    sget-object v3, Lbutterknife/internal/ButterKnifeProcessor;->LIST_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 296
    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    .line 297
    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 298
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 300
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "@InjectViews List must have a generic component. (%s.%s)"

    .line 299
    invoke-direct {p0, p1, v2, v1}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    move v2, v5

    goto :goto_0

    .line 303
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    move v2, v6

    .line 305
    :goto_0
    sget-object v3, Lbutterknife/internal/CollectionBinding$Kind;->LIST:Lbutterknife/internal/CollectionBinding$Kind;

    goto :goto_1

    .line 308
    :cond_2
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "@InjectViews must be a List or array. (%s.%s)"

    .line 307
    invoke-direct {p0, p1, v2, v1}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    move v2, v5

    .line 311
    :goto_1
    instance-of v4, v1, Ljavax/lang/model/type/TypeVariable;

    if-eqz v4, :cond_3

    .line 312
    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    .line 313
    invoke-interface {v1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    const-string v4, "android.view.View"

    .line 317
    invoke-direct {p0, v1, v4}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 319
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "@InjectViews type must extend from View. (%s.%s)"

    .line 318
    invoke-direct {p0, p1, v4, v2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v5

    .line 324
    :cond_4
    const-class v4, Lbutterknife/InjectViews;

    const-string v7, "fields"

    invoke-direct {p0, v4, v7, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isValidForGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 325
    const-class v4, Lbutterknife/InjectViews;

    invoke-direct {p0, v4, p1}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v4

    or-int/2addr v2, v4

    if-eqz v2, :cond_5

    return-void

    .line 332
    :cond_5
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    const-class v4, Lbutterknife/InjectViews;

    invoke-interface {p1, v4}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lbutterknife/InjectViews;

    invoke-interface {v4}, Lbutterknife/InjectViews;->value()[I

    move-result-object v4

    .line 334
    array-length v7, v4

    if-nez v7, :cond_6

    .line 336
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p2

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "@InjectViews must specify at least one ID. (%s.%s)"

    .line 335
    invoke-direct {p0, p1, p3, p2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 340
    :cond_6
    invoke-static {v4}, Lbutterknife/internal/ButterKnifeProcessor;->findDuplicate([I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 343
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v8

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "@InjectViews annotation contains duplicate ID %d. (%s.%s)"

    .line 342
    invoke-direct {p0, p1, v8, v7}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    const-class v7, Lbutterknife/Optional;

    invoke-interface {p1, v7}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    move v5, v6

    .line 350
    :goto_2
    invoke-direct {p0, p2, v0}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/ViewInjector;

    move-result-object p1

    .line 351
    new-instance p2, Lbutterknife/internal/CollectionBinding;

    invoke-direct {p2, v2, v1, v3, v5}, Lbutterknife/internal/CollectionBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lbutterknife/internal/CollectionBinding$Kind;Z)V

    .line 352
    invoke-virtual {p1, v4, p2}, Lbutterknife/internal/ViewInjector;->addCollection([ILbutterknife/internal/CollectionBinding;)V

    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parseListenerAnnotation(Ljava/lang/Class;Ljavax/lang/model/element/Element;Ljava/util/Map;Ljava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeElement;",
            "Lbutterknife/internal/ViewInjector;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 400
    instance-of v3, v2, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v3, :cond_1c

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-ne v3, v4, :cond_1c

    .line 405
    move-object v3, v2

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 406
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    .line 409
    invoke-interface {v2, v1}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    const-string v6, "value"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    .line 410
    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 411
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, [I

    if-ne v8, v9, :cond_1b

    new-array v8, v7, [Ljava/lang/Object;

    .line 416
    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    check-cast v6, [I

    .line 417
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 418
    const-class v9, Lbutterknife/Optional;

    invoke-interface {v2, v9}, Ljavax/lang/model/element/Element;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    const-string v11, "methods"

    .line 421
    invoke-direct {v0, v1, v11, v2}, Lbutterknife/internal/ButterKnifeProcessor;->isValidForGeneratedCode(Ljava/lang/Class;Ljava/lang/String;Ljavax/lang/model/element/Element;)Z

    move-result v11

    .line 422
    invoke-direct/range {p0 .. p2}, Lbutterknife/internal/ButterKnifeProcessor;->isBindingInWrongPackage(Ljava/lang/Class;Ljavax/lang/model/element/Element;)Z

    move-result v12

    or-int/2addr v11, v12

    .line 424
    invoke-static {v6}, Lbutterknife/internal/ButterKnifeProcessor;->findDuplicate([I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 427
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v13

    .line 428
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v14

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "@%s annotation for method contains duplicate ID %d. (%s.%s)"

    .line 426
    invoke-direct {v0, v2, v12, v11}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v10

    .line 432
    :cond_1
    const-class v12, Lbutterknife/internal/ListenerClass;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lbutterknife/internal/ListenerClass;

    if-eqz v12, :cond_1a

    .line 439
    array-length v13, v6

    move v14, v7

    :goto_1
    if-ge v14, v13, :cond_5

    aget v15, v6, v14

    const/4 v7, -0x1

    if-ne v15, v7, :cond_4

    .line 441
    array-length v7, v6

    if-ne v7, v10, :cond_3

    if-nez v9, :cond_2

    .line 444
    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v11

    filled-new-array {v7, v11}, [Ljava/lang/Object;

    move-result-object v7

    const-string v11, "ID free injection must not be annotated with @Optional. (%s.%s)"

    .line 443
    invoke-direct {v0, v2, v11, v7}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v10

    .line 449
    :cond_2
    invoke-interface {v12}, Lbutterknife/internal/ListenerClass;->targetType()Ljava/lang/String;

    move-result-object v7

    .line 450
    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v15

    invoke-direct {v0, v15, v7}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 452
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    .line 453
    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v10

    filled-new-array {v11, v7, v15, v10}, [Ljava/lang/Object;

    move-result-object v7

    const-string v10, "@%s annotation without an ID may only be used with an object of type \"%s\". (%s.%s)"

    .line 451
    invoke-direct {v0, v2, v10, v7}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 458
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v11

    .line 459
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v15

    filled-new-array {v7, v10, v11, v15}, [Ljava/lang/Object;

    move-result-object v7

    const-string v10, "@%s annotation contains invalid ID %d. (%s.%s)"

    .line 457
    invoke-direct {v0, v2, v10, v7}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v11, 0x1

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_1

    .line 466
    :cond_5
    invoke-interface {v12}, Lbutterknife/internal/ListenerClass;->method()[Lbutterknife/internal/ListenerMethod;

    move-result-object v7

    .line 467
    array-length v10, v7

    const/4 v13, 0x1

    if-gt v10, v13, :cond_19

    .line 470
    array-length v10, v7

    if-ne v10, v13, :cond_7

    .line 471
    invoke-interface {v12}, Lbutterknife/internal/ListenerClass;->callbacks()Ljava/lang/Class;

    move-result-object v5

    const-class v10, Lbutterknife/internal/ListenerClass$NONE;

    if-ne v5, v10, :cond_6

    const/4 v10, 0x0

    .line 476
    aget-object v5, v7, v10

    goto :goto_3

    .line 472
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 474
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Both method() and callback() defined on @%s."

    .line 473
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v10, 0x0

    const-string v7, "callback"

    new-array v13, v10, [Ljava/lang/Class;

    .line 478
    invoke-virtual {v1, v7, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v13, v10, [Ljava/lang/Object;

    .line 479
    invoke-virtual {v7, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Enum;

    .line 480
    invoke-virtual {v5}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 481
    const-class v10, Lbutterknife/internal/ListenerMethod;

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lbutterknife/internal/ListenerMethod;

    if-eqz v7, :cond_18

    move-object v5, v7

    .line 491
    :goto_3
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v7

    .line 492
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v5}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-le v10, v13, :cond_8

    .line 494
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 495
    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v14

    filled-new-array {v10, v11, v13, v14}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "@%s methods can have at most %s parameter(s). (%s.%s)"

    .line 493
    invoke-direct {v0, v2, v11, v10}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x1

    .line 500
    :cond_8
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    .line 501
    instance-of v13, v10, Ljavax/lang/model/type/TypeVariable;

    if-eqz v13, :cond_9

    .line 502
    check-cast v10, Ljavax/lang/model/type/TypeVariable;

    .line 503
    invoke-interface {v10}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v10

    .line 505
    :cond_9
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 507
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lbutterknife/internal/ListenerMethod;->returnType()Ljava/lang/String;

    move-result-object v11

    .line 508
    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v14

    filled-new-array {v10, v11, v13, v14}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "@%s methods must have a \'%s\' return type. (%s.%s)"

    .line 506
    invoke-direct {v0, v2, v11, v10}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v13, 0x1

    goto :goto_4

    :cond_a
    move v13, v11

    :goto_4
    if-eqz v13, :cond_b

    return-void

    .line 516
    :cond_b
    sget-object v10, Lbutterknife/internal/Parameter;->NONE:[Lbutterknife/internal/Parameter;

    .line 517
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_15

    .line 518
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    new-array v11, v10, [Lbutterknife/internal/Parameter;

    .line 519
    new-instance v13, Ljava/util/BitSet;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/BitSet;-><init>(I)V

    .line 520
    invoke-interface {v5}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    .line 521
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_14

    .line 522
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 523
    invoke-interface {v1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 524
    instance-of v2, v1, Ljavax/lang/model/type/TypeVariable;

    if-eqz v2, :cond_c

    .line 525
    check-cast v1, Ljavax/lang/model/type/TypeVariable;

    .line 526
    invoke-interface {v1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    :cond_c
    move-object/from16 v16, v12

    const/4 v2, 0x0

    .line 529
    :goto_6
    array-length v12, v14

    if-ge v2, v12, :cond_f

    .line 530
    invoke-virtual {v13, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_7

    .line 533
    :cond_d
    aget-object v12, v14, v2

    invoke-direct {v0, v1, v12}, Lbutterknife/internal/ButterKnifeProcessor;->isSubtypeOfType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 534
    new-instance v12, Lbutterknife/internal/Parameter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v2, v1}, Lbutterknife/internal/Parameter;-><init>(ILjava/lang/String;)V

    aput-object v12, v11, v15

    .line 535
    invoke-virtual {v13, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_8

    :cond_e
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 539
    :cond_f
    :goto_8
    aget-object v1, v11, v15

    if-nez v1, :cond_13

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to match @"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " method arguments. ("

    .line 543
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 544
    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2e

    .line 545
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 546
    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x29

    .line 547
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v10, :cond_11

    .line 549
    aget-object v4, v11, v2

    const-string v6, "\n\n  Parameter #"

    .line 550
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v2, 0x1

    .line 551
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": "

    .line 552
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 553
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v2}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n    "

    .line 554
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_10

    const-string v2, "did not match any listener parameters"

    .line 556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    goto :goto_a

    :cond_10
    const-string v2, "matched listener parameter #"

    .line 558
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    invoke-virtual {v4}, Lbutterknife/internal/Parameter;->getListenerPosition()I

    move-result v6

    const/4 v12, 0x1

    add-int/2addr v6, v12

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 560
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 561
    invoke-virtual {v4}, Lbutterknife/internal/Parameter;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    move v2, v8

    goto :goto_9

    :cond_11
    const-string v2, "\n\nMethods may have up to "

    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 565
    invoke-interface {v5}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " parameter(s):\n"

    .line 566
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-interface {v5}, Lbutterknife/internal/ListenerMethod;->parameters()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v4, :cond_12

    aget-object v5, v2, v10

    const-string v6, "\n  "

    .line 568
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_12
    const-string v2, "\n\nThese may be listed in any order but will be searched for from top to bottom."

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_13
    const/4 v2, 0x0

    const/4 v12, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move-object/from16 v12, v16

    goto/16 :goto_5

    :cond_14
    move-object/from16 v16, v12

    const/4 v2, 0x0

    move-object v10, v11

    goto :goto_c

    :cond_15
    move-object/from16 v16, v12

    const/4 v2, 0x0

    .line 578
    :goto_c
    new-instance v1, Lbutterknife/internal/ListenerBinding;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v8, v3, v9}, Lbutterknife/internal/ListenerBinding;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move-object/from16 v3, p3

    .line 579
    invoke-direct {v0, v3, v4}, Lbutterknife/internal/ButterKnifeProcessor;->getOrCreateTargetClass(Ljava/util/Map;Ljavax/lang/model/element/TypeElement;)Lbutterknife/internal/ViewInjector;

    move-result-object v3

    .line 580
    array-length v7, v6

    :goto_d
    if-ge v2, v7, :cond_17

    aget v8, v6, v2

    move-object/from16 v12, v16

    .line 581
    invoke-virtual {v3, v8, v12, v5, v1}, Lbutterknife/internal/ViewInjector;->addListener(ILbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/ListenerBinding;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 583
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Multiple listener methods with return value specified for ID %d. (%s.%s)"

    move-object/from16 v8, p2

    .line 582
    invoke-direct {v0, v8, v2, v1}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_16
    move-object/from16 v8, p2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v12

    goto :goto_d

    .line 589
    :cond_17
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 483
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    const-class v2, Lbutterknife/internal/ListenerMethod;

    .line 485
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ListenerMethod"

    filled-new-array {v5, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "No @%s defined on @%s\'s %s.%s."

    .line 484
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 469
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Multiple listener methods specified on @%s."

    .line 468
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-class v2, Lbutterknife/internal/ListenerClass;

    const-string v2, "ListenerClass"

    .line 436
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "No @%s defined on @%s."

    .line 435
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "@%s annotation value() type not int[]."

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v3

    .line 413
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 402
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "@%s annotation must be on a method."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSupportedAnnotationTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 92
    const-class v1, Lbutterknife/InjectView;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    const-class v1, Lbutterknife/InjectViews;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lbutterknife/internal/ButterKnifeProcessor;->LISTENERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSupportedSourceVersion()Ljavax/lang/model/SourceVersion;
    .locals 1

    .line 668
    invoke-static {}, Ljavax/lang/model/SourceVersion;->latestSupported()Ljavax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 85
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 86
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getTypeUtils()Ljavax/lang/model/util/Types;

    move-result-object v0

    iput-object v0, p0, Lbutterknife/internal/ButterKnifeProcessor;->typeUtils:Ljavax/lang/model/util/Types;

    .line 87
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getFiler()Ljavax/annotation/processing/Filer;

    move-result-object p1

    iput-object p1, p0, Lbutterknife/internal/ButterKnifeProcessor;->filer:Ljavax/annotation/processing/Filer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p2}, Lbutterknife/internal/ButterKnifeProcessor;->findAndParseTargets(Ljavax/annotation/processing/RoundEnvironment;)Ljava/util/Map;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 106
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbutterknife/internal/ViewInjector;

    .line 109
    :try_start_0
    iget-object v2, p0, Lbutterknife/internal/ButterKnifeProcessor;->filer:Ljavax/annotation/processing/Filer;

    invoke-virtual {p2}, Lbutterknife/internal/ViewInjector;->getFqcn()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljavax/lang/model/element/Element;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    invoke-interface {v2, v3, v0}, Ljavax/annotation/processing/Filer;->createSourceFile(Ljava/lang/CharSequence;[Ljavax/lang/model/element/Element;)Ljavax/tools/JavaFileObject;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljavax/tools/JavaFileObject;->openWriter()Ljava/io/Writer;

    move-result-object v0

    .line 111
    invoke-virtual {p2}, Lbutterknife/internal/ViewInjector;->brewJava()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 113
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 115
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Unable to write injector for type %s: %s"

    invoke-direct {p0, v1, v0, p2}, Lbutterknife/internal/ButterKnifeProcessor;->error(Ljavax/lang/model/element/Element;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return v0
.end method
