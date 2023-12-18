.class public final Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "HomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/HomeActivity;->getUserRole()Lkotlin/Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "com/startapps/crossx/view/activity/HomeActivity$userRole$1",
        "Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;",
        "onSucess",
        "",
        "content",
        "Lorg/json/JSONObject;",
        "headers",
        "",
        "Lcz/msebera/android/httpclient/Header;",
        "(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    const/4 p1, 0x0

    .line 345
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "content"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "headers"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-super/range {p0 .. p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    const-string v2, "role"

    .line 348
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/startapps/crossx/controller/utils/Preference;->saveRole(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v4

    .line 351
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "box_id"

    .line 352
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "box_name"

    .line 353
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v6, "user_status"

    .line 354
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "box_affiliate"

    .line 355
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v10, "enable_timesheet"

    .line 356
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "has_accepted_terms"

    .line 357
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string/jumbo v13, "user_gympass_unique_token"

    .line 358
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "open_address_form"

    .line 359
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 360
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v14

    invoke-virtual {v14, v1}, Lcom/startapps/crossx/controller/utils/Preference;->putOpenAddressForm(Z)V

    .line 361
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->validBillingAddressRegister()V

    const-string v1, "boxId"

    if-nez v12, :cond_1

    .line 364
    iget-object v14, v0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    .line 365
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v12

    invoke-virtual {v12}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v12

    const-string v15, "getInstance().currentUser.id"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const-string v12, "null"

    .line 366
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_0
    move-object/from16 v16, v12

    .line 367
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 364
    invoke-static/range {v14 .. v19}, Lcom/startapps/crossx/view/activity/HomeActivity;->access$runTerm(Lcom/startapps/crossx/view/activity/HomeActivity;ILjava/lang/Integer;ID)V

    :cond_1
    const/4 v2, 0x1

    if-eqz v11, :cond_4

    .line 374
    move-object v3, v8

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    :goto_2
    if-nez v3, :cond_4

    .line 375
    iget-object v3, v0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->access$getBoxData(Lcom/startapps/crossx/view/activity/HomeActivity;I)V

    .line 379
    :cond_4
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/startapps/crossx/controller/utils/Preference;->storeBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 380
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/startapps/crossx/controller/utils/Preference;->putBoxAffiliate(Z)V

    .line 381
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/startapps/crossx/controller/utils/Preference;->putGympassUniqueToken(Ljava/lang/String;)V

    .line 382
    invoke-static {v8}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 383
    invoke-virtual {v4}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 384
    new-instance v1, Lcom/startapps/crossx/model/BoxModel;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v1

    move/from16 v18, v7

    invoke-direct/range {v10 .. v18}, Lcom/startapps/crossx/model/BoxModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 385
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/startapps/crossx/controller/utils/Preference;->saveBox(Lcom/startapps/crossx/model/BoxModel;)V

    .line 386
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->loadItensMenu()V

    .line 387
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->setCurrentProfile()V

    goto :goto_3

    .line 390
    :cond_5
    invoke-virtual {v4}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v4}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 391
    :cond_6
    new-instance v1, Lcom/startapps/crossx/model/BoxModel;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v3, v7

    move-object v7, v1

    move v15, v3

    invoke-direct/range {v7 .. v15}, Lcom/startapps/crossx/model/BoxModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 392
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/startapps/crossx/controller/utils/Preference;->saveBox(Lcom/startapps/crossx/model/BoxModel;)V

    .line 393
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->loadItensMenu()V

    .line 394
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->setCurrentProfile()V

    .line 396
    :cond_7
    invoke-static {v5}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v6}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-static {v5, v6, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    .line 397
    :cond_9
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/startapps/crossx/controller/utils/Preference;->putUserStatus(Ljava/lang/String;)V

    .line 398
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->loadItensMenu()V

    .line 399
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/HomeActivity$userRole$1;->this$0:Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/HomeActivity;->setCurrentProfile()V

    :cond_a
    :goto_3
    return-void
.end method
