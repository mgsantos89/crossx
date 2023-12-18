.class public Lcom/startapps/crossx/view/activity/UserMembershipActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "UserMembershipActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/OnPaymentListener;


# static fields
.field private static final CODE_SELECT_CREDIT_CARD:I = 0x7e3


# instance fields
.field public buttonRenew:Landroid/widget/Button;

.field public documentLabel:Landroid/widget/TextView;

.field public documentsList:Landroid/widget/ListView;

.field public documentsView:Landroid/widget/RelativeLayout;

.field public endDateLabel:Landroid/widget/TextView;

.field public endLabel:Landroid/widget/TextView;

.field private invoicePaymentClient:Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;

.field public limitCountNameLabel:Landroid/widget/TextView;

.field public limitCountView:Landroid/widget/RelativeLayout;

.field public limitLabel:Landroid/widget/TextView;

.field public limitNameLabel:Landroid/widget/TextView;

.field public lockCountLabel:Landroid/widget/TextView;

.field public lockLabel:Landroid/widget/TextView;

.field public locksList:Landroid/widget/ListView;

.field public locksSpace:Landroid/widget/RelativeLayout;

.field public locksView:Landroid/widget/RelativeLayout;

.field public mainView:Landroid/widget/RelativeLayout;

.field public membershipName:Landroid/widget/TextView;

.field public paymentLabel:Landroid/widget/TextView;

.field public paymentsList:Landroid/widget/ListView;

.field public paymentsSpace:Landroid/widget/RelativeLayout;

.field public paymentsView:Landroid/widget/RelativeLayout;

.field public programsLabel:Landroid/widget/TextView;

.field public programsNameLabel:Landroid/widget/TextView;

.field public progressBar:Landroid/widget/ProgressBar;

.field public progressRelativeLayout:Landroid/widget/RelativeLayout;

.field public recurrenceName:Landroid/widget/TextView;

.field public startDateLabel:Landroid/widget/TextView;

.field public startLabel:Landroid/widget/TextView;

.field private userMembership:Lcom/startapps/crossx/model/UserMembership;

.field private userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

.field private userMembershipPaymentAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;

.field private userModel:Lcom/startapps/crossx/model/UserModel;


# direct methods
.method static bridge synthetic -$$Nest$fputuserMembership(Lcom/startapps/crossx/view/activity/UserMembershipActivity;Lcom/startapps/crossx/model/UserMembership;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoRenewUserMembership(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->doRenewUserMembership()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfetchUserMembership(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->fetchUserMembership()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpopulateInformations(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->populateInformations()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private doRenewUserMembership()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-wide v1, v1, Lcom/startapps/crossx/model/UserMembership;->id:J

    new-instance v3, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;

    invoke-direct {v3, p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/rest/clients/UserMembershipClient;->renewUserMembership(JLcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method private fetchUserMembership()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->mainView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-wide v1, v1, Lcom/startapps/crossx/model/UserMembership;->id:J

    new-instance v3, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;

    invoke-direct {v3, p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity$1;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/rest/clients/UserMembershipClient;->getUserMembership(JLcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method private populateInformations()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->membershipName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->membership:Lcom/startapps/crossx/model/MembershipModel;

    iget-object v1, v1, Lcom/startapps/crossx/model/MembershipModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->recurrenceName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->recurrence:Lcom/startapps/crossx/model/UserMembershipRecurrence;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembershipRecurrence;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->startDateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->startDate:Ljava/lang/String;

    const-string/jumbo v2, "yyyy-MM-dd"

    const-string v3, "dd/MM/yyyy"

    invoke-static {v1, v2, v3}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->endDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->endDateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->endDate:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->endDateLabel:Landroid/widget/TextView;

    const-string v1, "N\u00e3o definido"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->programs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, " \u00b7 "

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->programsNameLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->membership:Lcom/startapps/crossx/model/MembershipModel;

    iget-boolean v0, v0, Lcom/startapps/crossx/model/MembershipModel;->checkinLimit:Z

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitNameLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->membership:Lcom/startapps/crossx/model/MembershipModel;

    iget-object v1, v1, Lcom/startapps/crossx/model/MembershipModel;->limitDetail:Lcom/startapps/crossx/model/MembershipModel$LimitDetail;

    iget-object v1, v1, Lcom/startapps/crossx/model/MembershipModel$LimitDetail;->descriptions:Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;

    iget-object v1, v1, Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->checkinsCount:Lcom/startapps/crossx/model/UserMembership$CheckinsCount;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership$CheckinsCount;->perLimit:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->membership:Lcom/startapps/crossx/model/MembershipModel;

    iget-object v0, v0, Lcom/startapps/crossx/model/MembershipModel;->limitDetail:Lcom/startapps/crossx/model/MembershipModel$LimitDetail;

    iget-object v0, v0, Lcom/startapps/crossx/model/MembershipModel$LimitDetail;->descriptions:Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;

    iget-object v0, v0, Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;->counts:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitCountNameLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v2, v2, Lcom/startapps/crossx/model/UserMembership;->checkinsCount:Lcom/startapps/crossx/model/UserMembership$CheckinsCount;

    iget-object v2, v2, Lcom/startapps/crossx/model/UserMembership$CheckinsCount;->perLimit:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v2, v2, Lcom/startapps/crossx/model/UserMembership;->membership:Lcom/startapps/crossx/model/MembershipModel;

    iget-object v2, v2, Lcom/startapps/crossx/model/MembershipModel;->limitDetail:Lcom/startapps/crossx/model/MembershipModel$LimitDetail;

    iget-object v2, v2, Lcom/startapps/crossx/model/MembershipModel$LimitDetail;->descriptions:Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;

    iget-object v2, v2, Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;->counts:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitNameLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->membership:Lcom/startapps/crossx/model/MembershipModel;

    iget-object v1, v1, Lcom/startapps/crossx/model/MembershipModel;->limitDetail:Lcom/startapps/crossx/model/MembershipModel$LimitDetail;

    iget-object v1, v1, Lcom/startapps/crossx/model/MembershipModel$LimitDetail;->descriptions:Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;

    iget-object v1, v1, Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->checkinsCount:Lcom/startapps/crossx/model/UserMembership$CheckinsCount;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership$CheckinsCount;->total:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitCountNameLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v2, v2, Lcom/startapps/crossx/model/UserMembership;->checkinsCount:Lcom/startapps/crossx/model/UserMembership$CheckinsCount;

    iget-object v2, v2, Lcom/startapps/crossx/model/UserMembership$CheckinsCount;->total:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " check-ins"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitCountNameLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->buttonRenew:Landroid/widget/Button;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->boxSettings:Lcom/startapps/crossx/model/BoxSettingsModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxSettingsModel;->isEnabledAppPlanRenew()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-boolean v1, v1, Lcom/startapps/crossx/model/UserMembership;->enabledUserRenew:Z

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->payments:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->payments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 225
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsSpace:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->payments:Ljava/util/List;

    iget-object v4, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    invoke-direct {v0, p0, v1, v4, p0}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/model/UserMembership;Lcom/startapps/crossx/Interfaces/OnPaymentListener;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembershipPaymentAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;

    .line 229
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembershipPaymentAdapter:Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/UserMembershipPaymentAdapter;->notifyDataSetChanged()V

    .line 231
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsList:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_4

    .line 233
    :cond_7
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentsSpace:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 238
    :goto_4
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->locks:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->locks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 239
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksSpace:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->lockCountLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    invoke-virtual {v4}, Lcom/startapps/crossx/model/UserMembership;->getLocksCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " dias"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->locks:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 245
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;->notifyDataSetChanged()V

    .line 247
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksList:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_5

    .line 250
    :cond_8
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->locksSpace:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    :goto_5
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->documents:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->documents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 256
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentsView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->documents:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 259
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;->notifyDataSetChanged()V

    .line 261
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentsList:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_6

    .line 264
    :cond_9
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentsView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method private requestToPaidInvoice(Lcom/startapps/crossx/model/UserCreditCard;Lcom/startapps/crossx/model/Payment;I)V
    .locals 7

    .line 401
    iget-object p3, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 402
    iget-object p3, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->invoicePaymentClient:Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;

    iget-wide v2, p2, Lcom/startapps/crossx/model/Payment;->id:J

    const-string v4, "credit_card"

    iget-wide p1, p1, Lcom/startapps/crossx/model/UserCreditCard;->id:J

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;

    invoke-direct {v6, p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity$5;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V

    invoke-virtual/range {v1 .. v6}, Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;->payInvoice(JLjava/lang/String;Ljava/lang/Integer;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 5

    .line 329
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 336
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    const/4 v4, 0x0

    .line 337
    invoke-interface {v0, v2, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 338
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 339
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 343
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v2, v0

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 344
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 4

    .line 107
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->membershipName:Landroid/widget/TextView;

    const v2, 0x7f1201ae

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->startDateLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->endDateLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->programsLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->limitCountNameLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->buttonRenew:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->paymentLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->lockLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->lockCountLabel:Landroid/widget/TextView;

    const v3, 0x7f1201af

    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->documentLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f1200bb

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0049

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 356
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 381
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7e3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "credit_card"

    .line 385
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 387
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserCreditCard;

    const-string p2, "payment"

    .line 388
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/Payment;

    const-string v0, "position"

    const/4 v1, 0x0

    .line 389
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->requestToPaidInvoice(Lcom/startapps/crossx/model/UserCreditCard;Lcom/startapps/crossx/model/Payment;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_membership"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->finish()V

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v1, "Detalhe da ades\u00e3o"

    invoke-virtual {p1, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->defineToolbar()V

    .line 142
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "user_model"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 143
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserMembership;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    .line 144
    new-instance p1, Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/UserMembershipClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembershipClient:Lcom/startapps/crossx/rest/clients/UserMembershipClient;

    .line 145
    new-instance p1, Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;

    invoke-direct {p1}, Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->invoicePaymentClient:Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;

    .line 147
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->progressRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->fetchUserMembership()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->finish()V

    .line 365
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPaidInvoice(Lcom/startapps/crossx/model/Payment;I)V
    .locals 3

    .line 370
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, p2, v2}, Lcom/startapps/crossx/controller/utils/Intents;->goToCreditCardList(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/Payment;IZ)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x7e3

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onSeeOrderInvoice(Lcom/startapps/crossx/model/Payment;I)V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v1, v1, Lcom/startapps/crossx/model/UserMembership;->boxSettings:Lcom/startapps/crossx/model/BoxSettingsModel;

    iget-object v1, v1, Lcom/startapps/crossx/model/BoxSettingsModel;->currency:Lcom/startapps/crossx/model/BoxSettingsModel$Currency;

    iget-object v1, v1, Lcom/startapps/crossx/model/BoxSettingsModel$Currency;->symbol:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/startapps/crossx/controller/utils/Intents;->goToOnlineOrderDetail(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/model/Payment;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setButtonRenewClick()V
    .locals 4

    .line 271
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200ca

    .line 272
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/view/activity/UserMembershipActivity$2;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity$2;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V

    const-string v3, "OK"

    .line 273
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    new-instance v1, Lcom/startapps/crossx/view/activity/UserMembershipActivity$3;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity$3;-><init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity;)V

    const-string v2, "CANCELAR"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public setLimitCountViewClick()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership;->checkinsCount:Lcom/startapps/crossx/model/UserMembership$CheckinsCount;

    iget-object v0, v0, Lcom/startapps/crossx/model/UserMembership$CheckinsCount;->total:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1200b9

    const/4 v1, 0x0

    .line 445
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userMembership:Lcom/startapps/crossx/model/UserMembership;

    iget-wide v0, v0, Lcom/startapps/crossx/model/UserMembership;->id:J

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    invoke-static {p0, v0, v1, v2}, Lcom/startapps/crossx/controller/utils/Intents;->goToUserMembershipCheckins(Landroid/content/Context;JLcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
