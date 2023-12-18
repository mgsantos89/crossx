.class Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$1;
.super Ljava/lang/Object;
.source "PagerFragmentAthetes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 121
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$1;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 124
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes$1;->this$0:Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;

    iget-object p2, p1, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->adapter:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/fragment/PagerFragmentAthetes;->goToUserActivity(Lcom/startapps/crossx/model/UserModel;)V

    return-void
.end method
