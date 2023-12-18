.class public Lcom/startapps/crossx/view/widget/picker/StringPicker;
.super Landroid/widget/LinearLayout;
.source "StringPicker.java"


# static fields
.field private static final PICKER_CLASS:Ljava/lang/String;

.field private static final SDK_VERSION:I


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mInstance:Ljava/lang/Object;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->SDK_VERSION:I

    const-string v0, "android.widget.NumberPicker"

    .line 29
    sput-object v0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->PICKER_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/view/widget/picker/StringPicker;->PICKER_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    .line 89
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 90
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mInstance:Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mClazz:Ljava/lang/Class;

    const-string p2, "setDescendantFocusability"

    new-array v0, v4, [Ljava/lang/Class;

    .line 94
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mInstance:Ljava/lang/Object;

    new-array v0, v4, [Ljava/lang/Object;

    const/high16 v1, 0x60000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mInstance:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->addView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->setOrientation(I)V

    return-void

    :catch_0
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static isUnderHoneyComb()Z
    .locals 2

    .line 104
    sget v0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->SDK_VERSION:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrent()I
    .locals 4

    .line 48
    invoke-static {}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->isUnderHoneyComb()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "getCurrent"

    goto :goto_0

    :cond_0
    const-string v0, "getValue"

    .line 50
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mClazz:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mInstance:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCurrentValue()Ljava/lang/String;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mValues:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->getCurrent()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setCurrent(I)V
    .locals 6

    .line 38
    invoke-static {}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->isUnderHoneyComb()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setCurrent"

    goto :goto_0

    :cond_0
    const-string v0, "setValue"

    .line 40
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mClazz:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mInstance:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setValues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mValues:[Ljava/lang/String;

    .line 83
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->setValues([Ljava/lang/String;)V

    return-void
.end method

.method public setValues([Ljava/lang/String;)V
    .locals 9

    .line 62
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mValues:[Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/startapps/crossx/view/widget/picker/StringPicker;->isUnderHoneyComb()Z

    move-result v0

    const/4 v1, 0x0

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mClazz:Ljava/lang/Class;

    const-string v4, "setRange"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, [Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    iget-object v4, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mInstance:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    array-length v1, p1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    aput-object p1, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mClazz:Ljava/lang/Class;

    const-string v4, "setMaxValue"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mInstance:Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    array-length v6, p1

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mClazz:Ljava/lang/Class;

    const-string v4, "setMinValue"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mInstance:Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mClazz:Ljava/lang/Class;

    const-string v2, "setDisplayedValues"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/widget/picker/StringPicker;->mInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
