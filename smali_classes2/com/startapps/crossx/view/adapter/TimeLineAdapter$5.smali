.class Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;
.super Ljava/lang/Object;
.source "TimeLineAdapter.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

.field final synthetic val$holder:Lcom/startapps/crossx/model/holder/TimeLineHolder;

.field final synthetic val$model:Lcom/startapps/crossx/model/TimeLineModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;Lcom/startapps/crossx/model/holder/TimeLineHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->this$0:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->val$model:Lcom/startapps/crossx/model/TimeLineModel;

    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->val$holder:Lcom/startapps/crossx/model/holder/TimeLineHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateButton(Z)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->val$model:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/model/TimeLineModel;->setUserLiked(Z)V

    .line 131
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->val$model:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/TimeLineModel;->getLikeCount()I

    move-result v1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/TimeLineModel;->setLikeCount(I)V

    .line 133
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->this$0:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    invoke-static {v0}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;)Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->val$model:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-interface {v0, p1, v1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onLikePost(ZLcom/startapps/crossx/model/TimeLineModel;)V

    .line 134
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->val$holder:Lcom/startapps/crossx/model/holder/TimeLineHolder;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getTextNumberLikes()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->this$0:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    invoke-static {v0}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;)Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;->val$model:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-interface {v0, v1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onTextNumberLikes(Lcom/startapps/crossx/model/TimeLineModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
