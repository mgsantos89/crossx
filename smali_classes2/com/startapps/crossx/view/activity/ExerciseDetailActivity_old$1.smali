.class Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$1;
.super Ljava/lang/Object;
.source "ExerciseDetailActivity_old.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->enableOptionOpenPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$1;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$1;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->getPanelState()Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    if-ne p1, v0, :cond_0

    .line 282
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$1;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->EXPANDED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setPanelState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    .line 283
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$1;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->imageArrow:Landroid/widget/ImageView;

    const v0, 0x7f0800c6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$1;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setPanelState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    .line 288
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$1;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->imageArrow:Landroid/widget/ImageView;

    const v0, 0x7f0800c8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
