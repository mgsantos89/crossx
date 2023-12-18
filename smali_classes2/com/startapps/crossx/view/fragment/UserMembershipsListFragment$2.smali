.class Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$2;
.super Ljava/lang/Object;
.source "UserMembershipsListFragment.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->addFooterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReloadStart()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    iget-object v0, v0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onResetLoading()V

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    iget-object v0, v0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->userMembershipList:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setRefreshing(Z)V

    .line 181
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;

    iget v2, v0, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->currentPage:I

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;->-$$Nest$mfetchUserMembershipsPerType(Lcom/startapps/crossx/view/fragment/UserMembershipsListFragment;I)V

    return-void
.end method
