.class Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "GroupUserPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->createViewGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 3

    .line 106
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    iget-object p2, p2, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->groupsModels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    .line 108
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    iget-object v0, v0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->groupsModels:Ljava/util/List;

    new-instance v1, Lcom/startapps/crossx/model/GroupModel;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/startapps/crossx/model/GroupModel;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/GroupUserPagerFragment;->adapter:Lcom/startapps/crossx/view/adapter/GroupAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/GroupAdapter;->notifyDataSetChanged()V

    return-void
.end method
