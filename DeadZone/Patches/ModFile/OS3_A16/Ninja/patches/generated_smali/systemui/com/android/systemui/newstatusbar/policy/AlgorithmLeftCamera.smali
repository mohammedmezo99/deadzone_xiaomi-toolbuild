.class public Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;
.super Lcom/android/systemui/newstatusbar/policy/ElementPositionAlgorithm;


# direct methods
.method public constructor <init>(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/newstatusbar/policy/ElementPositionAlgorithm;-><init>(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V

    return-void
.end method


# virtual methods
.method public checkMeasuredWidth(Ljava/util/ArrayList;Z)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/newstatusbar/layouts/SingleLayout;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->getSummWidth(ILjava/util/ArrayList;Z)[I

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    const/4 v6, 0x0

    aget v7, v4, v6

    const/4 v8, 0x1

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->isHole(Z)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v7, :cond_1

    new-array v11, v8, [I

    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/stream/IntStream;->sum()I

    move-result v12

    aput v12, v11, v6

    goto :goto_1

    :cond_1
    new-array v11, v10, [I

    aget v12, v4, v8

    aput v12, v11, v6

    aget v12, v4, v10

    aput v12, v11, v8

    :goto_1
    if-eqz v7, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    move v12, v8

    :goto_2
    invoke-virtual {v5}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->getWidth()I

    move-result v13

    if-eqz v9, :cond_3

    move v14, v8

    goto :goto_3

    :cond_3
    move v14, v10

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->getWidthCorrection(Z)I

    move-result v15

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iget v14, v14, Lcom/android/systemui/newstatusbar/controllers/ElementController;->mCameraWidth:I

    if-eqz v9, :cond_4

    move v15, v14

    goto :goto_4

    :cond_4
    move v15, v6

    :goto_4
    sub-int v15, v13, v15

    array-length v3, v11

    move v10, v6

    :goto_5
    if-ge v10, v3, :cond_a

    aget v18, v11, v10

    if-ne v12, v8, :cond_5

    if-eqz v9, :cond_5

    div-int/lit8 v19, v13, 0x2

    aget v20, v4, v6

    const/16 v17, 0x2

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    sub-int v19, v19, v14

    goto :goto_6

    :cond_5
    div-int/lit8 v19, v13, 0x2

    aget v20, v4, v6

    const/16 v17, 0x2

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    :goto_6
    if-eqz v7, :cond_6

    move/from16 v20, v15

    goto :goto_7

    :cond_6
    move/from16 v20, v19

    :goto_7
    move/from16 v21, v20

    const/16 v20, 0xb

    move/from16 v6, v18

    move/from16 v8, v20

    :goto_8
    move/from16 v20, v3

    move/from16 v3, v21

    if-ge v3, v6, :cond_8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->getSummWidth(ILjava/util/ArrayList;Z)[I

    move-result-object v21

    if-eqz v7, :cond_7

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/stream/IntStream;->sum()I

    move-result v21

    goto :goto_9

    :cond_7
    aget v21, v21, v12

    :goto_9
    move/from16 v6, v21

    move/from16 v21, v3

    move/from16 v3, v20

    goto :goto_8

    :cond_8
    const/16 v2, 0xb

    if-ge v8, v2, :cond_9

    sub-int v21, v3, v6

    const/16 v16, 0x2

    add-int/lit8 v21, v21, -0x2

    goto :goto_a

    :cond_9
    const/16 v16, 0x2

    const/16 v21, 0x7d0

    :goto_a
    move/from16 v17, v21

    move/from16 v2, v17

    invoke-virtual {v0, v2, v8, v12, v1}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->sendMaxWidth(IIILjava/util/ArrayList;)V

    nop

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p2

    move/from16 v3, v20

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method getSummWidth(ILjava/util/ArrayList;Z)[I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/newstatusbar/layouts/SingleLayout;",
            ">;Z)[I"
        }
    .end annotation

    goto :goto_26

    nop

    :goto_0
    goto :goto_22

    :goto_1
    goto :goto_16

    nop

    :goto_2
    goto :goto_2b

    :goto_3
    goto :goto_9

    nop

    :goto_4
    aget v6, v0, v5

    goto :goto_5

    nop

    :goto_5
    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRealMeasuredWidth()I

    move-result v7

    goto :goto_24

    nop

    :goto_6
    const/16 v6, 0xa

    goto :goto_17

    nop

    :goto_7
    invoke-virtual {p0, v3}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->isNeedAnalyseFirstElement(I)Z

    move-result v8

    goto :goto_25

    nop

    :goto_8
    if-gt v3, v6, :cond_0

    goto :goto_1b

    :cond_0
    goto :goto_1c

    nop

    :goto_9
    const/4 v6, 0x1

    goto :goto_20

    nop

    :goto_a
    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRealMeasuredWidth()I

    move-result v6

    goto :goto_19

    nop

    :goto_b
    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPrior()I

    move-result v4

    goto :goto_13

    nop

    :goto_c
    add-int/2addr v7, v5

    goto :goto_2a

    nop

    :goto_d
    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRealMeasuredWidth()I

    move-result v5

    :goto_e
    goto :goto_c

    nop

    :goto_f
    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPosition()I

    move-result v3

    goto :goto_b

    nop

    :goto_10
    const/4 v5, 0x2

    goto :goto_4

    nop

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_27

    nop

    :goto_12
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_11

    nop

    :goto_13
    const/4 v5, 0x0

    goto :goto_28

    nop

    :goto_14
    goto :goto_2b

    :goto_15
    goto :goto_1f

    nop

    :goto_16
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :goto_17
    if-ge v3, v6, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_23

    nop

    :goto_18
    if-lt v3, v6, :cond_3

    goto :goto_1b

    :cond_3
    goto :goto_1a

    nop

    :goto_19
    aput v6, v0, v5

    goto :goto_14

    nop

    :goto_1a
    goto :goto_3

    :goto_1b
    goto :goto_10

    nop

    :goto_1c
    const/16 v6, 0x1e

    goto :goto_18

    nop

    :goto_1d
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_21

    nop

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    goto :goto_12

    nop

    :goto_1f
    if-lt v4, p1, :cond_4

    goto :goto_2b

    :cond_4
    goto :goto_6

    nop

    :goto_20
    aget v7, v0, v6

    goto :goto_7

    nop

    :goto_21
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    goto :goto_1e

    nop

    :goto_23
    const/16 v6, 0x14

    goto :goto_8

    nop

    :goto_24
    add-int/2addr v6, v7

    goto :goto_29

    nop

    :goto_25
    if-nez v8, :cond_5

    goto :goto_e

    :cond_5
    goto :goto_d

    nop

    :goto_26
    const/4 v0, 0x3

    goto :goto_1d

    nop

    :goto_27
    check-cast v2, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;

    goto :goto_f

    nop

    :goto_28
    if-eqz v3, :cond_6

    goto :goto_15

    :cond_6
    goto :goto_a

    nop

    :goto_29
    aput v6, v0, v5

    goto :goto_2

    nop

    :goto_2a
    aput v7, v0, v6

    :goto_2b
    goto :goto_0

    nop
.end method

.method isDrip()Z
    .registers 2

    goto :goto_0

    nop

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :goto_1
    return v0
.end method

.method protected isHole(Z)Z
    .registers 4

    goto :goto_13

    nop

    :goto_0
    if-eqz p1, :cond_0

    goto :goto_12

    :cond_0
    goto :goto_b

    nop

    :goto_1
    if-nez v0, :cond_1

    goto :goto_12

    :cond_1
    goto :goto_e

    nop

    :goto_2
    if-nez v0, :cond_2

    goto :goto_12

    :cond_2
    goto :goto_15

    nop

    :goto_3
    if-lez v0, :cond_3

    goto :goto_a

    :cond_3
    :goto_4
    goto :goto_0

    nop

    :goto_5
    const/4 v0, 0x0

    :goto_6
    goto :goto_7

    nop

    :goto_7
    return v0

    :goto_8
    iget-object v0, v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;->notCalculateHoleInLine:Lcom/android/systemui/newstatusbar/controllers/ElementController$NotCalculateHoleInLine;

    goto :goto_16

    nop

    :goto_9
    if-ne v0, v1, :cond_4

    goto :goto_12

    :cond_4
    :goto_a
    goto :goto_10

    nop

    :goto_b
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_c

    nop

    :goto_c
    iget-object v0, v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;->notCalculateHoleInLine:Lcom/android/systemui/newstatusbar/controllers/ElementController$NotCalculateHoleInLine;

    goto :goto_f

    nop

    :goto_d
    iget-boolean v0, v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;->isHole:Z

    goto :goto_2

    nop

    :goto_e
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_d

    nop

    :goto_f
    sget-object v1, Lcom/android/systemui/newstatusbar/controllers/ElementController$NotCalculateHoleInLine;->bottomLine:Lcom/android/systemui/newstatusbar/controllers/ElementController$NotCalculateHoleInLine;

    goto :goto_9

    nop

    :goto_10
    const/4 v0, 0x1

    goto :goto_11

    nop

    :goto_11
    goto :goto_6

    :goto_12
    goto :goto_5

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->isPortrite()Z

    move-result v0

    goto :goto_1

    nop

    :goto_14
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_8

    nop

    :goto_15
    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    goto :goto_14

    nop

    :goto_16
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/controllers/ElementController$NotCalculateHoleInLine;->ordinal()I

    move-result v0

    goto :goto_3

    nop
.end method

.method public isNeedAnalyseFirstElement(I)Z
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iget-object v1, v1, Lcom/android/systemui/newstatusbar/controllers/ElementController;->leftElementPosition:Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->isDoubleStatusBar()Z

    move-result v2

    const/16 v3, 0x15

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_6

    goto :goto_0

    :cond_0
    if-ne p1, v4, :cond_6

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-ne p1, v4, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->isHole(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;->twoElemOnRight:Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;

    if-eq v1, v5, :cond_6

    if-ne p1, v4, :cond_3

    sget-object v5, Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;->upperElemOnLeft:Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;

    if-eq v1, v5, :cond_4

    sget-object v5, Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;->twoElemOnLeft:Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;

    if-eq v1, v5, :cond_4

    :cond_3
    if-ne p1, v3, :cond_5

    sget-object v3, Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;->bottomElemOnLeft:Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;->twoElemOnLeft:Lcom/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition;

    if-eq v1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    :cond_5
    :goto_2
    return v4

    :cond_6
    return v4
.end method

.method sendMaxWidth(IIILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/newstatusbar/layouts/SingleLayout;",
            ">;)V"
        }
    .end annotation

    goto :goto_18

    nop

    :goto_0
    move v4, v5

    :goto_1
    goto :goto_9

    nop

    :goto_2
    const/16 v4, 0x7d0

    :goto_3
    goto :goto_26

    nop

    :goto_4
    if-nez p3, :cond_0

    goto :goto_17

    :cond_0
    goto :goto_12

    nop

    :goto_5
    goto :goto_30

    :goto_6
    goto :goto_2f

    nop

    :goto_7
    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPosition()I

    move-result v2

    goto :goto_31

    nop

    :goto_8
    const/4 v5, 0x1

    goto :goto_4

    nop

    :goto_9
    if-nez v4, :cond_1

    goto :goto_2e

    :cond_1
    goto :goto_14

    nop

    :goto_a
    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPrior()I

    move-result v3

    goto :goto_32

    nop

    :goto_b
    if-lt v3, p2, :cond_2

    goto :goto_6

    :cond_2
    goto :goto_1c

    nop

    :goto_c
    if-eq p3, v7, :cond_3

    goto :goto_2a

    :cond_3
    goto :goto_e

    nop

    :goto_d
    move v5, p1

    goto :goto_24

    nop

    :goto_e
    move v7, v5

    goto :goto_29

    nop

    :goto_f
    if-gt v4, v3, :cond_4

    goto :goto_28

    :cond_4
    goto :goto_15

    nop

    :goto_10
    goto :goto_2e

    :goto_11
    goto :goto_a

    nop

    :goto_12
    invoke-virtual {p0, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->isRightPosition(I)Z

    move-result v6

    goto :goto_1b

    nop

    :goto_13
    if-eqz v3, :cond_5

    goto :goto_11

    :cond_5
    goto :goto_34

    nop

    :goto_14
    if-eq v3, p2, :cond_6

    goto :goto_25

    :cond_6
    goto :goto_d

    nop

    :goto_15
    move v4, v3

    goto :goto_27

    nop

    :goto_16
    if-eq v6, v7, :cond_7

    goto :goto_1

    :cond_7
    :goto_17
    goto :goto_0

    nop

    :goto_18
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    goto :goto_2b

    nop

    :goto_1a
    check-cast v1, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;

    goto :goto_7

    nop

    :goto_1b
    const/4 v7, 0x2

    goto :goto_c

    nop

    :goto_1c
    const/16 v5, 0x7d0

    goto :goto_5

    nop

    :goto_1d
    move v7, v4

    :goto_1e
    goto :goto_16

    nop

    :goto_1f
    return-void

    :goto_20
    if-nez v1, :cond_8

    goto :goto_22

    :cond_8
    goto :goto_23

    nop

    :goto_21
    goto :goto_19

    :goto_22
    goto :goto_1f

    nop

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1a

    nop

    :goto_24
    goto :goto_30

    :goto_25
    goto :goto_b

    nop

    :goto_26
    invoke-virtual {v1, v4}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->setMaxMeasureWidth(I)V

    goto :goto_10

    nop

    :goto_27
    goto :goto_3

    :goto_28
    goto :goto_2

    nop

    :goto_29
    goto :goto_1e

    :goto_2a
    goto :goto_1d

    nop

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    goto :goto_20

    nop

    :goto_2c
    iget v3, v3, Lcom/android/systemui/newstatusbar/controllers/ElementController;->leftWidthToCamera:I

    goto :goto_33

    nop

    :goto_2d
    invoke-virtual {v1, v5}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->setMaxMeasureWidth(I)V

    :goto_2e
    goto :goto_21

    nop

    :goto_2f
    const/4 v5, 0x1

    :goto_30
    goto :goto_2d

    nop

    :goto_31
    invoke-virtual {p0, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->isNeedAnalyseFirstElement(I)Z

    move-result v3

    goto :goto_13

    nop

    :goto_32
    const/4 v4, 0x0

    goto :goto_8

    nop

    :goto_33
    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRealMeasuredWidth()I

    move-result v4

    goto :goto_f

    nop

    :goto_34
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmLeftCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_2c

    nop
.end method
