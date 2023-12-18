.class Lcom/startapps/crossx/view/fragment/ProfileFragment$6;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ProfileFragment;->requestAlterPassword()V
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

    .line 496
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$6;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 499
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method
