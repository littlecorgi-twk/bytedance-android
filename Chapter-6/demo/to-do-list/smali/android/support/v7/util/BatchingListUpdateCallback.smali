.class public Landroid/support/v7/util/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "BatchingListUpdateCallback.java"

# interfaces
.implements Landroid/support/v7/util/ListUpdateCallback;


# static fields
.field private static final TYPE_ADD:I = 0x1

.field private static final TYPE_CHANGE:I = 0x3

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPayload:Ljava/lang/Object;

.field mLastEventPosition:I

.field mLastEventType:I

.field final mWrapped:Landroid/support/v7/util/ListUpdateCallback;


# direct methods
.method public constructor <init>(Landroid/support/v7/util/ListUpdateCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v7/util/ListUpdateCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 43
    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    .line 48
    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .locals 4

    .line 56
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    iget-object v3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/util/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/util/ListUpdateCallback;->onRemoved(II)V

    .line 65
    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    invoke-interface {v0, v1, v2}, Landroid/support/v7/util/ListUpdateCallback;->onInserted(II)V

    .line 62
    nop

    .line 70
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 72
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 110
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    add-int v0, p1, p2

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    if-ne v0, p3, :cond_0

    .line 114
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, v1

    .line 115
    .local v0, "previousEnd":I
    iget v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 116
    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 117
    return-void

    .line 119
    .end local v0    # "previousEnd":I
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 120
    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 121
    iput p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 122
    iput-object p3, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    .line 123
    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 124
    return-void
.end method

.method public onInserted(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 76
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    iget v2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_0

    .line 78
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 79
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 83
    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 84
    iput p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 85
    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 86
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 104
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 105
    iget-object v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mWrapped:Landroid/support/v7/util/ListUpdateCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/util/ListUpdateCallback;->onMoved(II)V

    .line 106
    return-void
.end method

.method public onRemoved(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 90
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    add-int v2, p1, p2

    if-gt v0, v2, :cond_0

    .line 92
    iget v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 93
    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 94
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 97
    iput p1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventPosition:I

    .line 98
    iput p2, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventCount:I

    .line 99
    iput v1, p0, Landroid/support/v7/util/BatchingListUpdateCallback;->mLastEventType:I

    .line 100
    return-void
.end method
