.class public Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;
.super Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;
.source "ChronometerActivity.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;
.implements Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;
    }
.end annotation


# instance fields
.field protected buttonClose:Landroid/widget/ImageButton;

.field protected buttonReset:Landroid/widget/ImageButton;

.field protected chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

.field private chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

.field private configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

.field private delay:I

.field protected delayView:Landroid/view/View;

.field protected imageStart:Landroid/widget/ImageView;

.field protected inBreak:Z

.field mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mService:Lcom/startapps/crossx/controller/service/ChronometerService;

.field protected mask:Landroid/view/View;

.field private mpBeep:Landroid/media/MediaPlayer;

.field private mpGo:Landroid/media/MediaPlayer;

.field protected root:Landroid/view/View;

.field private round:I

.field protected textDelayCount:Landroid/widget/TextView;

.field protected textRound:Landroid/widget/TextView;

.field protected textRoundCount:Landroid/widget/TextView;

.field private time:J

.field private timeBreak:J


# direct methods
.method static bridge synthetic -$$Nest$fgetchronometerState(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)I
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delay:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Lcom/startapps/crossx/controller/service/ChronometerService;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mService:Lcom/startapps/crossx/controller/service/ChronometerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmpBeep(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpBeep:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmpGo(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpGo:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputchronometerState(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delay:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;Lcom/startapps/crossx/controller/service/ChronometerService;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mService:Lcom/startapps/crossx/controller/service/ChronometerService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputround(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtime(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->time:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetInitialTime(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)J
    .locals 2

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getInitialTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mplayPause(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->playPause()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupUI(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->setupUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartCountDelay(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->startCountDelay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUI(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->updateUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    const/4 v1, 0x1

    .line 79
    iput v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    .line 87
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mBound:Z

    .line 599
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$5;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$5;-><init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private doFinishChronometer()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpGo:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 378
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->stop()V

    .line 379
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 380
    iget v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getRound()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpGo:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 382
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->imageStart:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private doFinishTabata()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->stop()V

    .line 402
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 403
    iget v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getRound()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpGo:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 405
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->imageStart:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private doFinishTimer()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpGo:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 390
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->stop()V

    .line 392
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_FINISH:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 394
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->imageStart:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private getBreakMiliSeconds()J
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getSecondsBreak()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method private getExercisesMiliSeconds()J
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getSecondSexercise()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method private getInitialTime()J
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getType()Lcom/startapps/crossx/model/enuns/TimerEnum;

    move-result-object v0

    .line 282
    sget-object v3, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TimerEnum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iput-wide v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->time:J

    goto :goto_0

    .line 296
    :cond_1
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getExercisesMiliSeconds()J

    move-result-wide v0

    return-wide v0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->isCrescente()Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide v1

    .line 292
    :cond_3
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getTimeInMiliSeconds()J

    move-result-wide v0

    return-wide v0

    .line 287
    :cond_4
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getTimeInMiliSeconds()J

    move-result-wide v0

    return-wide v0

    :cond_5
    :goto_0
    return-wide v1
.end method

.method private getTimeInMiliSeconds()J
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getMinutes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getSeconds()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method private loadSounds()V
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110014

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpBeep:Landroid/media/MediaPlayer;

    .line 309
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110016

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpGo:Landroid/media/MediaPlayer;

    .line 311
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpBeep:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 312
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mpGo:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private playPause()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 319
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->start()V

    goto :goto_0

    .line 323
    :cond_0
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_PAUSE:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 324
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->stop()V

    :goto_0
    return-void
.end method

.method private processEmon(J)V
    .locals 2

    .line 554
    iget v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getRound()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->doFinishChronometer()V

    .line 559
    iget p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getRound()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 560
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->restart()V

    :cond_1
    return-void
.end method

.method private processTabata(J)V
    .locals 5

    .line 568
    iget v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getRound()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 570
    :goto_0
    iget v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    iget-object v4, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v4}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getRound()I

    move-result v4

    if-gt v1, v4, :cond_1

    if-nez v0, :cond_1

    const/16 v0, 0x3e8

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_4

    .line 575
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->doFinishTabata()V

    .line 576
    iget p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getRound()I

    move-result p2

    if-lt p1, p2, :cond_3

    iget-boolean p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    if-nez p1, :cond_2

    goto :goto_2

    .line 581
    :cond_2
    iput-boolean v3, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    goto :goto_3

    .line 578
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    .line 579
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->restart()V

    :cond_4
    :goto_3
    return-void
.end method

.method private processTimer(J)V
    .locals 2

    .line 546
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getTimeInMiliSeconds()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/Chronometer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 547
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->doFinishTimer()V

    :cond_1
    return-void
.end method

.method private restart()V
    .locals 4

    .line 532
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$4;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$4;-><init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private restoreState()V
    .locals 2

    .line 413
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$view$activity$timer$ChronometerActivity$ChronometerState:[I

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->playPause()V

    goto :goto_0

    .line 416
    :cond_2
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->startCountDelay()V

    :goto_0
    return-void
.end method

.method private setupUI()V
    .locals 5

    .line 441
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    if-eqz v0, :cond_5

    .line 443
    invoke-virtual {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getType()Lcom/startapps/crossx/model/enuns/TimerEnum;

    move-result-object v0

    .line 444
    sget-object v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TimerEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const/16 v3, 0x8

    const v4, 0x7f0a0119

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 447
    :cond_0
    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    iget-wide v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->time:J

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/view/widget/Chronometer;->setBase(J)V

    goto/16 :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    iget-wide v2, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->time:J

    invoke-virtual {v0, v2, v3}, Lcom/startapps/crossx/view/widget/Chronometer;->setBase(J)V

    .line 471
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/Chronometer;->setmDecrescent(Z)V

    .line 472
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRound:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRound:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 480
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 458
    :cond_3
    invoke-virtual {p0, v4}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ConfigChronometerModel;->isCrescente()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/Chronometer;->setmDecrescent(Z)V

    .line 461
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    iget-wide v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->time:J

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/view/widget/Chronometer;->setBase(J)V

    goto :goto_0

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    iget v2, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/Chronometer;->setmDecrescent(Z)V

    .line 454
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    iget-wide v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->time:J

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/view/widget/Chronometer;->setBase(J)V

    :cond_5
    :goto_0
    return-void
.end method

.method private startCountDelay()V
    .locals 4

    .line 332
    sget-object v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->COUNTDOW_START:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 334
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delayView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textDelayCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delay:I

    new-instance v2, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$3;-><init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    const/16 v3, 0x3e8

    invoke-static {v0, v3, v1, v2}, Lcom/startapps/crossx/controller/utils/AnimationUtils;->zoomInAnimation(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    if-eqz v0, :cond_3

    .line 492
    invoke-virtual {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getType()Lcom/startapps/crossx/model/enuns/TimerEnum;

    move-result-object v0

    .line 493
    sget-object v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TimerEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 513
    :cond_0
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 515
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRound:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 516
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getBreakMiliSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/view/widget/Chronometer;->setBase(J)V

    goto :goto_0

    .line 518
    :cond_1
    iget v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    .line 519
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRound:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    iget v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getExercisesMiliSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/view/widget/Chronometer;->setBase(J)V

    goto :goto_0

    .line 502
    :cond_2
    iget v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    .line 503
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getTimeInMiliSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/view/widget/Chronometer;->setBase(J)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 4

    .line 205
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textDelayCount:Landroid/widget/TextView;

    const v2, 0x7f1201af

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    const v2, 0x7f1201ae

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRound:Landroid/widget/TextView;

    const v3, 0x7f1201b0

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->textRoundCount:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0024

    return v0
.end method

.method protected onButtonCloseClick()V
    .locals 0

    .line 246
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->finish()V

    return-void
.end method

.method public onChronometerTick(Lcom/startapps/crossx/view/widget/Chronometer;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/Chronometer;->getBase()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->time:J

    .line 254
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->getType()Lcom/startapps/crossx/model/enuns/TimerEnum;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$6;->$SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/TimerEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->processTabata(J)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->processTimer(J)V

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/Chronometer;->getBase()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->processEmon(J)V

    .line 272
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mService:Lcom/startapps/crossx/controller/service/ChronometerService;

    if-eqz p1, :cond_4

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mService "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mService:Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/service/ChronometerService;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 171
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 96
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Timers - Contador"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0, p0}, Lcom/startapps/crossx/view/widget/Chronometer;->setOnChronometerTickListener(Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->loadSounds()V

    .line 105
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "timer_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/ConfigChronometerModel;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->configChronometer:Lcom/startapps/crossx/model/ConfigChronometerModel;

    :cond_0
    if-nez p1, :cond_1

    .line 111
    sget-object p1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->CHRONOMETER_STOP:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 112
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getInitialTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->time:J

    .line 113
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/Preference;->getTimerDelayInit()I

    move-result p1

    iput p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delay:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "time"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->time:J

    .line 119
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/startapps/crossx/view/widget/Chronometer;->setBase(J)V

    .line 120
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    const-string v1, "chronometer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "round"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    const-string v0, "inBreak"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    const-string v0, "delay"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delay:I

    .line 124
    invoke-static {}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->values()[Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    move-result-object v0

    const-string v1, "chronometerState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    .line 127
    :goto_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->setupUI()V

    .line 128
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->restoreState()V

    .line 130
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->root:Landroid/view/View;

    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$1;-><init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->buttonReset:Landroid/widget/ImageButton;

    new-instance v0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$2;-><init>(Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 165
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 240
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->stop()V

    .line 241
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onPause()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->getBase()J

    move-result-wide v0

    const-string/jumbo v2, "time"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "round"

    .line 194
    iget v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chronometer"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->ordinal()I

    move-result v0

    const-string v1, "chronometerState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "inBreak"

    .line 197
    iget-boolean v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "delay"

    .line 198
    iget v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->getBase()J

    move-result-wide v0

    const-string/jumbo v2, "time"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "round"

    .line 183
    iget v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->round:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chronometer"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->chronometerState:Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity$ChronometerState;->ordinal()I

    move-result v0

    const-string v1, "chronometerState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "inBreak"

    .line 186
    iget-boolean v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->inBreak:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "delay"

    .line 187
    iget v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->delay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 215
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onStart()V

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onStop()V

    .line 231
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mBound:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mBound:Z

    :cond_0
    return-void
.end method

.method public onTickTimer()V
    .locals 2

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTickTimer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;->mService:Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/service/ChronometerService;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTickTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
