.class public final Lcom/prolificinteractive/materialcalendarview/CalendarDay;
.super Ljava/lang/Object;
.source "CalendarDay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/prolificinteractive/materialcalendarview/CalendarDay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final day:I

.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay$1;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay$1;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    .line 44
    iput p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    .line 45
    iput p3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 2

    .line 31
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getYear(Ljava/util/Calendar;)I

    move-result v0

    .line 32
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getMonth(Ljava/util/Calendar;)I

    move-result v1

    .line 33
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getDay(Ljava/util/Calendar;)I

    move-result p1

    .line 30
    invoke-direct {p0, v0, v1, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 52
    invoke-static {p1}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public copyTo(Ljava/util/Calendar;)V
    .locals 3

    .line 96
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 97
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 143
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-eq v2, v3, :cond_2

    return v1

    .line 144
    :cond_2
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v3, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-eq v2, v3, :cond_3

    return v1

    .line 145
    :cond_3
    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget p1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 87
    invoke-static {}, Lcom/prolificinteractive/materialcalendarview/CalendarUtils;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->copyTo(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 152
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    mul-int/lit8 v0, v0, 0x1f

    .line 153
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 154
    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 4

    if-eqz p1, :cond_3

    .line 131
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget p1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-le v0, p1, :cond_2

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 129
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 4

    if-eqz p1, :cond_3

    .line 118
    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    iget v1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    iget v1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    iget p1, p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    if-ge v0, p1, :cond_2

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 116
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "other cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isInRange(Lcom/prolificinteractive/materialcalendarview/CalendarDay;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1, p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isAfter(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 107
    invoke-virtual {p2, p0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->isBefore(Lcom/prolificinteractive/materialcalendarview/CalendarDay;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 160
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CalendarDay{%d-%d-%d}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 178
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->year:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->month:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->day:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
