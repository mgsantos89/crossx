.class Lcom/dacer/androidcharts/LineView$1;
.super Ljava/lang/Object;
.source "LineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dacer/androidcharts/LineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dacer/androidcharts/LineView;


# direct methods
.method constructor <init>(Lcom/dacer/androidcharts/LineView;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/dacer/androidcharts/LineView$1;->this$0:Lcom/dacer/androidcharts/LineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView$1;->this$0:Lcom/dacer/androidcharts/LineView;

    invoke-static {v0}, Lcom/dacer/androidcharts/LineView;->-$$Nest$fgetdrawDotLists(Lcom/dacer/androidcharts/LineView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dacer/androidcharts/LineView$Dot;

    .line 105
    invoke-virtual {v3}, Lcom/dacer/androidcharts/LineView$Dot;->update()V

    .line 106
    invoke-virtual {v3}, Lcom/dacer/androidcharts/LineView$Dot;->isAtRest()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView$1;->this$0:Lcom/dacer/androidcharts/LineView;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Lcom/dacer/androidcharts/LineView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/dacer/androidcharts/LineView$1;->this$0:Lcom/dacer/androidcharts/LineView;

    invoke-virtual {v0}, Lcom/dacer/androidcharts/LineView;->invalidate()V

    return-void
.end method
