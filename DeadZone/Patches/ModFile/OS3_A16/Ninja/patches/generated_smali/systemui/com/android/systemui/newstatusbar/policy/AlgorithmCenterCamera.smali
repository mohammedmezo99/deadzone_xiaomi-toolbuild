.class public Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;
.super Lcom/android/systemui/newstatusbar/policy/ElementPositionAlgorithm;


# direct methods
.method public constructor <init>(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/newstatusbar/policy/ElementPositionAlgorithm;-><init>(Lcom/android/systemui/newstatusbar/layouts/MainLayout;)V

    return-void
.end method


# virtual methods
.method public checkMeasuredWidth(Ljava/util/ArrayList;Z)V
    .registers 23
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

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->getSummWidth(ILjava/util/ArrayList;Z)[I

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    const/4 v6, 0x0

    aget v7, v4, v6

    const/4 v8, 0x1

    if-nez v7, :cond_0

    iget-boolean v7, v0, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->isIslandShown:Z

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    const/4 v9, 0x2

    if-eqz v7, :cond_1

    new-array v10, v8, [I

    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/IntStream;->sum()I

    move-result v11

    aput v11, v10, v6

    goto :goto_1

    :cond_1
    new-array v10, v9, [I

    aget v11, v4, v8

    aput v11, v10, v6

    aget v11, v4, v9

    aput v11, v10, v8

    :goto_1
    if-eqz v7, :cond_2

    move v11, v6

    goto :goto_2

    :cond_2
    move v11, v8

    :goto_2
    invoke-virtual {v5}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->getWidth()I

    move-result v12

    invoke-virtual {v0, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->getWidthCorrection(Z)I

    move-result v13

    mul-int/2addr v13, v9

    sub-int/2addr v12, v13

    array-length v13, v10

    move v14, v6

    :goto_3
    if-ge v14, v13, :cond_9

    aget v15, v10, v14

    div-int/lit8 v16, v12, 0x2

    aget v17, v4, v6

    div-int/lit8 v17, v17, 0x2

    sub-int v6, v16, v17

    iget-boolean v9, v0, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->isIslandShown:Z

    if-eqz v9, :cond_4

    if-ne v11, v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->getLeftWidth()I

    move-result v9

    goto :goto_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->getRightWidth()I

    move-result v9

    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->getWidthCorrection(Z)I

    move-result v17

    sub-int v9, v9, v17

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_4
    if-eqz v7, :cond_5

    move v9, v12

    goto :goto_5

    :cond_5
    move v9, v6

    :goto_5
    const/16 v17, 0xb

    move/from16 v8, v17

    :goto_6
    if-ge v9, v15, :cond_7

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->getSummWidth(ILjava/util/ArrayList;Z)[I

    move-result-object v18

    if-eqz v7, :cond_6

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/stream/IntStream;->sum()I

    move-result v18

    goto :goto_7

    :cond_6
    aget v18, v18, v11

    :goto_7
    move/from16 v15, v18

    goto :goto_6

    :cond_7
    if-ge v8, v3, :cond_8

    sub-int v18, v9, v15

    const/16 v16, 0x2

    add-int/lit8 v18, v18, -0x2

    goto :goto_8

    :cond_8
    const/16 v16, 0x2

    const/16 v18, 0x7d0

    :goto_8
    move/from16 v19, v18

    move/from16 v3, v19

    invoke-virtual {v0, v3, v8, v11, v1}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->sendMaxWidth(IIILjava/util/ArrayList;)V

    nop

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v16

    const/16 v3, 0xb

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method getSummWidth(ILjava/util/ArrayList;Z)[I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/newstatusbar/layouts/SingleLayout;",
            ">;Z)[I"
        }
    .end annotation

    goto :goto_22

    nop

    :goto_0
    invoke-virtual {v4}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRealMeasuredWidth()I

    move-result v8

    goto :goto_9

    nop

    :goto_1
    if-ne v3, v4, :cond_0

    goto :goto_18

    :cond_0
    :goto_2
    goto :goto_2e

    nop

    :goto_3
    aput v3, v0, v5

    :goto_4
    goto :goto_c

    nop

    :goto_5
    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    goto :goto_2d

    nop

    :goto_6
    if-nez v4, :cond_2

    goto :goto_12

    :cond_2
    goto :goto_26

    nop

    :goto_7
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_2b

    nop

    :goto_8
    invoke-virtual {v4}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRealMeasuredWidth()I

    move-result v9

    goto :goto_36

    nop

    :goto_9
    aput v8, v0, v5

    goto :goto_1b

    nop

    :goto_a
    const/4 v5, 0x2

    goto :goto_24

    nop

    :goto_b
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    goto :goto_34

    nop

    :goto_c
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :goto_d
    iget-object v3, v3, Lcom/android/systemui/newstatusbar/controllers/ElementController;->centerElementPosition:Lcom/android/systemui/newstatusbar/controllers/ElementController$CenterElementPosition;

    goto :goto_28

    nop

    :goto_e
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_b

    nop

    :goto_f
    const/16 v5, 0x14

    goto :goto_29

    nop

    :goto_10
    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    goto :goto_25

    nop

    :goto_11
    goto :goto_1a

    :goto_12
    goto :goto_10

    nop

    :goto_13
    const/4 v5, 0x0

    goto :goto_6

    nop

    :goto_14
    check-cast v4, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;

    goto :goto_2a

    nop

    :goto_15
    invoke-virtual {v4}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPrior()I

    move-result v7

    goto :goto_2c

    nop

    :goto_16
    aput v8, v0, v5

    goto :goto_3c

    nop

    :goto_17
    if-eq v3, v4, :cond_4

    goto :goto_4

    :cond_4
    :goto_18
    goto :goto_7

    nop

    :goto_19
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    goto :goto_23

    nop

    :goto_1b
    goto :goto_3a

    :goto_1c
    goto :goto_1f

    nop

    :goto_1d
    iget-object v3, v3, Lcom/android/systemui/newstatusbar/controllers/ElementController;->centerElementPosition:Lcom/android/systemui/newstatusbar/controllers/ElementController$CenterElementPosition;

    goto :goto_38

    nop

    :goto_1e
    aget v8, v0, v5

    goto :goto_30

    nop

    :goto_1f
    if-lt v7, p1, :cond_5

    goto :goto_3a

    :cond_5
    goto :goto_35

    nop

    :goto_20
    goto :goto_3d

    :goto_21
    goto :goto_a

    nop

    :goto_22
    const/4 v0, 0x3

    goto :goto_e

    nop

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    goto :goto_13

    nop

    :goto_24
    aget v8, v0, v5

    goto :goto_8

    nop

    :goto_25
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->isDrip()Z

    move-result v3

    goto :goto_5

    nop

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_14

    nop

    :goto_27
    const/4 v5, 0x1

    goto :goto_1e

    nop

    :goto_28
    sget-object v4, Lcom/android/systemui/newstatusbar/controllers/ElementController$CenterElementPosition;->upperLine:Lcom/android/systemui/newstatusbar/controllers/ElementController$CenterElementPosition;

    goto :goto_17

    nop

    :goto_29
    if-gt v6, v5, :cond_6

    goto :goto_21

    :cond_6
    goto :goto_32

    nop

    :goto_2a
    invoke-virtual {v4}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPosition()I

    move-result v6

    goto :goto_15

    nop

    :goto_2b
    iget v3, v3, Lcom/android/systemui/newstatusbar/controllers/ElementController;->mCameraWidth:I

    goto :goto_3

    nop

    :goto_2c
    if-eqz v6, :cond_7

    goto :goto_1c

    :cond_7
    goto :goto_0

    nop

    :goto_2d
    if-nez p3, :cond_8

    goto :goto_2

    :cond_8
    goto :goto_31

    nop

    :goto_2e
    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    goto :goto_3b

    nop

    :goto_2f
    if-lt v6, v5, :cond_a

    goto :goto_21

    :cond_a
    goto :goto_20

    nop

    :goto_30
    invoke-virtual {v4}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getRealMeasuredWidth()I

    move-result v9

    goto :goto_33

    nop

    :goto_31
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_1d

    nop

    :goto_32
    const/16 v5, 0x1e

    goto :goto_2f

    nop

    :goto_33
    add-int/2addr v8, v9

    goto :goto_39

    nop

    :goto_34
    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->isDoubleStatusBar()Z

    move-result v2

    goto :goto_19

    nop

    :goto_35
    const/16 v5, 0xa

    goto :goto_37

    nop

    :goto_36
    add-int/2addr v8, v9

    goto :goto_16

    nop

    :goto_37
    if-ge v6, v5, :cond_b

    goto :goto_3d

    :cond_b
    goto :goto_f

    nop

    :goto_38
    sget-object v4, Lcom/android/systemui/newstatusbar/controllers/ElementController$CenterElementPosition;->bottomLine:Lcom/android/systemui/newstatusbar/controllers/ElementController$CenterElementPosition;

    goto :goto_1

    nop

    :goto_39
    aput v8, v0, v5

    :goto_3a
    goto :goto_11

    nop

    :goto_3b
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_d

    nop

    :goto_3c
    goto :goto_3a

    :goto_3d
    goto :goto_27

    nop
.end method

.method isDrip()Z
    .registers 2

    goto :goto_0

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->isPortrite()Z

    move-result v0

    goto :goto_7

    nop

    :goto_1
    if-nez v0, :cond_0

    goto :goto_9

    :cond_0
    goto :goto_a

    nop

    :goto_2
    return v0

    :goto_3
    const/4 v0, 0x0

    :goto_4
    goto :goto_2

    nop

    :goto_5
    iget-boolean v0, v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;->isDrip:Z

    goto :goto_1

    nop

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_5

    nop

    :goto_7
    if-nez v0, :cond_1

    goto :goto_9

    :cond_1
    goto :goto_6

    nop

    :goto_8
    goto :goto_4

    :goto_9
    goto :goto_3

    nop

    :goto_a
    const/4 v0, 0x1

    goto :goto_8

    nop
.end method

.method protected isHole(Z)Z
    .registers 3

    goto :goto_1

    nop

    :goto_0
    return v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    nop
.end method

.method protected isNeedAnalyseFirstElement(I)Z
    .registers 3

    goto :goto_0

    nop

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    nop

    :goto_1
    return v0
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

    goto :goto_22

    nop

    :goto_0
    check-cast v1, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;

    goto :goto_25

    nop

    :goto_1
    goto :goto_b

    :goto_2
    goto :goto_a

    nop

    :goto_3
    if-eq p3, v7, :cond_0

    goto :goto_2

    :cond_0
    goto :goto_f

    nop

    :goto_4
    invoke-virtual {v1, v5}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->setMaxMeasureWidth(I)V

    :goto_5
    goto :goto_1f

    nop

    :goto_6
    move v4, v5

    :goto_7
    goto :goto_13

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    goto :goto_21

    nop

    :goto_a
    move v7, v4

    :goto_b
    goto :goto_14

    nop

    :goto_c
    goto :goto_17

    :goto_d
    goto :goto_18

    nop

    :goto_e
    if-eq v3, p2, :cond_1

    goto :goto_d

    :cond_1
    goto :goto_24

    nop

    :goto_f
    move v7, v5

    goto :goto_1

    nop

    :goto_10
    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPrior()I

    move-result v3

    goto :goto_1d

    nop

    :goto_11
    invoke-virtual {p0, v2}, Lcom/android/systemui/newstatusbar/policy/AlgorithmCenterCamera;->isRightPosition(I)Z

    move-result v6

    goto :goto_12

    nop

    :goto_12
    const/4 v7, 0x2

    goto :goto_3

    nop

    :goto_13
    if-nez v4, :cond_2

    goto :goto_5

    :cond_2
    goto :goto_e

    nop

    :goto_14
    if-eq v6, v7, :cond_3

    goto :goto_7

    :cond_3
    :goto_15
    goto :goto_6

    nop

    :goto_16
    const/4 v5, 0x1

    :goto_17
    goto :goto_4

    nop

    :goto_18
    if-lt v3, p2, :cond_4

    goto :goto_1b

    :cond_4
    goto :goto_1e

    nop

    :goto_19
    if-nez p3, :cond_5

    goto :goto_15

    :cond_5
    goto :goto_11

    nop

    :goto_1a
    goto :goto_17

    :goto_1b
    goto :goto_16

    nop

    :goto_1c
    const/4 v5, 0x1

    goto :goto_19

    nop

    :goto_1d
    const/4 v4, 0x0

    goto :goto_1c

    nop

    :goto_1e
    const/16 v5, 0x7d0

    goto :goto_1a

    nop

    :goto_1f
    goto :goto_23

    :goto_20
    goto :goto_26

    nop

    :goto_21
    if-nez v1, :cond_6

    goto :goto_20

    :cond_6
    goto :goto_8

    nop

    :goto_22
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    goto :goto_9

    nop

    :goto_24
    move v5, p1

    goto :goto_c

    nop

    :goto_25
    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->getPosition()I

    move-result v2

    goto :goto_10

    nop

    :goto_26
    return-void
.end method
