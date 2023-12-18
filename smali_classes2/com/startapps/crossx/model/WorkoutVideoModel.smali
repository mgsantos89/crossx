.class public Lcom/startapps/crossx/model/WorkoutVideoModel;
.super Ljava/lang/Object;
.source "WorkoutVideoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public videoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "title"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/model/WorkoutVideoModel;->title:Ljava/lang/String;

    const-string/jumbo v0, "video_url"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/model/WorkoutVideoModel;->videoUrl:Ljava/lang/String;

    return-void
.end method
