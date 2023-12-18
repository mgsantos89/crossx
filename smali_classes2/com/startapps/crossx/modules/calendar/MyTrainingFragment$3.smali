.class Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$3;
.super Ljava/lang/Object;
.source "MyTrainingFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$3;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$3;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetuserWorkoutAdapter(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$3;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    const/4 p1, 0x0

    return p1
.end method
