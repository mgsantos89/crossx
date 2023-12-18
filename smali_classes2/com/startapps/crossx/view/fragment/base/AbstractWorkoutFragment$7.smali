.class Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$7;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "AbstractWorkoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->doSendEdiResult(Ljava/util/Map;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$mapResult:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$7;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iput-object p3, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$7;->val$mapResult:Ljava/util/Map;

    iput-object p4, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$7;->val$description:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 1

    .line 325
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 327
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$7;->this$0:Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$7;->val$mapResult:Ljava/util/Map;

    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$7;->val$description:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->onUpdateResult(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
