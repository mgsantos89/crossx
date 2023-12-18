.class Lcom/startapps/crossx/view/fragment/ChampionshipFragment$2;
.super Ljava/lang/Object;
.source "ChampionshipFragment.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->addFooterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ChampionshipFragment;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReloadStart()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    iget-object v0, v0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onResetLoading()V

    .line 227
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    iget-object v0, v0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->championship_list:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setRefreshing(Z)V

    .line 228
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    iget v2, v0, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->currentPage:I

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;->-$$Nest$mgetChampionships(Lcom/startapps/crossx/view/fragment/ChampionshipFragment;I)V

    return-void
.end method
