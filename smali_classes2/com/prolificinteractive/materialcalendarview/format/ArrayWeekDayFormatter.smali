.class public Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;
.super Ljava/lang/Object;
.source "ArrayWeekDayFormatter.java"

# interfaces
.implements Lcom/prolificinteractive/materialcalendarview/format/WeekDayFormatter;


# instance fields
.field private final weekDayLabels:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 17
    array-length v0, p1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;->weekDayLabels:[Ljava/lang/CharSequence;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must contain exactly 7 elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public format(I)Ljava/lang/CharSequence;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/format/ArrayWeekDayFormatter;->weekDayLabels:[Ljava/lang/CharSequence;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method
