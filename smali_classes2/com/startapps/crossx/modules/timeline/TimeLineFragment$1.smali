.class Lcom/startapps/crossx/modules/timeline/TimeLineFragment$1;
.super Ljava/lang/Object;
.source "TimeLineFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iget v0, v0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->currentPage:I

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iget-object v0, v0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->hideLoadingView()V

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iget-object v0, v0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setRefreshing(Z)V

    .line 181
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iget-object v0, v0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->spin()V

    .line 182
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$1;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iget v2, v0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->currentPage:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getTimeLine(I)V

    :cond_0
    return-void
.end method
