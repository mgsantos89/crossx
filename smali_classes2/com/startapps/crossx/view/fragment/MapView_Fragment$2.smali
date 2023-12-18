.class Lcom/startapps/crossx/view/fragment/MapView_Fragment$2;
.super Ljava/lang/Object;
.source "MapView_Fragment.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/MapView_Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/MapView_Fragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$2;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$2;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment$2;->this$0:Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method
