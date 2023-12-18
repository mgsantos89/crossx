.class Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;
.super Ljava/lang/Object;
.source "TrainingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/TrainingAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/TrainingAdapter;

.field final synthetic val$videos:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/TrainingAdapter;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/TrainingAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;->val$videos:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const-string/jumbo v0, "video_url"

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;->val$videos:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->getYoutubeVideoID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    .line 93
    :goto_0
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "vnd.youtube:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    new-instance v3, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://www.youtube.com/watch?v="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    :try_start_1
    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/TrainingAdapter;

    invoke-static {v4}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/TrainingAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "VIDEO_ID"

    .line 97
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "force_fullscreen"

    const/4 v4, 0x1

    .line 98
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "origin"

    const-string v4, "http://www.youtube.com"

    .line 99
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/TrainingAdapter;

    invoke-static {v1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/TrainingAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v1, "video url: "

    .line 101
    iget-object v2, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;->val$videos:Lorg/json/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/TrainingAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/TrainingAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 106
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 107
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/TrainingAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/TrainingAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
