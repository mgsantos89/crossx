.class Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$6;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "ExerciseDetailActivity_old.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->deletePR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Lcom/startapps/crossx/view/activity/AbstractActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$6;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iput-object p3, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 573
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 578
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 580
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 585
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 587
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 588
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$6;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgetexercisesModel(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Lcom/startapps/crossx/model/ExercisesModel;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$mgetPersonalRecordsDetails(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Lcom/startapps/crossx/model/ExercisesModel;)V

    return-void
.end method
