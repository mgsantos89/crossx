.class public Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "ChronometerFragment.java"


# instance fields
.field protected mChronometer:Lcom/startapps/crossx/view/widget/Chronometer;

.field private timerType:Lcom/startapps/crossx/model/enuns/TimerEnum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    return-void
.end method

.method private configureChronometer()V
    .locals 2

    .line 62
    sget-object v0, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment$1;->$SwitchMap$com$startapps$crossx$model$enuns$TimerEnum:[I

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;->timerType:Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/TimerEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;->initTabata()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;->initEmon()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;->initTimer()V

    goto :goto_0

    .line 65
    :cond_3
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;->initStopwatch()V

    :goto_0
    return-void
.end method

.method public static getInstace(Lcom/startapps/crossx/model/enuns/TimerEnum;)Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;
    .locals 1

    .line 25
    new-instance v0, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;-><init>()V

    .line 26
    iput-object p0, v0, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;->timerType:Lcom/startapps/crossx/model/enuns/TimerEnum;

    return-object v0
.end method

.method private initEmon()V
    .locals 0

    return-void
.end method

.method private initStopwatch()V
    .locals 0

    return-void
.end method

.method private initTabata()V
    .locals 0

    return-void
.end method

.method private initTimer()V
    .locals 0

    return-void
.end method


# virtual methods
.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0076

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;->mChronometer:Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/Chronometer;->start()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/timers/ChronometerFragment;->configureChronometer()V

    return-void
.end method
