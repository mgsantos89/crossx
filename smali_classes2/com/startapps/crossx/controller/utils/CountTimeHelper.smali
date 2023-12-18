.class public Lcom/startapps/crossx/controller/utils/CountTimeHelper;
.super Ljava/lang/Object;
.source "CountTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/CountTimeHelper$CountFinished;
    }
.end annotation


# instance fields
.field private countFinished:Lcom/startapps/crossx/controller/utils/CountTimeHelper$CountFinished;

.field private countTimer:Landroid/os/CountDownTimer;

.field private time:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcountFinished(Lcom/startapps/crossx/controller/utils/CountTimeHelper;)Lcom/startapps/crossx/controller/utils/CountTimeHelper$CountFinished;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->countFinished:Lcom/startapps/crossx/controller/utils/CountTimeHelper$CountFinished;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcountTimer(Lcom/startapps/crossx/controller/utils/CountTimeHelper;Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->countTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtime(Lcom/startapps/crossx/controller/utils/CountTimeHelper;J)V
    .locals 0

    iput-wide p1, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->time:J

    return-void
.end method

.method public constructor <init>(Lcom/startapps/crossx/controller/utils/CountTimeHelper$CountFinished;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->countFinished:Lcom/startapps/crossx/controller/utils/CountTimeHelper$CountFinished;

    .line 18
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->startCount()V

    return-void
.end method

.method private startCount()V
    .locals 7

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->countTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/startapps/crossx/controller/utils/CountTimeHelper$1;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/startapps/crossx/controller/utils/CountTimeHelper$1;-><init>(Lcom/startapps/crossx/controller/utils/CountTimeHelper;JJ)V

    .line 39
    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/CountTimeHelper$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->countTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCount()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->countTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public getTime()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/startapps/crossx/controller/utils/CountTimeHelper;->time:J

    return-wide v0
.end method
