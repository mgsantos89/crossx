.class public Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "GroupUserPagerFragment.java"


# static fields
.field public static final RESULT_GROUP_CREATED:I = 0xde


# instance fields
.field adapter:Lcom/startapps/crossx/view/adapter/GroupAdapter;

.field floatingActionButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

.field groupsModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/GroupModel;",
            ">;"
        }
    .end annotation
.end field

.field listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createViewGroup()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    new-instance v1, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;

    new-instance v2, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$1;

    .line 103
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v2, p0, v3}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v1, v2}, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->getUserGroup(Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;)V

    return-void
.end method

.method protected deleteGroup(Lcom/startapps/crossx/model/GroupModel;)V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GroupModel;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v3, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$2;

    .line 119
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v3, p0, v4}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$2;-><init>(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;->deleteGroup(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->groupsModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/GroupAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/GroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d007f

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onCreateGroup()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Intents;->goToCreateGroup(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 71
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Atletas - Grupos"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p2, p3}, Lcom/startapps/crossx/controller/network/requests/GroupRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->groupRequester:Lcom/startapps/crossx/controller/network/requests/GroupRequester;

    .line 75
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->groupsModels:Ljava/util/List;

    .line 76
    new-instance p2, Lcom/startapps/crossx/view/adapter/GroupAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->groupsModels:Ljava/util/List;

    invoke-direct {p2, p3, v0}, Lcom/startapps/crossx/view/adapter/GroupAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/GroupAdapter;

    .line 77
    iget-object p3, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public onDeleteGroup(I)Z
    .locals 2

    .line 147
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120290

    .line 148
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f12028c

    .line 149
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f060034

    .line 150
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f0600b6

    .line 151
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColorRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120185

    .line 152
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f120181

    .line 153
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$3;-><init>(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;I)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 96
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 97
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public onGroup(I)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/GroupAdapter;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/adapter/GroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/GroupModel;

    .line 141
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GroupModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GroupModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goToTimelineGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onStart()V

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->createViewGroup()V

    return-void
.end method
