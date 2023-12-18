.class public final Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MultipleImageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultipleImageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipleImageAdapter.kt\ncom/startapps/crossx/view/adapter/MultipleImageAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1851#2,2:132\n1851#2,2:134\n*S KotlinDebug\n*F\n+ 1 MultipleImageAdapter.kt\ncom/startapps/crossx/view/adapter/MultipleImageAdapter\n*L\n61#1:132,2\n108#1:134,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\tH\u0016J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;",
        "Landroidx/viewpager/widget/PagerAdapter;",
        "mContext",
        "Landroid/content/Context;",
        "mListImages",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;",
        "Lkotlin/collections/ArrayList;",
        "mSizeImage",
        "",
        "mWidth",
        "(Landroid/content/Context;Ljava/util/ArrayList;II)V",
        "destroyItem",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "position",
        "obj",
        "",
        "getCount",
        "instantiateItem",
        "isViewFromObject",
        "",
        "view",
        "Landroid/view/View;",
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
.field private final mContext:Landroid/content/Context;

.field private final mListImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mSizeImage:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListImages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mListImages:Ljava/util/ArrayList;

    .line 29
    iput p3, p0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mSizeImage:I

    .line 30
    iput p4, p0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mWidth:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "container"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "obj"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "container"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    iget-object v3, v0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v3, v0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    .line 50
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mSizeImage:I

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    iget v3, v0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mWidth:I

    int-to-double v3, v3

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-double v6, v6

    const-wide v8, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v8

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v3

    .line 55
    iget-object v4, v0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mListImages:Ljava/util/ArrayList;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v8, v0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mListImages:Ljava/util/ArrayList;

    check-cast v8, Ljava/lang/Iterable;

    .line 132
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;

    .line 62
    invoke-virtual {v12}, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->getText()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 63
    invoke-virtual {v12}, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->getText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/CharSequence;

    const-string v15, " "

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v16

    check-cast v16, Ljava/util/Collection;

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 64
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/CharSequence;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12}, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->getText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Ljava/lang/CharSequence;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    sub-int/2addr v15, v14

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13, v14}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_0
    if-nez v10, :cond_6

    .line 67
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v5, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v15, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-ge v11, v3, :cond_2

    .line 69
    invoke-virtual {v12}, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->getImage()Ljava/lang/String;

    move-result-object v9

    const-string v14, ""

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_5

    .line 71
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setId(I)V

    .line 72
    move-object v9, v1

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 73
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x11

    .line 74
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    iget-object v9, v0, Lcom/startapps/crossx/view/adapter/MultipleImageAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f08005f

    invoke-static {v9, v12}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v12, 0x7f090002

    invoke-static {v9, v12}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v12, 0x7f060158

    invoke-static {v9, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    invoke-virtual {v5}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_4

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    .line 81
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f060034

    invoke-static {v13, v14}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 82
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    const/4 v13, 0x4

    invoke-virtual {v9, v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 83
    check-cast v9, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x1

    .line 85
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAllCaps(Z)V

    if-lt v11, v3, :cond_3

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "+"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v10, v9

    .line 90
    :cond_3
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v14, -0x1

    goto :goto_3

    .line 80
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_5
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 93
    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    invoke-virtual {v15}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    .line 95
    invoke-virtual {v12}, Lcom/startapps/crossx/view/multipleImages/MultipleImages$MultipleImageModel;->getImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 96
    new-instance v9, Lcom/startapps/crossx/controller/utils/RoundTransform;

    const/16 v12, 0x32

    const/high16 v13, 0x40800000    # 4.0f

    const/4 v0, 0x0

    const/4 v14, -0x1

    invoke-direct {v9, v12, v0, v14, v13}, Lcom/startapps/crossx/controller/utils/RoundTransform;-><init>(IIIF)V

    check-cast v9, Lcom/squareup/picasso/Transformation;

    invoke-virtual {v5, v9}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 97
    iget v9, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v12, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v5, v9, v12}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 98
    invoke-virtual {v5, v15}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 100
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_3
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    int-to-double v12, v5

    const-wide v15, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v12, v15

    move-object/from16 p1, v1

    int-to-double v0, v11

    mul-double/2addr v12, v0

    double-to-int v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 p1, v1

    const/4 v14, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v14

    goto/16 :goto_0

    .line 108
    :cond_7
    check-cast v6, Ljava/lang/Iterable;

    .line 134
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 109
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 110
    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 112
    :cond_8
    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 116
    :goto_6
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 117
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    if-eqz v3, :cond_9

    .line 119
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v13

    const/4 v14, 0x2

    move-object v1, v7

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v15

    move-object v10, v4

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_7

    .line 121
    :cond_9
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v13

    const/4 v14, 0x2

    move-object v1, v7

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v15

    move-object v10, v4

    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 123
    :goto_7
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
