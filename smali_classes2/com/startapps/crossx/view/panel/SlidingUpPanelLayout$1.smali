.class Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;
.super Ljava/lang/Object;
.source "SlidingUpPanelLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 550
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->isTouchEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmSlideState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-eq p1, v0, :cond_2

    .line 552
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-static {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->-$$Nest$fgetmAnchorPoint(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 553
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->ANCHORED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setPanelState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setPanelState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    goto :goto_0

    .line 558
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$1;->this$0:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setPanelState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    :cond_3
    :goto_0
    return-void
.end method
