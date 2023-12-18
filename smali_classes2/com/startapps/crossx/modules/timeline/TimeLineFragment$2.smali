.class Lcom/startapps/crossx/modules/timeline/TimeLineFragment$2;
.super Ljava/lang/Object;
.source "TimeLineFragment.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->addFooterView()Landroid/view/View;
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

    .line 272
    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$2;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReloadStart()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$2;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iget-object v0, v0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onResetLoading()V

    .line 277
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$2;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iget-object v0, v0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setRefreshing(Z)V

    .line 278
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$2;->this$0:Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    iget v2, v0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->currentPage:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getTimeLine(I)V

    return-void
.end method
