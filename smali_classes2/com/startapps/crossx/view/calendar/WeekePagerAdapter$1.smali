.class Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;
.super Ljava/lang/Object;
.source "WeekePagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

.field final synthetic val$dateTime:Lcom/startapps/crossx/view/calendar/DateTime;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;Lcom/startapps/crossx/view/calendar/DateTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;->this$0:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;->val$dateTime:Lcom/startapps/crossx/view/calendar/DateTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;->this$0:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->-$$Nest$fgetlistener(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;)Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;->this$0:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->-$$Nest$mresetDates(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;)V

    .line 86
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;->val$dateTime:Lcom/startapps/crossx/view/calendar/DateTime;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/calendar/DateTime;->setIsSelected(Z)V

    .line 87
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;->this$0:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

    invoke-static {p1}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->-$$Nest$fgetlistener(Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;)Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;->val$dateTime:Lcom/startapps/crossx/view/calendar/DateTime;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/calendar/DateTime;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$OnWeekePagerListener;->onDateCLick(Ljava/util/Date;)V

    .line 89
    iget-object p1, p0, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter$1;->this$0:Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/calendar/WeekePagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
