.class public Lcom/startapps/crossx/view/activity/CropImageActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "CropImageActivity.java"


# static fields
.field public static EXTRA_FILE:Ljava/lang/String; = "extra-file"

.field public static HIPER_DIMENSION_PHOTO:I = 0xa8c


# instance fields
.field cropImageView:Lcom/edmodo/cropper/CropImageView;

.field file:Ljava/io/File;

.field rotate:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm()V
    .locals 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->cropImageView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {v0}, Lcom/edmodo/cropper/CropImageView;->getCroppedImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->file:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->saveImage(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "OutOfMemoryErro CropImageActivity"

    const/4 v1, 0x1

    .line 131
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v0, -0x1

    .line 133
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->setResult(I)V

    const/4 v0, 0x6

    .line 134
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->finishActivity(I)V

    .line 135
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->finish()V

    return-void
.end method

.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f120023

    .line 117
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d002d

    return v0
.end method

.method public goBack()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected nameScreen()Ljava/lang/String;
    .locals 1

    const-string v0, "CropImageActivity"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->defineToolbar()V

    .line 65
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/startapps/crossx/view/activity/CropImageActivity;->EXTRA_FILE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->file:Ljava/io/File;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "file "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->file:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CropImageActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->file:Ljava/io/File;

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->finish()V

    .line 73
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->cropImageView:Lcom/edmodo/cropper/CropImageView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->file:Ljava/io/File;

    .line 77
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    invoke-static {p0, v1}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->getCorrectlyOrientedImage(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v2, Lcom/startapps/crossx/view/activity/CropImageActivity;->HIPER_DIMENSION_PHOTO:I

    int-to-float v2, v2

    const/4 v3, 0x1

    .line 74
    invoke-static {p0, v1, v2, v3}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->scaleDown(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 73
    invoke-virtual {p1, v1}, Lcom/edmodo/cropper/CropImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->cropImageView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {p1, v3}, Lcom/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    .line 81
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->cropImageView:Lcom/edmodo/cropper/CropImageView;

    invoke-virtual {p1, v3, v3}, Lcom/edmodo/cropper/CropImageView;->setAspectRatio(II)V

    .line 82
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/CropImageActivity;->rotate:Landroid/widget/ImageView;

    new-instance v1, Lcom/startapps/crossx/view/activity/CropImageActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/CropImageActivity$1;-><init>(Lcom/startapps/crossx/view/activity/CropImageActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NullPointerException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    .line 110
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->confirm()V

    return v2

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/CropImageActivity;->goBack()V

    return v2
.end method
