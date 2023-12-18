.class public Lcom/prolificinteractive/materialcalendarview/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2

    .line 52
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 53
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 54
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result p0

    .line 55
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 56
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/Calendar;->set(III)V

    .line 57
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    return-void
.end method

.method public static getDay(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x5

    .line 69
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getDayOfWeek(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x7

    .line 73
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getInstance()Ljava/util/Calendar;
    .locals 1

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 33
    invoke-static {v0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 24
    :cond_0
    invoke-static {v0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->copyDateTo(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static getMonth(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static getYear(Ljava/util/Calendar;)I
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static setToFirstDay(Ljava/util/Calendar;)V
    .locals 3

    .line 41
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 42
    invoke-static {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 43
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 45
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    return-void
.end method
