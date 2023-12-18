.class public Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field color:I

.field dateTextAppearance:I

.field maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

.field showOtherDates:Z

.field weekDayTextAppearance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 673
    new-instance v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState$1;

    invoke-direct {v0}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState$1;-><init>()V

    sput-object v0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 685
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 649
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 650
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 651
    iput v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 652
    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    const/4 v1, 0x0

    .line 653
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 654
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 655
    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    .line 690
    const-class v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 691
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 692
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object v1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 693
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$1;)V
    .locals 0

    .line 647
    invoke-direct {p0, p1}, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 658
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 649
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    .line 650
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    .line 651
    iput p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    .line 652
    iput-boolean p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    const/4 p1, 0x0

    .line 653
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 654
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 655
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 663
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 664
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->color:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->dateTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->weekDayTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    iget-boolean p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->showOtherDates:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->minDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 669
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->maxDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 670
    iget-object p2, p0, Lcom/prolificinteractive/materialcalendarview/MaterialCalendarView$SavedState;->selectedDate:Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
