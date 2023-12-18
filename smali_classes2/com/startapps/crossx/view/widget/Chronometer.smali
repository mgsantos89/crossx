.class public Lcom/startapps/crossx/view/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/widget/Chronometer$Handle;,
        Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;,
        Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Chronometer"

.field private static final TICK_WHAT:I = 0x2


# instance fields
.field private mBase:J

.field private mDecrescent:Z

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mHandle:Lcom/startapps/crossx/view/widget/Chronometer$Handle;

.field private mLogged:Z

.field private mOnChronometerTickListener:Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;

.field private mRecycle:Ljava/lang/StringBuilder;

.field private mRunning:Z

.field private mStarted:Z

.field private mVisible:Z

.field private timer:Ljava/util/Timer;

.field private timerTask:Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRunning(Lcom/startapps/crossx/view/widget/Chronometer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateText(Lcom/startapps/crossx/view/widget/Chronometer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/startapps/crossx/view/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/Chronometer;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 122
    new-instance v0, Lcom/startapps/crossx/view/widget/Chronometer$Handle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/view/widget/Chronometer$Handle;-><init>(Lcom/startapps/crossx/view/widget/Chronometer;Lcom/startapps/crossx/view/widget/Chronometer$Handle-IA;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mHandle:Lcom/startapps/crossx/view/widget/Chronometer$Handle;

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mBase:J

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/startapps/crossx/view/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method private declared-synchronized updateRunning()V
    .locals 8

    monitor-enter p0

    .line 275
    :try_start_0
    iget-boolean v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 277
    :goto_0
    iget-boolean v1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mRunning:Z

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 279
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->timer:Ljava/util/Timer;

    .line 280
    new-instance v3, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;-><init>(Lcom/startapps/crossx/view/widget/Chronometer;Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask-IA;)V

    iput-object v3, p0, Lcom/startapps/crossx/view/widget/Chronometer;->timerTask:Lcom/startapps/crossx/view/widget/Chronometer$MyTimerTask;

    .line 281
    iget-object v2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->timer:Ljava/util/Timer;

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_1

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 288
    :goto_1
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateText(J)V
    .locals 4

    const-string p1, "Illegal format string: "

    monitor-enter p0

    .line 243
    :try_start_0
    iget-boolean p2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mStarted:Z

    const-wide/16 v0, 0x3e8

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mDecrescent:Z

    if-eqz p2, :cond_0

    iget-wide v2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mBase:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mBase:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mBase:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mBase:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mBase:J

    .line 249
    :goto_0
    div-long/2addr v2, v0

    .line 250
    iget-object p2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mRecycle:Ljava/lang/StringBuilder;

    invoke-static {p2, v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p2

    .line 252
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 253
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 255
    :cond_2
    iput-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatterLocale:Ljava/util/Locale;

    .line 256
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 259
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatterArgs:[Ljava/lang/Object;

    aput-object p2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :try_start_1
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatter:Ljava/util/Formatter;

    iget-object v2, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 262
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 264
    :catch_0
    :try_start_2
    iget-boolean v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mLogged:Z

    if-nez v0, :cond_4

    const-string v0, "Chronometer"

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 266
    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mLogged:Z

    .line 271
    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/widget/Chronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method dispatchChronometerTick()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mOnChronometerTickListener:Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0, p0}, Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Lcom/startapps/crossx/view/widget/Chronometer;)V

    :cond_0
    return-void
.end method

.method public getBase()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mBase:J

    return-wide v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOnChronometerTickListener()Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mOnChronometerTickListener:Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mStarted:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 228
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mVisible:Z

    .line 230
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 300
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 301
    const-class v0, Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 306
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 307
    const-class v0, Lcom/startapps/crossx/view/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 236
    :goto_0
    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mVisible:Z

    .line 237
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public setBase(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mBase:J

    .line 136
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/Chronometer;->dispatchChronometerTick()V

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/widget/Chronometer;->updateText(J)V

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 1

    .line 160
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mFormatBuilder:Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public setOnChronometerTickListener(Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mOnChronometerTickListener:Lcom/startapps/crossx/view/widget/Chronometer$OnChronometerTickListener;

    return-void
.end method

.method public setStarted(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mStarted:Z

    .line 223
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public setmDecrescent(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mDecrescent:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mStarted:Z

    .line 201
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/Chronometer;->updateRunning()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/Chronometer;->mStarted:Z

    .line 213
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/Chronometer;->updateRunning()V

    return-void
.end method
