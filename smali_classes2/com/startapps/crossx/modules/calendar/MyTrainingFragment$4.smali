.class Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "MyTrainingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getAllCheckins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 246
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    const-string p1, "onNetworkError"

    .line 248
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    const-string p1, "onServerError"

    .line 255
    invoke-static {p1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 4

    .line 226
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 230
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "created"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v2, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    .line 232
    invoke-static {v1, v3}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;-><init>(Ljava/util/Date;)V

    .line 233
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    new-instance v0, Lcom/startapps/crossx/view/decorator/EventDecorator;

    iget-object v1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-virtual {v1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/startapps/crossx/view/decorator/EventDecorator;-><init>(Ljava/util/Collection;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fputeventDecorator(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/view/decorator/EventDecorator;)V

    .line 238
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetcalendarDialogFragment(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetcalendarDialogFragment(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetcalendarDialogFragment(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p2}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgeteventDecorator(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/view/decorator/EventDecorator;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->setEventDecorator(Lcom/startapps/crossx/view/decorator/EventDecorator;)V

    .line 240
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$4;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetcalendarDialogFragment(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/modules/calendar/CalendarDialogFragment;->invalidateDecorators()V

    :cond_1
    return-void
.end method
