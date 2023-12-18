.class Lcom/startapps/crossx/view/activity/TimelineGroupActivity$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "TimelineGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->getTimelineGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/TimelineGroupActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$1;->this$0:Lcom/startapps/crossx/view/activity/TimelineGroupActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 3

    const/4 p2, 0x0

    .line 154
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$1;->this$0:Lcom/startapps/crossx/view/activity/TimelineGroupActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->-$$Nest$fgetgroupTimelineModelList(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/model/GroupTimelineModel;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/startapps/crossx/model/GroupTimelineModel;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$1;->this$0:Lcom/startapps/crossx/view/activity/TimelineGroupActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->-$$Nest$fgetgroupTimelineModelList(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 160
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/TimelineGroupActivity$1;->this$0:Lcom/startapps/crossx/view/activity/TimelineGroupActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;->-$$Nest$fgettimelineGroupAdapter(Lcom/startapps/crossx/view/activity/TimelineGroupActivity;)Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method
