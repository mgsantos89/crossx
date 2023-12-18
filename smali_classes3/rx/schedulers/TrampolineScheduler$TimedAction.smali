.class final Lrx/schedulers/TrampolineScheduler$TimedAction;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimedAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lrx/schedulers/TrampolineScheduler$TimedAction;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;

.field final count:I

.field final execTime:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lrx/functions/Action0;Ljava/lang/Long;I)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->action:Lrx/functions/Action0;

    .line 116
    iput-object p2, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    .line 117
    iput p3, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lrx/functions/Action0;Ljava/lang/Long;ILrx/schedulers/TrampolineScheduler$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lrx/schedulers/TrampolineScheduler$TimedAction;-><init>(Lrx/functions/Action0;Ljava/lang/Long;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 109
    check-cast p1, Lrx/schedulers/TrampolineScheduler$TimedAction;

    invoke-virtual {p0, p1}, Lrx/schedulers/TrampolineScheduler$TimedAction;->compareTo(Lrx/schedulers/TrampolineScheduler$TimedAction;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lrx/schedulers/TrampolineScheduler$TimedAction;)I
    .locals 2

    .line 122
    iget-object v0, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    iget-object v1, p1, Lrx/schedulers/TrampolineScheduler$TimedAction;->execTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget v0, p0, Lrx/schedulers/TrampolineScheduler$TimedAction;->count:I

    iget p1, p1, Lrx/schedulers/TrampolineScheduler$TimedAction;->count:I

    invoke-static {v0, p1}, Lrx/schedulers/TrampolineScheduler;->access$300(II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method
