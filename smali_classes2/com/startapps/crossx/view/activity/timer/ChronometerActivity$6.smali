.class synthetic Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;
.super Ljava/lang/Object;
.source "ChronometerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

.field static final synthetic $SwitchMap$com$startapps$crossx$view$activity$timer$ChronometerActivity$ChronometerState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 413
    invoke-static {}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->values()[Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$view$activity$timer$ChronometerActivity$ChronometerState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-virtual {v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$view$activity$timer$ChronometerActivity$ChronometerState:[I

    sget-object v3, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-virtual {v3}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$view$activity$timer$ChronometerActivity$ChronometerState:[I

    sget-object v4, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-virtual {v4}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$view$activity$timer$ChronometerActivity$ChronometerState:[I

    sget-object v5, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-virtual {v5}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$view$activity$timer$ChronometerActivity$ChronometerState:[I

    sget-object v5, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_PAUSE:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-virtual {v5}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 257
    :catch_4
    invoke-static {}, Lcom/startapps/crossx/model/enuns/TimerEnum;->values()[Lcom/startapps/crossx/model/enuns/TimerEnum;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

    :try_start_5
    sget-object v5, Lcom/startapps/crossx/model/enuns/TimerEnum;->EMON:Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/enuns/TimerEnum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

    sget-object v4, Lcom/startapps/crossx/model/enuns/TimerEnum;->TIMER:Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v4}, Lcom/startapps/crossx/model/enuns/TimerEnum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

    sget-object v1, Lcom/startapps/crossx/model/enuns/TimerEnum;->TABATA:Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/TimerEnum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

    sget-object v1, Lcom/startapps/crossx/model/enuns/TimerEnum;->STOPWATCH:Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/TimerEnum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
