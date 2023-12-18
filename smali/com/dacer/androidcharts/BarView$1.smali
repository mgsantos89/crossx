.class Lcom/dacer/androidcharts/BarView$1;
.super Ljava/lang/Object;
.source "BarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dacer/androidcharts/BarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dacer/androidcharts/BarView;


# direct methods
.method constructor <init>(Lcom/dacer/androidcharts/BarView;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v2}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgettargetPercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 42
    iget-object v2, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v2}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgetpercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v3}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgettargetPercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v2, v2, v3

    const/4 v3, 0x1

    const v4, 0x3ca3d70a    # 0.02f

    if-gez v2, :cond_0

    .line 43
    iget-object v1, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v1}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgetpercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v2}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgetpercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move v1, v3

    goto :goto_2

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v2}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgetpercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v5, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v5}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgettargetPercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 46
    iget-object v1, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v1}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgetpercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v2}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgetpercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v2}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgettargetPercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v3}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgetpercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    .line 50
    iget-object v2, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v2}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgetpercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-static {v3}, Lcom/dacer/androidcharts/BarView;->-$$Nest$fgettargetPercentList(Lcom/dacer/androidcharts/BarView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 54
    iget-object v0, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/dacer/androidcharts/BarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/dacer/androidcharts/BarView$1;->this$0:Lcom/dacer/androidcharts/BarView;

    invoke-virtual {v0}, Lcom/dacer/androidcharts/BarView;->invalidate()V

    return-void
.end method
