.class public Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder$$ViewInjector;
.super Ljava/lang/Object;
.source "UserCheckinAdapter$ViewHolder$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0220

    const-string v1, "field \'imageView\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0249

    const-string v1, "field \'nameUser\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->nameUser:Landroid/widget/TextView;

    const v0, 0x7f0a0233

    const-string v1, "field \'ageUser\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->ageUser:Landroid/widget/TextView;

    const v0, 0x7f0a0236

    const-string v1, "field \'checkin\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->checkin:Landroid/widget/TextView;

    const v0, 0x7f0a0245

    const-string v1, "field \'waiting\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->waiting:Landroid/widget/TextView;

    const v0, 0x7f0a0243

    const-string v1, "field \'gympass\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->gympass:Landroid/widget/TextView;

    const v0, 0x7f0a0259

    const-string v1, "field \'reserved\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->reserved:Landroid/widget/TextView;

    const v0, 0x7f0a024a

    const-string v1, "field \'noshow\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->noshow:Landroid/widget/TextView;

    const v0, 0x7f0a0234

    const-string v1, "field \'canceled\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->canceled:Landroid/widget/TextView;

    const v0, 0x7f0a01c9

    const-string v1, "field \'headerUser\'"

    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 29
    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->headerUser:Landroid/view/View;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->nameUser:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->ageUser:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->checkin:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->waiting:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->gympass:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->reserved:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->noshow:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->canceled:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->headerUser:Landroid/view/View;

    return-void
.end method
