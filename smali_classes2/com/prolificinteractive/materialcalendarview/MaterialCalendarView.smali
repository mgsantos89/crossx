.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.super Landroid/widget/FrameLayout;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;,
        Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;


# instance fields
.field private accentColor:I

.field private final adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

.field private arrowColor:I

.field private final buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

.field private final buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

.field private currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field dayViewDecorators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

.field private maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field private monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

.field private final monthViewCallbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private final pager:Landroidx/viewpager/widget/ViewPager;

.field private root:Landroid/widget/LinearLayout;

.field private final title:Landroid/widget/TextView;

.field private titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/format/DateFormatTitleFormatter;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    sget-object v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 73
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;

    invoke-direct {v0, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthViewCallbacks:Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;

    .line 84
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;

    invoke-direct {v1, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$2;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v2, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;

    invoke-direct {v2, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$3;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    iput-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const/4 v3, 0x0

    .line 111
    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 112
    iput-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const/4 v4, 0x0

    .line 117
    iput v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    const/high16 v5, -0x1000000

    .line 118
    iput v5, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    .line 129
    invoke-virtual {p0, v4}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipChildren(Z)V

    .line 130
    invoke-virtual {p0, v4}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setClipToPadding(Z)V

    .line 132
    new-instance v6, Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    .line 133
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    .line 134
    new-instance v8, Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    .line 135
    new-instance v9, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 137
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setupChildren()V

    .line 139
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {v6, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {v8, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-direct {v1, p0, v3}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    .line 144
    invoke-virtual {v9, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 145
    invoke-virtual {v9, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 146
    new-instance v2, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$4;

    invoke-direct {v2, p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$4;-><init>(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V

    invoke-virtual {v9, v4, v2}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 154
    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setCallbacks(Lcom/prolificinteractive/materialcalendarview/MonthView$Callbacks;)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView:[I

    .line 157
    invoke-virtual {v0, p2, v1, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 160
    :try_start_0
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_tileSize:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    .line 165
    :cond_0
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_arrowColor:I

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setArrowColor(I)V

    .line 169
    sget v0, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_selectionColor:I

    .line 172
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getThemeAccentColor(Landroid/content/Context;)I

    move-result p1

    .line 170
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 176
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_weekDayLabels:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    .line 181
    :cond_1
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_monthLabels:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 183
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    .line 186
    :cond_2
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_headerTextAppearance:I

    sget v0, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_Header:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setHeaderTextAppearance(I)V

    .line 190
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_weekDayTextAppearance:I

    sget v0, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_WeekDay:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 194
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_dateTextAppearance:I

    sget v0, Lcom/prolificinteractive/materialcalendarview/R$style;->TextAppearance_MaterialCalendarWidget_Date:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 198
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_showOtherDates:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setShowOtherDates(Z)V

    .line 202
    sget p1, Lcom/prolificinteractive/materialcalendarview/R$styleable;->MaterialCalendarView_mcv_firstDayOfWeek:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setFirstDayOfWeek(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "Attr Error"

    const-string v1, "error"

    .line 208
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 214
    new-instance p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>()V

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 215
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void

    .line 211
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic access$000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/DirectionButton;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p0
.end method

.method static synthetic access$402(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object p1
.end method

.method static synthetic access$500(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method static synthetic access$700(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;)Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    return-object p0
.end method

.method private canGoBack()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canGoForward()Z
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static getThemeAccentColor(Landroid/content/Context;)I
    .locals 3

    .line 705
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 706
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    const v2, 0x1010435

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 707
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method private setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 641
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 642
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 643
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result p1

    .line 644
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private setupChildren()V
    .locals 8

    .line 221
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/prolificinteractive/materialcalendarview/R$integer;->mcv_default_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 222
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 219
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 225
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 227
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 228
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 229
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v4, v0, 0x7

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v1, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 233
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 234
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 239
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 240
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 243
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget v5, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_previous:I

    invoke-virtual {v4, v5}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageResource(I)V

    .line 244
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v4, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {v4, v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 252
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    sget v4, Lcom/prolificinteractive/materialcalendarview/R$drawable;->mcv_action_next:I

    invoke-virtual {v0, v4}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setImageResource(I)V

    .line 253
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    sget v1, Lcom/prolificinteractive/materialcalendarview/R$id;->mcv_pager:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setId(I)V

    .line 256
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 257
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateUi()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->currentMonth:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    if-eqz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    invoke-interface {v2, v0}, Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;->format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addDecorator(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1015
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidateDecorators()V

    return-void
.end method

.method public varargs addDecorators([Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 4

    .line 997
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    if-nez v0, :cond_0

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    .line 1001
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1002
    iget-object v3, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1006
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidateDecorators()V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 636
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 630
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getArrowColor()I
    .locals 1

    .line 355
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    return v0
.end method

.method public getCurrentDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getItem(I)Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->access$1000(Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;)I

    move-result v0

    return v0
.end method

.method public getMaximumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getMinimumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionColor()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    return v0
.end method

.method public getShowOtherDates()Z
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getShowOtherDates()Z

    move-result v0

    return v0
.end method

.method public invalidateDecorators()V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->invalidateDecorators()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 617
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    .line 618
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 619
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectionColor(I)V

    .line 620
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setDateTextAppearance(I)V

    .line 621
    iget v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayTextAppearance(I)V

    .line 622
    iget-boolean v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setShowOtherDates(Z)V

    .line 623
    iget-object v0, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v1, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 624
    iget-object p1, p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 604
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 605
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectionColor()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 606
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getDateTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 607
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getWeekDayTextAppearance()I

    move-result v1

    iput v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 608
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getShowOtherDates()Z

    move-result v1

    iput-boolean v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    .line 609
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getMinimumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 610
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getMaximumDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 611
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getSelectedDate()Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    move-result-object v1

    iput-object v1, v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-object v0
.end method

.method public removeDecorator(Lcom/prolificinteractive/materialcalendarview/DayViewDecorator;)V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1026
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1027
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidateDecorators()V

    return-void
.end method

.method public removeDecorators()V
    .locals 2

    const/4 v0, 0x0

    .line 1019
    iput-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->dayViewDecorators:Ljava/util/List;

    .line 1020
    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDecorators(Ljava/util/List;)V

    .line 1021
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidateDecorators()V

    return-void
.end method

.method public setArrowColor(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 365
    :cond_0
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->arrowColor:I

    .line 366
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonPast:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColor(I)V

    .line 367
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->buttonFuture:Lcom/prolificinteractive/materialcalendarview/DirectionButton;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/DirectionButton;->setColor(I)V

    .line 368
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidate()V

    return-void
.end method

.method public setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->getIndexForDay(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)I

    move-result p1

    .line 447
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 448
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method public setCurrentDate(Ljava/util/Calendar;)V
    .locals 1

    .line 425
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setCurrentDate(Ljava/util/Date;)V
    .locals 1

    .line 432
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setDateTextAppearance(I)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setHeaderTextAppearance(I)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    .line 509
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 510
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setMaximumDate(Ljava/util/Calendar;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 493
    :cond_0
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 494
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setMaximumDate(Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 501
    :cond_0
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Date;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMaximumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 502
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    .line 478
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 479
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setMinimumDate(Ljava/util/Calendar;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 462
    :cond_0
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 463
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setMinimumDate(Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 470
    :cond_0
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Date;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setMinimumDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 471
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {p0, p1, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setRangeDates(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setOnDateChangedListener(Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->listener:Lcom/prolificinteractive/materialcalendarview/OnDateChangedListener;

    return-void
.end method

.method public setOnMonthChangedListener(Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->monthListener:Lcom/prolificinteractive/materialcalendarview/OnMonthChangedListener;

    return-void
.end method

.method public setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setCurrentDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setSelectedDate(Ljava/util/Calendar;)V
    .locals 1

    .line 403
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setSelectedDate(Ljava/util/Date;)V
    .locals 1

    .line 410
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setSelectedDate(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    return-void
.end method

.method public setSelectionColor(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 346
    :cond_0
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->accentColor:I

    .line 347
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setSelectionColor(I)V

    .line 348
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->invalidate()V

    return-void
.end method

.method public setShowOtherDates(Z)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setShowOtherDates(Z)V

    return-void
.end method

.method public setTileSize(I)V
    .locals 2

    .line 295
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v1, p1, 0x7

    mul-int/lit8 p1, p1, 0x8

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    .line 299
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 300
    iget-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTileSizeDp(I)V
    .locals 2

    int-to-float p1, p1

    .line 310
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 309
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTileSize(I)V

    return-void
.end method

.method public setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V
    .locals 0

    if-nez p1, :cond_0

    .line 572
    sget-object p1, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->DEFAULT_TITLE_FORMATTER:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    :cond_0
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->titleFormatter:Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;

    .line 573
    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->updateUi()V

    return-void
.end method

.method public setTitleMonths(I)V
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleMonths([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleMonths([Ljava/lang/CharSequence;)V
    .locals 1

    .line 586
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setTitleFormatter(Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;)V

    return-void
.end method

.method public setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    if-nez p1, :cond_0

    sget-object p1, Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;->DEFAULT:Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    return-void
.end method

.method public setWeekDayLabels(I)V
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayLabels([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWeekDayLabels([Ljava/lang/CharSequence;)V
    .locals 1

    .line 544
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;

    invoke-direct {v0, p1}, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->setWeekDayFormatter(Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;)V

    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;->adapter:Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$MonthPagerAdapter;->setWeekDayTextAppearance(I)V

    return-void
.end method
