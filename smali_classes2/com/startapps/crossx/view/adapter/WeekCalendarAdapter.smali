.class public final Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "WeekCalendarAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\rH\u0002J \u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;",
        "Landroidx/viewpager/widget/PagerAdapter;",
        "mContext",
        "Landroid/content/Context;",
        "mWeek",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/model/WeekCalendarModel;",
        "mDate",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "mDateSelected",
        "(Landroid/content/Context;Ljava/util/ArrayList;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V",
        "mLinearLayoutSelected",
        "Landroid/widget/LinearLayout;",
        "clickTextView",
        "",
        "view",
        "destroyItem",
        "container",
        "Landroid/view/ViewGroup;",
        "position",
        "",
        "obj",
        "",
        "getCount",
        "instantiateItem",
        "isViewFromObject",
        "",
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

.field private final mDate:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearLayoutSelected:Landroid/widget/LinearLayout;

.field private final mWeek:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/WeekCalendarModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KAozrvV3dUvu_sH8-cqTy0Vewmk(Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->instantiateItem$lambda-1(Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/WeekCalendarModel;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mWeek"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDateSelected"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mWeek:Ljava/util/ArrayList;

    .line 24
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mDate:Landroidx/lifecycle/MutableLiveData;

    .line 30
    invoke-virtual {p3, p4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 25
    new-instance p4, Ljava/text/SimpleDateFormat;

    const-string/jumbo p5, "yyyy-MM-dd"

    invoke-direct {p4, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    invoke-virtual {p4, p5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "SimpleDateFormat(\"yyyy-MM-dd\").format(Date())"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    return-void
.end method

.method private final clickTextView(Landroid/widget/LinearLayout;)V
    .locals 8

    .line 121
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mLinearLayoutSelected:Landroid/widget/LinearLayout;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    check-cast v5, Landroid/widget/TextView;

    .line 124
    iget-object v6, p0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f06004b

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 128
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Landroid/widget/TextView;

    .line 129
    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f06004a

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 132
    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mDate:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_4
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mLinearLayoutSelected:Landroid/widget/LinearLayout;

    return-void
.end method

.method private static final instantiateItem$lambda-1(Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 103
    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->clickTextView(Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "container"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "obj"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mWeek:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "container"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 44
    iget-object v3, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 45
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    .line 47
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v3, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f08006a

    invoke-static {v3, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v7, 0xa

    int-to-float v7, v7

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v8, 0xf

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v4, v6, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52
    move-object v3, v4

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x7

    new-array v3, v1, [I

    .line 55
    fill-array-data v3, :array_0

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 57
    iget-object v8, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mWeek:Ljava/util/ArrayList;

    move/from16 v9, p2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/startapps/crossx/model/WeekCalendarModel;

    invoke-virtual {v8}, Lcom/startapps/crossx/model/WeekCalendarModel;->getWeekNumber()I

    move-result v8

    mul-int/2addr v8, v1

    const/4 v9, 0x6

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->add(II)V

    move v8, v6

    :goto_0
    if-ge v8, v1, :cond_1

    .line 58
    aget v9, v3, v8

    .line 59
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 61
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v13, v1

    invoke-direct {v12, v13, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x11

    .line 63
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 66
    invoke-virtual {v7, v1, v9}, Ljava/util/Calendar;->set(II)V

    .line 67
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd"

    invoke-direct {v9, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x5

    .line 68
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 69
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v14, "EEE"

    invoke-direct {v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "this as java.lang.String).toUpperCase()"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 70
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f090002

    invoke-static {v1, v5}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v6, 0x2

    .line 75
    invoke-virtual {v15, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    check-cast v14, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    iget-object v1, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f06004b

    invoke-static {v1, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v1, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v5}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v5, 0x41200000    # 10.0f

    .line 84
    invoke-virtual {v1, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x1

    .line 86
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    iget-object v5, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    invoke-direct {v6, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v6, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    move-object v6, v9

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v6, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mDate:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    iput-object v10, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mLinearLayoutSelected:Landroid/widget/LinearLayout;

    .line 97
    iget-object v6, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f06004a

    invoke-static {v6, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v6, v0, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :cond_0
    new-instance v6, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/adapter/WeekCalendarAdapter;)V

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    check-cast v15, Landroid/view/View;

    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    check-cast v1, Landroid/view/View;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    check-cast v5, Landroid/view/View;

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    check-cast v10, Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v8, v8, 0x1

    move v6, v12

    const/4 v1, 0x7

    const/4 v5, -0x2

    goto/16 :goto_0

    :cond_1
    return-object v4

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
