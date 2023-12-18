.class Lcom/dacer/androidcharts/ClockPieView$1;
.super Ljava/lang/Object;
.source "ClockPieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dacer/androidcharts/ClockPieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dacer/androidcharts/ClockPieView;


# direct methods
.method constructor <init>(Lcom/dacer/androidcharts/ClockPieView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/dacer/androidcharts/ClockPieView$1;->this$0:Lcom/dacer/androidcharts/ClockPieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView$1;->this$0:Lcom/dacer/androidcharts/ClockPieView;

    invoke-static {v0}, Lcom/dacer/androidcharts/ClockPieView;->-$$Nest$fgetpieArrayList(Lcom/dacer/androidcharts/ClockPieView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dacer/androidcharts/ClockPieHelper;

    .line 51
    invoke-virtual {v2}, Lcom/dacer/androidcharts/ClockPieHelper;->update()V

    .line 52
    invoke-virtual {v2}, Lcom/dacer/androidcharts/ClockPieHelper;->isAtRest()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView$1;->this$0:Lcom/dacer/androidcharts/ClockPieView;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/dacer/androidcharts/ClockPieView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/dacer/androidcharts/ClockPieView$1;->this$0:Lcom/dacer/androidcharts/ClockPieView;

    invoke-virtual {v0}, Lcom/dacer/androidcharts/ClockPieView;->invalidate()V

    return-void
.end method
