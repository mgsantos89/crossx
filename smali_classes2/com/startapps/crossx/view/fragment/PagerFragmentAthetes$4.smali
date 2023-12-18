.class Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;
.super Ljava/lang/Object;
.source "PagerFragmentAthetes.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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

    .line 193
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fputcurrentPage(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;I)V

    .line 210
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fputqueryFilter(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fgetathletesInterface(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fgetqueryFilter(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-static {v1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fgetcurrentPage(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;->getAthetesPage(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 199
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$4;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->-$$Nest$fputqueryFilter(Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
