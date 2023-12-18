.class public Lcom/startapps/crossx/view/calendar/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# instance fields
.field private date:Ljava/util/Date;

.field private isSelected:Z

.field private isToday:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/DateTime;->date:Ljava/util/Date;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/startapps/crossx/view/calendar/DateTime;->isSelected:Z

    return v0
.end method

.method public isToday()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/startapps/crossx/view/calendar/DateTime;->isToday:Z

    return v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/startapps/crossx/view/calendar/DateTime;->date:Ljava/util/Date;

    return-void
.end method

.method public setIsSelected(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/startapps/crossx/view/calendar/DateTime;->isSelected:Z

    return-void
.end method

.method public setIsToday(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/startapps/crossx/view/calendar/DateTime;->isToday:Z

    return-void
.end method
