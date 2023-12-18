.class Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$5;
.super Ljava/lang/Object;
.source "PagerFragmentAthetes.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->addFooterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$5;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReloadStart()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$5;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    iget-object v0, v0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->listView:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onResetLoading()V

    .line 237
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$5;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fgetathletesInterface(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$5;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-static {v1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fgetqueryFilter(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$5;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-static {v2}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fgetcurrentPage(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;->getAthetesPage(Ljava/lang/String;I)V

    return-void
.end method
