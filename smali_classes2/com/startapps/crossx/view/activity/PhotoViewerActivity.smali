.class public Lcom/startapps/crossx/view/activity/PhotoViewerActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "PhotoViewerActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected imageView:Lcom/startapps/crossx/view/TouchImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private defineActionBar()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v1, ""

    .line 90
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x4000000

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d003d

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected loadPhotoWhithUrl(Ljava/lang/String;)V
    .locals 3

    .line 99
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->imageView:Lcom/startapps/crossx/view/TouchImageView;

    .line 100
    invoke-static {}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getDefaultOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 99
    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->imageView:Lcom/startapps/crossx/view/TouchImageView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/TouchImageView;->getCurrentZoom()F

    move-result v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->imageView:Lcom/startapps/crossx/view/TouchImageView;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/TouchImageView;->getMinZoom()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->imageView:Lcom/startapps/crossx/view/TouchImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/TouchImageView;->setZoom(F)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "image-url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->finish()V

    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->defineActionBar()V

    .line 62
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->loadPhotoWhithUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PhotoViewerActivity;->finish()V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
