USE [Rappelz_User]
GO
INSERT [dbo].[r_ExpDungeon] ([_name], [nameKey], [_description], [descriptionKey], [requiredStamina], [limitTime], [sceneName], [startxPosition], [startyPosition], [startzPosition], [startyRotation], [startDelayTime], [exitDelayTime], [waveIntervalTime], [safeRevivalWaitingTime], [sweepExpRewardFactor], [guideImageName], [guideTitleKey], [startGuideContentKey], [lakChargeMonsterAppearContentKey], [lakChargeMonsterKillContentKey], [locationId], [x], [y], [z], [xSize], [ySize], [zSize]) VALUES (N'베어 로드', N'EDUN_NAME_1', N'수련 동굴', N'EDUN_DESC_1', 10, 1800, N'Dun06_Trainee', 28.82, 25.18, 73.04, 45, 3, 10, 2, 30, 2, N'frm_guide_npc01', N'EDUN_NPC_1', N'EDUN_GOBJ_1', N'EDUN_LAK_1', N'EDUN_LAK_2', 108, 6, 0, 50, 50, 500, 50)
GO
