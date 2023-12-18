.class Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;
.super Landroid/widget/Filter;
.source "UserWorkoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarTrainingFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;-><init>(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v2, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    iget-object v2, v2, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->originalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/WorkoutModel;

    .line 197
    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->-$$Nest$misContainName(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->-$$Nest$misTecniquesModelList(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->-$$Nest$misWarmupsModellList(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->-$$Nest$misWodsModellList(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->-$$Nest$misWorWokoutCategories(Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;Ljava/lang/String;Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 206
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1

    .line 209
    :cond_3
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->originalList:Ljava/util/List;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 212
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->originalList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 213
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .line 224
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 226
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->notifyDataSetChanged()V

    .line 227
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->clear()V

    const/4 p2, 0x0

    .line 229
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter$CalendarTrainingFilter;->this$0:Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
