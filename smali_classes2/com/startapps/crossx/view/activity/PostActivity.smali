.class public Lcom/startapps/crossx/view/activity/PostActivity;
.super Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;
.source "PostActivity.java"


# static fields
.field public static final EDIT:I = 0xcb

.field public static final PUBLISH:I = 0xca


# instance fields
.field imgPost:Landroid/widget/ImageView;

.field private isEdit:Z

.field photo:Landroid/widget/ImageView;

.field photoFile:Ljava/io/File;

.field photoPost:Landroid/graphics/Bitmap;

.field private postEdit:Lcom/startapps/crossx/model/TimeLineModel;

.field scroll:Landroid/widget/ScrollView;

.field textPost:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->isEdit:Z

    return-void
.end method

.method private handleSendImage(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.extra.STREAM"

    .line 274
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 278
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->mFileTemp:Ljava/io/File;

    .line 279
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->cropImage()V

    goto :goto_0

    :cond_0
    const-string p1, "Erro ao carregar a foto"

    const/4 v0, 0x1

    .line 283
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 284
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->finish()V

    :goto_0
    return-void
.end method

.method private handleSendText(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.extra.TEXT"

    .line 260
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 264
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private setupViewEditIfNeed()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->isEdit:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->photo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->imgPost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->textPost:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->postEdit:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/TimeLineModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->textPost:Landroid/widget/EditText;

    new-instance v1, Lcom/startapps/crossx/view/activity/PostActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/PostActivity$1;-><init>(Lcom/startapps/crossx/view/activity/PostActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f12005f

    .line 179
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/PostActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 2

    const v0, 0x7f0a0287

    .line 74
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0352

    .line 75
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d003e

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 2

    const v0, 0x7f0a0287

    .line 68
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0352

    .line 69
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f0801d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 83
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setFormat(I)V

    .line 87
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 88
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/Intents;->goToLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/PostActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->finish()V

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "post"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->isEdit:Z

    .line 95
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/TimeLineModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->postEdit:Lcom/startapps/crossx/model/TimeLineModel;

    .line 98
    :cond_1
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Post na Timeline"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->defineToolbar()V

    .line 101
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->imgPost:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const-string/jumbo v0, "text/plain"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PostActivity;->handleSendText(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "image/"

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PostActivity;->handleSendImage(Landroid/content/Intent;)V

    .line 121
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->setupViewEditIfNeed()V

    .line 122
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->setupScroll()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a00e8

    if-eq v0, v1, :cond_0

    .line 154
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->saveResult()V

    return v2

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->goBack()V

    return v2
.end method

.method public onStop()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->onStop()V

    .line 129
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    return-void
.end method

.method protected resultImage(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 1

    .line 191
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->photoPost:Landroid/graphics/Bitmap;

    .line 192
    iput-object p2, p0, Lcom/startapps/crossx/view/activity/PostActivity;->photoFile:Ljava/io/File;

    .line 194
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 199
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 197
    invoke-static {p0, p2}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->getCorrectlyOrientedImage(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p2

    int-to-float p1, p1

    const/4 v0, 0x1

    .line 196
    invoke-static {p0, p2, p1, v0}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->scaleDown(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PostActivity;->imgPost:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->imgPost:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected saveResult()V
    .locals 4

    .line 226
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->hideKeyboard()V

    .line 230
    new-instance v0, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;

    invoke-direct {v0}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;-><init>()V

    .line 231
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->setBoxId(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->textPost:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->setText(Ljava/lang/String;)V

    .line 234
    iget-boolean v1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->isEdit:Z

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->postEdit:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->setPostId(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PostActivity;->photoFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 243
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 241
    invoke-static {p0, v1}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->getCorrectlyOrientedImage(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    .line 240
    invoke-static {p0, v1, v2, v3}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->scaleDown(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 247
    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->encodeTo(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->setBytes([B)V

    .line 251
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "publish"

    .line 252
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 254
    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/PostActivity;->setResult(ILandroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->finish()V

    return-void
.end method

.method public setPhotoClick()V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->hideKeyboard()V

    .line 141
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PostActivity;->setAddImage()V

    return-void
.end method

.method protected setupScroll()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PostActivity;->textPost:Landroid/widget/EditText;

    new-instance v1, Lcom/startapps/crossx/view/activity/PostActivity$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/PostActivity$2;-><init>(Lcom/startapps/crossx/view/activity/PostActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
