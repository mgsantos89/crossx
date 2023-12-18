.class public Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;
.super Ljava/lang/Object;
.source "MonthArrayTitleFormatter.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/format/TitleFormatter;


# instance fields
.field private final monthLabels:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 21
    array-length v0, p1

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 24
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;->monthLabels:[Ljava/lang/CharSequence;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Label array is too short"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Label array cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public format(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Ljava/lang/CharSequence;
    .locals 3

    .line 29
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/format/MonthArrayTitleFormatter;->monthLabels:[Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, " "

    .line 31
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method
