.class Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$4;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "ClassesMonthFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->atribuirTreino(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$4;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    iput-object p3, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$4;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 281
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 283
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$4;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 288
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 290
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$4;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 295
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 297
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$4;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 298
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$4;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->-$$Nest$fgetcurrentDate(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getWorkoutDay(Ljava/lang/String;)V

    return-void
.end method
