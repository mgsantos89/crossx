.class public Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "ProfileFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/fragment/ProfileFragment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a00d4

    const-string v1, "field \'cardCreditCard\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->cardCreditCard:Landroid/view/View;

    const v0, 0x7f0a00d8

    const-string v1, "field \'cardMembership\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->cardMembership:Landroid/view/View;

    const v0, 0x7f0a012a

    const-string v1, "field \'creditCardData\' and method \'setCreditCardDataClick\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->creditCardData:Landroid/widget/RelativeLayout;

    .line 16
    new-instance v1, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02d5

    const-string v1, "field \'membershipData\' and method \'setUserMembershipDataClick\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->membershipData:Landroid/widget/RelativeLayout;

    .line 26
    new-instance v1, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$2;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$2;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a013f

    const-string v1, "field \'dataUser\' and method \'setDataUserClick\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->dataUser:Landroid/widget/RelativeLayout;

    .line 36
    new-instance v1, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$3;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$3;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0342

    const-string v1, "field \'profileImg\' and method \'onClickImageProfile\'"

    .line 44
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 45
    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->profileImg:Landroid/widget/ImageView;

    .line 46
    new-instance v1, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$4;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$4;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0215

    const-string v1, "field \'backgroundImg\'"

    .line 54
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->backgroundImg:Landroid/widget/ImageView;

    const v0, 0x7f0a0307

    const-string v1, "field \'nameUser\'"

    .line 56
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->nameUser:Landroid/widget/TextView;

    const v0, 0x7f0a0311

    const-string v1, "field \'nicknameUser\'"

    .line 58
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->nicknameUser:Landroid/widget/TextView;

    const v0, 0x7f0a0081

    const-string v1, "field \'boxData\' and method \'setBoxDataClick\'"

    .line 60
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxData:Landroid/widget/RelativeLayout;

    .line 62
    new-instance v1, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$5;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$5;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0084

    const-string v1, "field \'boxNameData\'"

    .line 70
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxNameData:Landroid/widget/TextView;

    const v0, 0x7f0a0086

    const-string v1, "field \'boxSeeData\'"

    .line 72
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 73
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxSeeData:Landroid/widget/TextView;

    const v0, 0x7f0a01ec

    const-string v1, "field \'icFeedback\'"

    .line 74
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->icFeedback:Landroid/widget/ImageView;

    const v0, 0x7f0a0085

    const-string v1, "field \'boxPR\'"

    .line 76
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxPR:Landroid/view/View;

    const v0, 0x7f0a00d2

    const-string v1, "field \'cardBox\'"

    .line 78
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 79
    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->cardBox:Landroid/view/View;

    const v0, 0x7f0a0189

    const-string v1, "field \'emailData\' and method \'setEmailDataClick\'"

    .line 80
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 81
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->emailData:Landroid/widget/RelativeLayout;

    .line 82
    new-instance v1, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$6;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$6;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a018a

    const-string v1, "field \'boxEmailData\'"

    .line 90
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxEmailData:Landroid/widget/TextView;

    const v0, 0x7f0a00ef

    const-string v1, "field \'checkinCount\'"

    .line 92
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->checkinCount:Landroid/widget/TextView;

    const v0, 0x7f0a033b

    const-string v1, "field \'personalRecodsCount\'"

    .line 94
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->personalRecodsCount:Landroid/widget/TextView;

    const v0, 0x7f0a0083

    const-string v1, "field \'boxMembership\' and method \'setBoxAccessionClick\'"

    .line 96
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 97
    iput-object p0, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxMembership:Landroid/view/View;

    .line 98
    new-instance p2, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$7;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/view/fragment/ProfileFragment$$ViewInjector$7;-><init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->cardCreditCard:Landroid/view/View;

    .line 110
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->cardMembership:Landroid/view/View;

    .line 111
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->creditCardData:Landroid/widget/RelativeLayout;

    .line 112
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->membershipData:Landroid/widget/RelativeLayout;

    .line 113
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->dataUser:Landroid/widget/RelativeLayout;

    .line 114
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->profileImg:Landroid/widget/ImageView;

    .line 115
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->backgroundImg:Landroid/widget/ImageView;

    .line 116
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->nameUser:Landroid/widget/TextView;

    .line 117
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->nicknameUser:Landroid/widget/TextView;

    .line 118
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxData:Landroid/widget/RelativeLayout;

    .line 119
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxNameData:Landroid/widget/TextView;

    .line 120
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxSeeData:Landroid/widget/TextView;

    .line 121
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->icFeedback:Landroid/widget/ImageView;

    .line 122
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxPR:Landroid/view/View;

    .line 123
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->cardBox:Landroid/view/View;

    .line 124
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->emailData:Landroid/widget/RelativeLayout;

    .line 125
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxEmailData:Landroid/widget/TextView;

    .line 126
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->checkinCount:Landroid/widget/TextView;

    .line 127
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->personalRecodsCount:Landroid/widget/TextView;

    .line 128
    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment;->boxMembership:Landroid/view/View;

    return-void
.end method
