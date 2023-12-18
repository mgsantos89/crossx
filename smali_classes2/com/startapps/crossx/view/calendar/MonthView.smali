.class public Lcom/startapps/crossx/view/calendar/MonthView;
.super Landroidx/viewpager/widget/ViewPager;
.source "MonthView.java"


# instance fields
.field private mToday:Ljava/util/Calendar;

.field private onDateClick:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;

.field private weekePagerAdapter:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/calendar/MonthView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/calendar/MonthView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getCalendarOnWeekLast()Ljava/util/Calendar;
    .locals 3

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private getCalendarThreeWeekAfter()Ljava/util/Calendar;
    .locals 2

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    .line 105
    invoke-virtual {v0, v1, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v1, 0x7

    .line 107
    invoke-virtual {v0, v1, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method private getFullMonth()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/view/calendar/DateTime;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/startapps/crossx/view/calendar/MonthView;->mToday:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    .line 120
    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x7

    .line 123
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v6, v4

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v3, :cond_0

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    sub-int v9, v6, v3

    .line 128
    invoke-virtual {v8, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 130
    new-instance v9, Lcom/startapps/crossx/view/calendar/DateTime;

    invoke-direct {v9}, Lcom/startapps/crossx/view/calendar/DateTime;-><init>()V

    .line 131
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/startapps/crossx/view/calendar/DateTime;->setDate(Ljava/util/Date;)V

    .line 132
    invoke-virtual {v9, v7}, Lcom/startapps/crossx/view/calendar/DateTime;->setIsSelected(Z)V

    .line 134
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_1
    if-ge v3, v1, :cond_2

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    add-int/lit8 v8, v3, 0x1

    .line 140
    invoke-virtual {v6, v2, v8}, Ljava/util/Calendar;->set(II)V

    .line 142
    new-instance v9, Lcom/startapps/crossx/view/calendar/DateTime;

    invoke-direct {v9}, Lcom/startapps/crossx/view/calendar/DateTime;-><init>()V

    .line 143
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/startapps/crossx/view/calendar/DateTime;->setDate(Ljava/util/Date;)V

    .line 145
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    const-string/jumbo v11, "yyyy-MM-dd"

    invoke-static {v10, v11}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 145
    invoke-virtual {v9, v10}, Lcom/startapps/crossx/view/calendar/DateTime;->setIsToday(Z)V

    .line 148
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-static {v10, v11}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 149
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 148
    invoke-virtual {v9, v10}, Lcom/startapps/crossx/view/calendar/DateTime;->setIsSelected(Z)V

    .line 150
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v1, -0x1

    if-ne v3, v9, :cond_1

    .line 154
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v4

    :goto_2
    if-gt v3, v5, :cond_1

    .line 156
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v6, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 158
    new-instance v9, Lcom/startapps/crossx/view/calendar/DateTime;

    invoke-direct {v9}, Lcom/startapps/crossx/view/calendar/DateTime;-><init>()V

    .line 159
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/startapps/crossx/view/calendar/DateTime;->setDate(Ljava/util/Date;)V

    .line 160
    invoke-virtual {v9, v7}, Lcom/startapps/crossx/view/calendar/DateTime;->setIsToday(Z)V

    .line 161
    invoke-virtual {v9, v7}, Lcom/startapps/crossx/view/calendar/DateTime;->setIsSelected(Z)V

    .line 162
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v8

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private getFullWeeks()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/view/calendar/DateTime;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-direct {p0}, Lcom/startapps/crossx/view/calendar/MonthView;->getCalendarOnWeekLast()Ljava/util/Calendar;

    move-result-object v1

    .line 63
    invoke-direct {p0}, Lcom/startapps/crossx/view/calendar/MonthView;->getCalendarThreeWeekAfter()Ljava/util/Calendar;

    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->diferenceDays(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    .line 68
    new-instance v5, Lcom/startapps/crossx/view/calendar/DateTime;

    invoke-direct {v5}, Lcom/startapps/crossx/view/calendar/DateTime;-><init>()V

    .line 69
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/startapps/crossx/view/calendar/DateTime;->setDate(Ljava/util/Date;)V

    .line 71
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-static {v6, v7}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 71
    invoke-virtual {v5, v6}, Lcom/startapps/crossx/view/calendar/DateTime;->setIsToday(Z)V

    .line 74
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v7}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 74
    invoke-virtual {v5, v6}, Lcom/startapps/crossx/view/calendar/DateTime;->setIsSelected(Z)V

    .line 77
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x5

    const/4 v6, 0x1

    .line 79
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/calendar/MonthView;->mToday:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 47
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/MonthView;->mToday:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/MonthView;->mToday:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 50
    new-instance v0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/calendar/MonthView;->onDateClick:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;

    invoke-direct {p0}, Lcom/startapps/crossx/view/calendar/MonthView;->getFullWeeks()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;-><init>(Landroid/content/Context;Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;Ljava/util/List;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/calendar/MonthView;->weekePagerAdapter:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

    .line 51
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/calendar/MonthView;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method public getPageCurrentDay()I
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/MonthView;->weekePagerAdapter:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->getPageCurrentDay()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onFinishInflate()V

    return-void
.end method

.method public setOnDateClick(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;)V
    .locals 1

    .line 181
    iput-object p1, p0, Lcom/startapps/crossx/view/calendar/MonthView;->onDateClick:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;

    .line 182
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/MonthView;->weekePagerAdapter:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->setOnDateClick(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;)V

    return-void
.end method
