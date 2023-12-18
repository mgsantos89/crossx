.class Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$2;
.super Ljava/lang/Object;
.source "AbstractMenuDrawerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setListViewClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;

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

    .line 181
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;

    iget-object p2, p1, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerAdapter:Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;

    iget-object p4, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$2;->this$0:Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;

    invoke-virtual {p4}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToListView()Landroid/widget/ListView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/MenuDrawerModel;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/MenuDrawerModel;->getMenuItem()Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    return-void
.end method
