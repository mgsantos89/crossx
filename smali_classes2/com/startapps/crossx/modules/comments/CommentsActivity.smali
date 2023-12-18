.class public Lcom/startapps/crossx/modules/comments/CommentsActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "CommentsActivity.java"

# interfaces
.implements Lcom/startapps/crossx/classes/comments/CommentsContract$View;
.implements Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/activity/AbstractActivity;",
        "Lcom/startapps/crossx/classes/comments/CommentsContract$View<",
        "Lcom/startapps/crossx/model/CommentModel;",
        ">;",
        "Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;",
        "Landroid/view/ActionMode$Callback;"
    }
.end annotation


# static fields
.field public static final BOX_ID_PARAMS:Ljava/lang/String; = "box_id"

.field public static final POST_ID_PARAMS:Ljava/lang/String; = "post_id"

.field public static final TIMELINE_PARAMS:Ljava/lang/String; = "timeline"

.field public static final UPDATE_COMMENTS:I = 0x7d


# instance fields
.field btSend:Landroid/widget/Button;

.field private commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

.field listComments:Landroidx/recyclerview/widget/RecyclerView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mTimeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

.field private presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

.field progressBar:Landroid/widget/ProgressBar;

.field protected progressBarLoad:Landroid/widget/ProgressBar;

.field private reload:Z

.field textComment:Landroid/widget/EditText;

.field toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionMode(Lcom/startapps/crossx/modules/comments/CommentsActivity;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/modules/comments/CommentsActivity;)Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    .line 61
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->reload:Z

    return-void
.end method

.method private back()V
    .locals 3

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "timeline"

    .line 143
    iget-object v2, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mTimeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 145
    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 247
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12001e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method public errorUpdateItems()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->reload:Z

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0028

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .line 296
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f0a014e

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 303
    iget-object p2, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/CommentModel;

    invoke-interface {p2, v1}, Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;->onDeleteComment(Lcom/startapps/crossx/model/CommentModel;)V

    .line 304
    iget-object p2, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/CommentModel;

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->removeData(Lcom/startapps/crossx/model/CommentModel;)V

    .line 306
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getAllItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x3

    if-le p1, p2, :cond_1

    .line 311
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getAllItems()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p1, -0x3

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 313
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getAllItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 318
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mTimeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/TimeLineModel;->setComments(Ljava/util/List;)V

    .line 319
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mTimeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getCommentCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/TimeLineModel;->setCommentCount(I)V

    .line 321
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->clearSelections()V

    .line 322
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_2
    :goto_1
    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->back()V

    .line 152
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onBackPressed()V

    return-void
.end method

.method public onClickSend()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    iget-object v1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->textComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;->onCommentPost(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 88
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "timeline"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "box_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->defineToolbar()V

    .line 99
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/TimeLineModel;

    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mTimeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    .line 101
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mTimeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/TimeLineModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/startapps/crossx/modules/comments/CommentsViewModel;

    invoke-direct {v1, p0, p1, v0}, Lcom/startapps/crossx/modules/comments/CommentsViewModel;-><init>(Lcom/startapps/crossx/classes/comments/CommentsContract$View;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    .line 106
    new-instance p1, Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    new-instance v1, Lcom/startapps/crossx/modules/comments/CommentsActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity$1;-><init>(Lcom/startapps/crossx/modules/comments/CommentsActivity;)V

    invoke-direct {p1, v0, v1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;-><init>(Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;Lcom/startapps/crossx/view/adapter/CommentsAdapter$LoadMoreItemsListener;)V

    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    .line 118
    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->setOnSelectCommentListener(Lcom/startapps/crossx/view/adapter/CommentsAdapter$OnSelectCommentListener;)V

    .line 120
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 121
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 122
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->textComment:Landroid/widget/EditText;

    new-instance v0, Lcom/startapps/crossx/modules/comments/CommentsActivity$2;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity$2;-><init>(Lcom/startapps/crossx/modules/comments/CommentsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    invoke-interface {p1}, Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;->init()V

    .line 138
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->presenter:Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;

    invoke-interface {p1}, Lcom/startapps/crossx/classes/comments/CommentsContract$Presenter;->loadMoreResults()V

    return-void

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->finish()V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 286
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mActionMode:Landroid/view/ActionMode;

    .line 288
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v0, 0x7f0e0006

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->clearSelections()V

    const/4 p1, 0x0

    .line 280
    iput-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onErrorLoadComment()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onErrorPostComment(Ljava/lang/String;)V
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->btSend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->btSend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 241
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onFinishLoadComment()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onFinishPostComment(Lcom/startapps/crossx/model/CommentModel;)V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->btSend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->textComment:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->addLastData(Lcom/startapps/crossx/model/CommentModel;)V

    .line 224
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 226
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mTimeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/TimeLineModel;->getCommentCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 228
    iget-object v1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mTimeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {v1, p1}, Lcom/startapps/crossx/model/TimeLineModel;->addFirstComment(Lcom/startapps/crossx/model/CommentModel;)V

    .line 229
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mTimeLineModel:Lcom/startapps/crossx/model/TimeLineModel;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/model/TimeLineModel;->setCommentCount(I)V

    :cond_0
    return-void
.end method

.method public onInitLoadComment()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBarLoad:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onInitPostComment()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->hideKeyboard()V

    .line 210
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->btSend:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/modules/comments/CommentsActivity;->back()V

    .line 162
    :goto_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSelectComent(Lcom/startapps/crossx/model/CommentModel;I)V
    .locals 1

    .line 257
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mActionMode:Landroid/view/ActionMode;

    if-nez p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/Toolbar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->clearSelections()V

    .line 262
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->selectItem(I)V

    .line 264
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mActionMode:Landroid/view/ActionMode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " item selecionado"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 267
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method

.method public updateItems(Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;IZ)V"
        }
    .end annotation

    .line 168
    iget-boolean p2, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->reload:Z

    if-eqz p2, :cond_0

    .line 169
    iget-object p2, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->clearData()V

    const/4 p2, 0x0

    .line 170
    iput-boolean p2, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->reload:Z

    .line 173
    :cond_0
    iget-object p2, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getItemCount()I

    move-result p2

    .line 174
    iget-object p3, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p3, p1}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->addData(Ljava/util/List;)V

    if-nez p2, :cond_1

    .line 177
    iget-object p1, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->listComments:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/startapps/crossx/modules/comments/CommentsActivity;->commentsAdapter:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/adapter/CommentsAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method
