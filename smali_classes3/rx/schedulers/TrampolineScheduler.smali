.class public final Lrx/schedulers/TrampolineScheduler;
.super Lrx/Scheduler;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/TrampolineScheduler$TimedAction;,
        Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lrx/schedulers/TrampolineScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lrx/schedulers/TrampolineScheduler;

    invoke-direct {v0}, Lrx/schedulers/TrampolineScheduler;-><init>()V

    sput-object v0, Lrx/schedulers/TrampolineScheduler;->INSTANCE:Lrx/schedulers/TrampolineScheduler;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    return-void
.end method

.method static synthetic access$300(II)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lrx/schedulers/TrampolineScheduler;->compare(II)I

    move-result p0

    return p0
.end method

.method private static compare(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static instance()Lrx/schedulers/TrampolineScheduler;
    .locals 1

    .line 37
    sget-object v0, Lrx/schedulers/TrampolineScheduler;->INSTANCE:Lrx/schedulers/TrampolineScheduler;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 2

    .line 42
    new-instance v0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;-><init>(Lrx/schedulers/TrampolineScheduler$1;)V

    return-object v0
.end method
