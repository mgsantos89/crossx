.class public Lcom/startapps/crossx/controller/utils/Intents;
.super Ljava/lang/Object;
.source "Intents.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forCropImage(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;
    .locals 2

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/CropImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    sget-object p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->EXTRA_FILE:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goMemberShips(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/MembershipActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToAbout(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToAdduserGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/AddUserGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "group_id"

    .line 196
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "name_group"

    .line 197
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToBillingAddressRegister(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/BillingAddressRegister;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToBox(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;
    .locals 2

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/BoxActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "user_model"

    .line 109
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToChampionshipDetail(Landroid/content/Context;Lcom/startapps/crossx/model/ChampionshipModel;)Landroid/content/Intent;
    .locals 2

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/ChampionshipDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "champ_model"

    .line 294
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToClass(Landroid/content/Context;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 2

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/ClassActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "category_id"

    .line 306
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToClassDetail(Landroid/content/Context;Lcom/startapps/crossx/model/GymClassModel;)Landroid/content/Intent;
    .locals 2

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/GymClassDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "gym_class_model"

    .line 300
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToClasses(Landroid/content/Context;Lcom/startapps/crossx/model/WorkoutModel;)Landroid/content/Intent;
    .locals 2

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/WorkoutClassesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "workout"

    .line 239
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToConversor(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/ConversorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToCreateGroup(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/CreateGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToCreditCardList(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/Payment;IZ)Landroid/content/Intent;
    .locals 2

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/CreditCardListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "user_model"

    .line 135
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "payment"

    .line 136
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "position"

    .line 137
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "is_select_credit_card"

    .line 138
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToDataSheetWorkout(Landroid/content/Context;Lcom/startapps/crossx/model/WorkoutModel;)Landroid/content/Intent;
    .locals 2

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/DataSheetWorkoutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "workout"

    .line 253
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToEditGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/EditGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "group_id"

    .line 189
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "name_group"

    .line 190
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToEditPost(Landroid/content/Context;Lcom/startapps/crossx/model/TimeLineModel;)Landroid/content/Intent;
    .locals 2

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "post"

    .line 288
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToEmail(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text/plain"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailto:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 227
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToExercisesDetail(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/ExercisesModel;)Landroid/content/Intent;
    .locals 2

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "exercise"

    .line 245
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "group"

    .line 246
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "user_model"

    .line 247
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToFinancial(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;
    .locals 2

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/FinancialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra-user"

    .line 259
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToHome(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToLogin(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToMain(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToMap(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:0,0?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static goToMissPassword(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/MissPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToNewMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/GroupNewMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "group_id"

    .line 178
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToNews(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/NewsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToOnlineOrderDetail(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/model/Payment;I)Landroid/content/Intent;
    .locals 2

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/OnlineOrderDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "payment"

    .line 145
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "currency_symbol"

    .line 146
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "position"

    .line 147
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToPhotoViewer(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "image-url"

    .line 265
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToPost(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToProfile(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToRegister(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToRegister(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;
    .locals 2

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra-user"

    .line 83
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToRegisterCard(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/RegisterCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToRegisterCreditCard(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;I)Landroid/content/Intent;
    .locals 2

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/CreditCardRegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "user_model"

    .line 153
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "count_cards"

    .line 154
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToTerms(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/TermsConditionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static goToTimelineGroup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/TimelineGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "groupid"

    .line 171
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "name_group"

    .line 172
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToUserMembershipCheckins(Landroid/content/Context;JLcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;
    .locals 2

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/UserMembershipCheckinsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "user_membership_id"

    .line 128
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo p0, "user_model"

    .line 129
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToUserMembershipDetail(Landroid/content/Context;Lcom/startapps/crossx/model/UserMembership;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;
    .locals 2

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "user_membership"

    .line 121
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo p0, "user_model"

    .line 122
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToUserMembershipList(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;
    .locals 2

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/UserMembershipListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "user_model"

    .line 115
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToWorkoutHour(Landroid/content/Context;Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WorkoutHours;)Landroid/content/Intent;
    .locals 2

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "WorkoutHours"

    .line 203
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "WorkoutHoursCheckIn"

    .line 204
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goToWorkoutHour(Landroid/content/Context;Lcom/startapps/crossx/model/WorkoutModel;)Landroid/content/Intent;
    .locals 2

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p0, "workout-model"

    .line 210
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static goTouser(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;
    .locals 2

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/UserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "extra-user"

    .line 165
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method
