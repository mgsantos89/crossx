.class public Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "UserWorkoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public buttonADDResult:Landroid/widget/Button;

.field public dayMonth:Landroid/widget/TextView;

.field public dayWeek:Landroid/widget/TextView;

.field public hour:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

.field public workout:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Landroid/view/View;)V
    .locals 3

    .line 129
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    .line 130
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 132
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->buttonADDResult:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDayMonth()Landroid/widget/TextView;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDayWeek()Landroid/widget/TextView;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHour()Landroid/widget/TextView;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWorkout()Landroid/widget/TextView;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    return-object v0
.end method

.method public setDayMonth(Landroid/widget/TextView;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    return-void
.end method

.method public setDayWeek(Landroid/widget/TextView;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    return-void
.end method

.method public setHour(Landroid/widget/TextView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    return-void
.end method

.method public setWorkout(Landroid/widget/TextView;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    return-void
.end method
