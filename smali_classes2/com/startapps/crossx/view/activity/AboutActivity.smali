.class public Lcom/startapps/crossx/view/activity/AboutActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "AboutActivity.java"


# static fields
.field public static final EXTRA_USER:Ljava/lang/String; = "extra-user"


# instance fields
.field indicator:Landroid/widget/TextView;

.field toolbar:Landroidx/appcompat/widget/Toolbar;

.field version:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AboutActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AboutActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 82
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AboutActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AboutActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1201c8

    .line 85
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AboutActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d001c

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AboutActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AboutActivity;->defineToolbar()V

    .line 53
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AboutActivity;->indicator:Landroid/widget/TextView;

    const-string v0, "Finalmente os atletas est\u00e3o realmente conectados.\n\nCom o aplicativo CrossX voc\u00ea pode encontrar BOXes filiados no Brasil inteiro e receber os wods do dia, realizar check in, postar seus resultados e comparar sua evolu\u00e7\u00e3o com atletas do seu ou qualquer outro BOX!\n\nAl\u00e9m disso tudo, desfrute dos benef\u00edcios exclusivos que nossa marca e nossos parceiros oferecem aos membros da comunidade.\n\nO CrossX \u00e9 uma ferramenta exclusiva para Boxes filiados, por isso se o seu est\u00e1 de fora n\u00e3o deixe de falar para seu headcoach!\n\nCrossX, Your Box out of the box"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AboutActivity;->version:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f12011b

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/Utils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AboutActivity;->goBack()V

    .line 72
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
