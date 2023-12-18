.class public final Lcom/startapps/crossx/view/multipleImages/MultipleImages;
.super Landroidx/viewpager/widget/ViewPager;
.source "MultipleImages.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\u0018B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\rH\u0014J*\u0010\u0013\u001a\u00020\u00102\u0018\u0008\u0002\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\rJ\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\rH\u0002R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/startapps/crossx/view/multipleImages/MultipleImages;",
        "Landroidx/viewpager/widget/ViewPager;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "mListImages",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;",
        "Lkotlin/collections/ArrayList;",
        "mResizeImage",
        "",
        "mWidth",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "populate",
        "listImages",
        "resizeImage",
        "populateFinal",
        "width",
        "MultipleImageModel",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mListImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeImage:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mListImages:Ljava/util/ArrayList;

    const/16 p1, 0x64

    .line 16
    iput p1, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mResizeImage:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mListImages:Ljava/util/ArrayList;

    const/16 p1, 0x64

    .line 16
    iput p1, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mResizeImage:I

    return-void
.end method

.method public static synthetic populate$default(Lcom/startapps/crossx/view/multipleImages/MultipleImages;Ljava/util/ArrayList;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/16 p2, 0x64

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->populate(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private final populateFinal(I)V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mListImages:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    new-instance v0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mListImages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mResizeImage:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;II)V

    check-cast v0, Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 32
    iget v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->populateFinal(I)V

    .line 35
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mWidth:I

    .line 37
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 44
    invoke-virtual {p0}, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 45
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 46
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v2, :cond_2

    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    .line 50
    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 53
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public final populate(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "listImages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mListImages:Ljava/util/ArrayList;

    .line 20
    iput p2, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mResizeImage:I

    .line 21
    iget p1, p0, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->mWidth:I

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/multipleImages/MultipleImages;->populateFinal(I)V

    return-void
.end method
