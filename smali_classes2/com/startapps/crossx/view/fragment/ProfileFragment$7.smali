.class Lcom/startapps/crossx/view/fragment/ProfileFragment$7;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ProfileFragment;->requestStatistics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$7;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 3

    .line 510
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 512
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$7;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    const-string/jumbo v0, "workout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/startapps/crossx/view/fragment/ProfileFragment;->totalTrain:I

    .line 513
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$7;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    const-string/jumbo v1, "wod"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/startapps/crossx/view/fragment/ProfileFragment;->totalWods:I

    .line 514
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$7;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    const-string v1, "pr"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/startapps/crossx/view/fragment/ProfileFragment;->totalPRS:I

    .line 516
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$7;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    iget-object p2, p2, Lcom/startapps/crossx/view/fragment/ProfileFragment;->checkinCount:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$7;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    iget-object p2, p2, Lcom/startapps/crossx/view/fragment/ProfileFragment;->personalRecodsCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
