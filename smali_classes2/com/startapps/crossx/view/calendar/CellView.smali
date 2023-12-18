.class public Lcom/startapps/crossx/view/calendar/CellView;
.super Landroid/widget/LinearLayout;
.source "CellView.java"


# static fields
.field public static final MASK_TYPE_DATE_WEEK:Ljava/lang/String; = "EEE"

.field public static final MASK_TYPE_DAY:Ljava/lang/String; = "dd"


# instance fields
.field private dateTime:Lcom/startapps/crossx/view/calendar/DateTime;

.field private dayMonth:Landroid/widget/TextView;

.field private dayWeek:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/calendar/CellView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayWeek:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/calendar/CellView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayMonth:Landroid/widget/TextView;

    .line 49
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayWeek:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/calendar/CellView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1201b0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/calendar/CellView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1201ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setDate(Lcom/startapps/crossx/view/calendar/DateTime;)V
    .locals 3

    .line 55
    iput-object p1, p0, Lcom/startapps/crossx/view/calendar/CellView;->dateTime:Lcom/startapps/crossx/view/calendar/DateTime;

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayWeek:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayWeek:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayMonth:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayWeek:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/calendar/DateTime;->getDate()Ljava/util/Date;

    move-result-object v1

    const-string v2, "EEE"

    invoke-virtual {p0, v1, v2}, Lcom/startapps/crossx/view/calendar/CellView;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayMonth:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/calendar/DateTime;->getDate()Ljava/util/Date;

    move-result-object p1

    const-string v1, "dd"

    invoke-virtual {p0, p1, v1}, Lcom/startapps/crossx/view/calendar/CellView;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayWeek:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/calendar/CellView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/calendar/CellView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayWeek:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/calendar/CellView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/CellView;->dayMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/calendar/CellView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
