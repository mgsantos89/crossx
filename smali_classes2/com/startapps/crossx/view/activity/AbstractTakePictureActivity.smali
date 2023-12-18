.class public abstract Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "AbstractTakePictureActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractTakePictureActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTakePictureActivity.kt\ncom/startapps/crossx/view/activity/AbstractTakePictureActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n1#2:208\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 -2\u00020\u00012\u00020\u0002:\u0001-B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\rH\u0004J\u0006\u0010\u0013\u001a\u00020\rJ\u0008\u0010\u0014\u001a\u00020\rH\u0002J\"\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0017H\u0016J+\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!2\u0006\u0010#\u001a\u00020$H\u0016\u00a2\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020\rJ\u001c\u0010\'\u001a\u00020\r2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010*\u001a\u0004\u0018\u00010\u000bH$J\u0008\u0010+\u001a\u00020\rH\u0014J\u0006\u0010,\u001a\u00020\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;",
        "Lcom/startapps/crossx/view/activity/AbstractActivity;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "()V",
        "enableCropImageInPictureAndGallery",
        "",
        "getEnableCropImageInPictureAndGallery",
        "()Z",
        "setEnableCropImageInPictureAndGallery",
        "(Z)V",
        "mFileTemp",
        "Ljava/io/File;",
        "copyStream",
        "",
        "input",
        "Ljava/io/InputStream;",
        "output",
        "Ljava/io/OutputStream;",
        "cropImage",
        "imageDialog",
        "initTempFile",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onClick",
        "dialog",
        "Landroid/content/DialogInterface;",
        "which",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "openGallery",
        "resultImage",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "file",
        "setAddImage",
        "shotPicture",
        "Companion",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity$Companion;

.field private static final MAX_DIMENSSION_PHOTO:I = 0x6a4

.field public static final REQUEST_CODE_AVIARY:I = 0x4

.field public static final REQUEST_CODE_CROP_IMAGE:I = 0x6

.field public static final REQUEST_CODE_GALLERY:I = 0x1

.field public static final REQUEST_CODE_TAKE_PICTURE:I = 0x2

.field public static final REQUEST_LOCATION_PERMISSION:I = 0x1

.field public static final TEMP_PHOTO_FILE_NAME:Ljava/lang/String; = "image.jpg"


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private enableCropImageInPictureAndGallery:Z

.field protected mFileTemp:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->Companion:Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method

.method private final copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 116
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final initTempFile()V
    .locals 4

    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 105
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "image.jpg"

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    :goto_0
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->mFileTemp:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected final cropImage()V
    .locals 2

    .line 122
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->mFileTemp:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/Intents;->forCropImage(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected final getEnableCropImageInPictureAndGallery()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->enableCropImageInPictureAndGallery:Z

    return v0
.end method

.method public final imageDialog()V
    .locals 3

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f030009

    .line 182
    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->mFileTemp:Ljava/io/File;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->mFileTemp:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->resultImage(Landroid/graphics/Bitmap;Ljava/io/File;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->cropImage()V

    goto :goto_0

    .line 42
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/startapps/crossx/controller/utils/FileHelper;->Companion:Lcom/startapps/crossx/controller/utils/FileHelper$Companion;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "baseContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/startapps/crossx/controller/utils/FileHelper$Companion;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->mFileTemp:Ljava/io/File;

    .line 43
    iget-boolean v1, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->enableCropImageInPictureAndGallery:Z

    if-eqz v1, :cond_4

    .line 44
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->cropImage()V

    goto :goto_0

    .line 46
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->mFileTemp:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->resultImage(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->shotPicture()V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->openGallery()V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 169
    array-length p1, p3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    xor-int/2addr p1, p2

    if-eqz p1, :cond_1

    .line 170
    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->imageDialog()V

    goto :goto_1

    .line 174
    :cond_1
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string p3, "Voc\u00ea pecisa dar permiss\u00e3o"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final openGallery()V
    .locals 5

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Select Image"

    .line 69
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 70
    check-cast v3, [Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected abstract resultImage(Landroid/graphics/Bitmap;Ljava/io/File;)V
.end method

.method protected setAddImage()V
    .locals 7

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    const-string v3, "android.permission-group.CAMERA"

    const-string v4, "android.permission.CAMERA"

    if-gt v0, v1, :cond_1

    .line 128
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez v5, :cond_0

    .line 129
    invoke-static {v0, v6}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 133
    invoke-static {v0, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 137
    invoke-static {v0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    filled-new-array {v1, v6, v4, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 148
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    .line 147
    invoke-static {v0, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 151
    invoke-static {v0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->imageDialog()V

    return-void

    .line 154
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method protected final setEnableCropImageInPictureAndGallery(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->enableCropImageInPictureAndGallery:Z

    return-void
.end method

.method public final shotPicture()V
    .locals 4

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->initTempFile()V

    .line 79
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    .line 80
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-string v2, "com.startapps.crossx.fileprovider"

    .line 84
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->mFileTemp:Ljava/io/File;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lcom/startapps/crossx/controller/provider/InternalStorageContentProvider;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const-string v2, "output"

    .line 89
    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "return-data"

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    iget-boolean v2, p0, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->enableCropImageInPictureAndGallery:Z

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/AbstractTakePictureActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
