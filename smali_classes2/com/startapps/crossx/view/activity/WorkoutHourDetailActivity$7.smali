.class synthetic Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$7;
.super Ljava/lang/Object;
.source "WorkoutHourDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$startapps$crossx$view$activity$WorkoutHourDetailActivity$ButtonFunction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 518
    invoke-static {}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->values()[Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$7;->$SwitchMap$com$startapps$crossx$view$activity$WorkoutHourDetailActivity$ButtonFunction:[I

    :try_start_0
    sget-object v1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->CHECKIN:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$7;->$SwitchMap$com$startapps$crossx$view$activity$WorkoutHourDetailActivity$ButtonFunction:[I

    sget-object v1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->ALTER_CHECKIN:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$7;->$SwitchMap$com$startapps$crossx$view$activity$WorkoutHourDetailActivity$ButtonFunction:[I

    sget-object v1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->REMOVE_CHECKIN:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
