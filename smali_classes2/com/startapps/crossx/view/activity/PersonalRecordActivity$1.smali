.class Lcom/startapps/crossx/view/activity/PersonalRecordActivity$1;
.super Ljava/lang/Object;
.source "PersonalRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->enableOptionOpenPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$1;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 306
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$1;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->getPanelState()Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->COLLAPSED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    if-ne p1, v0, :cond_0

    .line 308
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$1;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->EXPANDED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->slideUpDown(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;)V

    .line 309
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$1;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->imageArrow:Landroid/widget/ImageView;

    const v0, 0x7f0800c6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$1;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->COLLAPSED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->slideUpDown(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;)V

    .line 314
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$1;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->imageArrow:Landroid/widget/ImageView;

    const v0, 0x7f0800c8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
