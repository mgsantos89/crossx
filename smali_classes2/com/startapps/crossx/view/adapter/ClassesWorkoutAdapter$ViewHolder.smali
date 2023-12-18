.class public Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "ClassesWorkoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public dayMonth:Landroid/widget/TextView;

.field public dayWeek:Landroid/widget/TextView;

.field public hour:Landroid/widget/TextView;

.field public imageUser:Lcom/startapps/crossx/view/RoundedImageView;

.field public limit:Landroid/widget/TextView;

.field public mainView:Landroid/view/View;

.field public marker:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

.field public workout:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;Landroid/view/View;)V
    .locals 3

    .line 102
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    .line 103
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 105
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->limit:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDayMonth()Landroid/widget/TextView;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDayWeek()Landroid/widget/TextView;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHour()Landroid/widget/TextView;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageUser()Landroid/widget/ImageView;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->imageUser:Lcom/startapps/crossx/view/RoundedImageView;

    return-object v0
.end method

.method public getLimit()Landroid/widget/TextView;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->limit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public getMarker()Landroid/widget/ImageView;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->marker:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWorkout()Landroid/widget/TextView;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    return-object v0
.end method

.method public setDayMonth(Landroid/widget/TextView;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayMonth:Landroid/widget/TextView;

    return-void
.end method

.method public setDayWeek(Landroid/widget/TextView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->dayWeek:Landroid/widget/TextView;

    return-void
.end method

.method public setHour(Landroid/widget/TextView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->hour:Landroid/widget/TextView;

    return-void
.end method

.method public setImageUser(Lcom/startapps/crossx/view/RoundedImageView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->imageUser:Lcom/startapps/crossx/view/RoundedImageView;

    return-void
.end method

.method public setLimit(Landroid/widget/TextView;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->limit:Landroid/widget/TextView;

    return-void
.end method

.method public setName(Landroid/widget/TextView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-void
.end method

.method public setWorkout(Landroid/widget/TextView;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter$ViewHolder;->workout:Landroid/widget/TextView;

    return-void
.end method
