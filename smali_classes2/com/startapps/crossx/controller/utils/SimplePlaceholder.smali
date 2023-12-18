.class public Lcom/startapps/crossx/controller/utils/SimplePlaceholder;
.super Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;
.source "SimplePlaceholder.java"

# interfaces
.implements Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;


# instance fields
.field private button:Landroid/widget/Button;

.field private buttonId:I

.field private errorImageView:Landroid/widget/ImageView;

.field private errorImageViewId:I

.field private messageTextView:Landroid/widget/TextView;

.field private messageTextViewId:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;-><init>(Landroid/view/View;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;-><init>(Landroid/view/View;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;-><init>(Landroid/view/View;I)V

    .line 33
    iput p3, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->errorImageViewId:I

    .line 34
    iput p4, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->messageTextViewId:I

    .line 35
    iput p5, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->buttonId:I

    return-void
.end method

.method private configureButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->getButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->getButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->getButton()Landroid/widget/Button;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "button"

    .line 95
    iget v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->buttonId:I

    invoke-direct {p0, p2, v0, p1}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->throwConfigurationError(Ljava/lang/String;ILjava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private configureMessageTextView(Ljava/lang/String;)V
    .locals 2

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->getMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->getMessageTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "messageTextView"

    .line 85
    iget v1, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->messageTextViewId:I

    invoke-direct {p0, v0, v1, p1}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->throwConfigurationError(Ljava/lang/String;ILjava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private throwConfigurationError(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 2

    const-string v0, "Cannot configure "

    if-nez p2, :cond_0

    .line 101
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". The required id was not provided on the constructor!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 103
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". The provided id was not found in the placeholder view hierarchy!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public clearConfiguration()V
    .locals 2

    .line 40
    iget v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->errorImageViewId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->configureImageView(I)V

    .line 41
    :cond_0
    iget v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->messageTextViewId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->configureMessageTextView(Ljava/lang/String;)V

    .line 42
    :cond_1
    iget v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->buttonId:I

    if-eqz v0, :cond_2

    invoke-direct {p0, v1, v1}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->configureButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public configure(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 58
    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->configureMessageTextView(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const p1, 0x7f080162

    goto :goto_0

    :cond_0
    const p1, 0x7f080163

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->configureImageView(I)V

    .line 64
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->configureButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public configure(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->configureMessageTextView(Ljava/lang/String;)V

    .line 53
    iget p1, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->buttonId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->configureButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public configureImageView(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->errorImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->getErrorImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "errorImageView"

    .line 75
    iget v1, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->messageTextViewId:I

    invoke-direct {p0, v0, v1, p1}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->throwConfigurationError(Ljava/lang/String;ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public configureMessage(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->configureMessageTextView(Ljava/lang/String;)V

    return-void
.end method

.method public getButton()Landroid/widget/Button;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->button:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->buttonId:I

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->findChildOrBust(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->button:Landroid/widget/Button;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->button:Landroid/widget/Button;

    return-object v0
.end method

.method public getErrorImageView()Landroid/widget/ImageView;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->errorImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->errorImageViewId:I

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->findChildOrBust(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->errorImageView:Landroid/widget/ImageView;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->errorImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->messageTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->getView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->messageTextViewId:I

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->findChildOrBust(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->messageTextView:Landroid/widget/TextView;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;->messageTextView:Landroid/widget/TextView;

    return-object v0
.end method
