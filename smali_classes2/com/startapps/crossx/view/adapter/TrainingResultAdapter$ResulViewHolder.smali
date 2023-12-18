.class public Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "TrainingResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResulViewHolder"
.end annotation


# instance fields
.field protected buttonEdit:Landroid/widget/Button;

.field protected categorie:Landroid/widget/TextView;

.field protected description:Landroid/widget/TextView;

.field protected nameWod:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;Landroid/view/View;)V
    .locals 3

    .line 93
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;

    .line 94
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 96
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->nameWod:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->categorie:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->buttonEdit:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getButtonEdit()Landroid/widget/Button;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->buttonEdit:Landroid/widget/Button;

    return-object v0
.end method

.method public getCategorie()Landroid/widget/TextView;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->categorie:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDescription()Landroid/widget/TextView;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNameWod()Landroid/widget/TextView;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->nameWod:Landroid/widget/TextView;

    return-object v0
.end method

.method public setButtonEdit(Landroid/widget/Button;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->buttonEdit:Landroid/widget/Button;

    return-void
.end method

.method public setCategorie(Landroid/widget/TextView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->categorie:Landroid/widget/TextView;

    return-void
.end method

.method public setDescription(Landroid/widget/TextView;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method

.method public setNameWod(Landroid/widget/TextView;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingResultAdapter$ResulViewHolder;->nameWod:Landroid/widget/TextView;

    return-void
.end method
