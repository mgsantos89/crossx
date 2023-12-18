.class public Lcom/startapps/crossx/view/activity/MembershipDetailsActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "MembershipDetailsActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0492

    const-string v1, "field \'toolbar\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a045f

    const-string v1, "field \'textViewName\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewName:Landroid/widget/TextView;

    const v0, 0x7f0a0462

    const-string v1, "field \'textViewParcelPrice\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewParcelPrice:Landroid/widget/TextView;

    const v0, 0x7f0a0478

    const-string v1, "field \'textViewTotalPrice\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewTotalPrice:Landroid/widget/TextView;

    const v0, 0x7f0a0457

    const-string v1, "field \'textViewDiscount\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDiscount:Landroid/widget/TextView;

    const v0, 0x7f0a0285

    const-string v1, "field \'layoutMembershipDetailsStatus\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->layoutMembershipDetailsStatus:Landroid/view/View;

    const v0, 0x7f0a0210

    const-string v1, "field \'imageViewStatus\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->imageViewStatus:Landroid/widget/ImageView;

    const v0, 0x7f0a0470

    const-string v1, "field \'textViewStatus\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewStatus:Landroid/widget/TextView;

    const v0, 0x7f0a046b

    const-string v1, "field \'textViewProgramType\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewProgramType:Landroid/widget/TextView;

    const v0, 0x7f0a0454

    const-string v1, "field \'textViewDateStart\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateStart:Landroid/widget/TextView;

    const v0, 0x7f0a0458

    const-string v1, "field \'textViewDateEndLabel\'"

    .line 30
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateEndLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0452

    const-string v1, "field \'textViewDateEnd\'"

    .line 32
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateEnd:Landroid/widget/TextView;

    const v0, 0x7f0a047e

    const-string v1, "field \'textViewTypeRecurrence\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewTypeRecurrence:Landroid/widget/TextView;

    const v0, 0x7f0a046e

    const-string v1, "field \'textViewSessionLabel\'"

    .line 36
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewSessionLabel:Landroid/widget/TextView;

    const v0, 0x7f0a046d

    const-string v1, "field \'textViewSession\'"

    .line 38
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewSession:Landroid/widget/TextView;

    const v0, 0x7f0a00a5

    const-string v1, "field \'buttonAction\' and method \'buttonActionListener\'"

    .line 40
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 41
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->buttonAction:Landroid/widget/Button;

    .line 42
    new-instance v1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity$$ViewInjector$1;-><init>(Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0373

    const-string v1, "field \'recyclerViewMembershipDetails\'"

    .line 50
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 51
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->recyclerViewMembershipDetails:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0404

    const-string v1, "field \'textViewEmpty\'"

    .line 52
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 53
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, p1, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewEmpty:Landroid/widget/TextView;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 58
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewName:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewParcelPrice:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewTotalPrice:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDiscount:Landroid/widget/TextView;

    .line 62
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->layoutMembershipDetailsStatus:Landroid/view/View;

    .line 63
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->imageViewStatus:Landroid/widget/ImageView;

    .line 64
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewStatus:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewProgramType:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateStart:Landroid/widget/TextView;

    .line 67
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateEndLabel:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewDateEnd:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewTypeRecurrence:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewSessionLabel:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewSession:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->buttonAction:Landroid/widget/Button;

    .line 73
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->recyclerViewMembershipDetails:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/MembershipDetailsActivity;->textViewEmpty:Landroid/widget/TextView;

    return-void
.end method
