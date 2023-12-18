.class Lcom/startapps/crossx/view/TouchImageView$Fling;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

.field final synthetic this$0:Lcom/startapps/crossx/view/TouchImageView;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/TouchImageView;II)V
    .locals 11

    .line 1102
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1103
    sget-object v0, Lcom/startapps/crossx/view/TouchImageView$State;->FLING:Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$msetState(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$State;)V

    .line 1104
    new-instance v0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/TouchImageView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;-><init>(Lcom/startapps/crossx/view/TouchImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    .line 1105
    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmatrix(Lcom/startapps/crossx/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetm(Lcom/startapps/crossx/view/TouchImageView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1107
    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetm(Lcom/startapps/crossx/view/TouchImageView;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    .line 1108
    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetm(Lcom/startapps/crossx/view/TouchImageView;)[F

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v10, v1

    .line 1111
    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mgetImageWidth(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetviewWidth(Lcom/startapps/crossx/view/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 1112
    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetviewWidth(Lcom/startapps/crossx/view/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mgetImageWidth(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    move v6, v1

    move v7, v2

    goto :goto_0

    :cond_0
    move v6, v0

    move v7, v6

    .line 1119
    :goto_0
    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mgetImageHeight(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetviewHeight(Lcom/startapps/crossx/view/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 1120
    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetviewHeight(Lcom/startapps/crossx/view/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mgetImageHeight(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    move v8, v1

    move v9, v2

    goto :goto_1

    :cond_1
    move v8, v10

    move v9, v8

    .line 1127
    :goto_1
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    move v2, v0

    move v3, v10

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    .line 1129
    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->currX:I

    .line 1130
    iput v10, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->currY:I

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    sget-object v1, Lcom/startapps/crossx/view/TouchImageView$State;->NONE:Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$msetState(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$State;)V

    .line 1136
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 1147
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgettouchImageViewListener(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgettouchImageViewListener(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1152
    iput-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    return-void

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    .line 1158
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->scroller:Lcom/startapps/crossx/view/TouchImageView$CompatScroller;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    .line 1159
    iget v2, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->currX:I

    sub-int v2, v0, v2

    .line 1160
    iget v3, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->currY:I

    sub-int v3, v1, v3

    .line 1161
    iput v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->currX:I

    .line 1162
    iput v1, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->currY:I

    .line 1163
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmatrix(Lcom/startapps/crossx/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1164
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mfixTrans(Lcom/startapps/crossx/view/TouchImageView;)V

    .line 1165
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmatrix(Lcom/startapps/crossx/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1166
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$Fling;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0, p0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mcompatPostOnAnimation(Lcom/startapps/crossx/view/TouchImageView;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
