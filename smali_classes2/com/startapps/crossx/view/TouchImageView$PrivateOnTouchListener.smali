.class Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private last:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/startapps/crossx/view/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/TouchImageView;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/startapps/crossx/view/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 817
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmScaleDetector(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 818
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmGestureDetector(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 819
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 821
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetstate(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/startapps/crossx/view/TouchImageView$State;->NONE:Lcom/startapps/crossx/view/TouchImageView$State;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetstate(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/startapps/crossx/view/TouchImageView$State;->DRAG:Lcom/startapps/crossx/view/TouchImageView$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetstate(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/startapps/crossx/view/TouchImageView$State;->FLING:Lcom/startapps/crossx/view/TouchImageView$State;

    if-ne v1, v2, :cond_5

    .line 822
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    goto/16 :goto_0

    .line 831
    :cond_1
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetstate(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lcom/startapps/crossx/view/TouchImageView$State;->DRAG:Lcom/startapps/crossx/view/TouchImageView$State;

    if-ne v1, v2, :cond_5

    .line 832
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 833
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    .line 834
    iget-object v4, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v4}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetviewWidth(Lcom/startapps/crossx/view/TouchImageView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v6}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mgetImageWidth(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v6

    invoke-static {v4, v1, v5, v6}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mgetFixDragTrans(Lcom/startapps/crossx/view/TouchImageView;FFF)F

    move-result v1

    .line 835
    iget-object v4, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v4}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetviewHeight(Lcom/startapps/crossx/view/TouchImageView;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v6}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mgetImageHeight(Lcom/startapps/crossx/view/TouchImageView;)F

    move-result v6

    invoke-static {v4, v2, v5, v6}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mgetFixDragTrans(Lcom/startapps/crossx/view/TouchImageView;FFF)F

    move-result v2

    .line 836
    iget-object v4, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v4}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmatrix(Lcom/startapps/crossx/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 837
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$mfixTrans(Lcom/startapps/crossx/view/TouchImageView;)V

    .line 838
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    sget-object v1, Lcom/startapps/crossx/view/TouchImageView$State;->NONE:Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$msetState(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$State;)V

    goto :goto_0

    .line 824
    :cond_3
    iget-object v1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 825
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetfling(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 826
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetfling(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/view/TouchImageView$Fling;->cancelFling()V

    .line 827
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    sget-object v1, Lcom/startapps/crossx/view/TouchImageView$State;->DRAG:Lcom/startapps/crossx/view/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$msetState(Lcom/startapps/crossx/view/TouchImageView;Lcom/startapps/crossx/view/TouchImageView$State;)V

    .line 849
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetmatrix(Lcom/startapps/crossx/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 854
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetuserTouchListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 855
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {v0}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgetuserTouchListener(Lcom/startapps/crossx/view/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 861
    :cond_6
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgettouchImageViewListener(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 862
    iget-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$PrivateOnTouchListener;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-static {p1}, Lcom/startapps/crossx/view/TouchImageView;->-$$Nest$fgettouchImageViewListener(Lcom/startapps/crossx/view/TouchImageView;)Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/startapps/crossx/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_7
    return v3
.end method
