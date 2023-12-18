.class Lcom/dacer/androidcharts/PieView$1;
.super Ljava/lang/Object;
.source "PieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dacer/androidcharts/PieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dacer/androidcharts/PieView;


# direct methods
.method constructor <init>(Lcom/dacer/androidcharts/PieView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/dacer/androidcharts/PieView$1;->this$0:Lcom/dacer/androidcharts/PieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView$1;->this$0:Lcom/dacer/androidcharts/PieView;

    invoke-static {v0}, Lcom/dacer/androidcharts/PieView;->-$$Nest$fgetpieHelperList(Lcom/dacer/androidcharts/PieView;)Ljava/util/ArrayList;

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

    check-cast v2, Lcom/dacer/androidcharts/PieHelper;

    .line 56
    invoke-virtual {v2}, Lcom/dacer/androidcharts/PieHelper;->update()V

    .line 57
    invoke-virtual {v2}, Lcom/dacer/androidcharts/PieHelper;->isAtRest()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView$1;->this$0:Lcom/dacer/androidcharts/PieView;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/dacer/androidcharts/PieView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/dacer/androidcharts/PieView$1;->this$0:Lcom/dacer/androidcharts/PieView;

    invoke-virtual {v0}, Lcom/dacer/androidcharts/PieView;->invalidate()V

    return-void
.end method
