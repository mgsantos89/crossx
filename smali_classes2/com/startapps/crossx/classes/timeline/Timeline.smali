.class public Lcom/startapps/crossx/classes/timeline/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/timeline/TimelineInterface;


# instance fields
.field private boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

.field private viewRestClientInterface:Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/timeline/Timeline;)Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/timeline/Timeline;->viewRestClientInterface:Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/classes/timeline/Timeline;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    .line 36
    iput-object p1, p0, Lcom/startapps/crossx/classes/timeline/Timeline;->viewRestClientInterface:Lcom/startapps/crossx/Interfaces/views/TimelineViewInterface;

    return-void
.end method


# virtual methods
.method public onDeletePublication(Ljava/lang/String;Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/startapps/crossx/classes/timeline/Timeline;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/classes/timeline/Timeline$3;

    invoke-direct {v2, p0, p2}, Lcom/startapps/crossx/classes/timeline/Timeline$3;-><init>(Lcom/startapps/crossx/classes/timeline/Timeline;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->delete(Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onFeatchPublicationsPage(Ljava/lang/String;I)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/startapps/crossx/classes/timeline/Timeline;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    new-instance v1, Lcom/startapps/crossx/classes/timeline/Timeline$1;

    invoke-direct {v1, p0, p2}, Lcom/startapps/crossx/classes/timeline/Timeline$1;-><init>(Lcom/startapps/crossx/classes/timeline/Timeline;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->timeLine(Ljava/lang/String;ILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onPublish(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
    .locals 4

    .line 80
    new-instance v0, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string/jumbo v2, "text"

    invoke-virtual {v0, v2, v1}, Lcom/squareup/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 83
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "image/jpeg"

    .line 84
    invoke-static {v1}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    const-string v2, "imageFile"

    const-string/jumbo v3, "temp.jpg"

    .line 86
    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/MultipartBuilder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/startapps/crossx/classes/timeline/Timeline;->boxHttpClient:Lcom/startapps/crossx/rest/clients/BoxHttpClient;

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getBoxId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/classes/timeline/Timeline$2;

    invoke-direct {v3, p0, p1}, Lcom/startapps/crossx/classes/timeline/Timeline$2;-><init>(Lcom/startapps/crossx/classes/timeline/Timeline;Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/startapps/crossx/rest/clients/BoxHttpClient;->publish(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public onSharePublication(Landroid/content/Context;Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 3

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/*"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "share.jpg"

    .line 151
    invoke-static {v1, p1, v2}, Lcom/startapps/crossx/controller/utils/BitmapHelpers;->saveImageForSend(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "text/plain"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "Subject Here"

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 159
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f120200

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
