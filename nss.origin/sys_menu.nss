$Revision: 19 $

//=============================================================================//
//����˥�`��
//=============================================================================//
chapter main
{
	if($GameClose){return;}

	//�ﳬ�٤���Ή��w��
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

//	$LOCAL_extra_lock=false;

	CreateTexture("video1",0,center,middle,"VIDEO");
	CreateTexture("video2", 1000, center, middle, "VIDEO");
	Fade("video2", 0, 0, null, true);

	//������
	CreateTexture("me����", 10, 0, 0, "cg/sys/menu/��˥�`�\�Хå�.png");

	//���x�k֫
	$MenuCancelX=636;
	$MenuCancelY=89;

	$MenuX=636;

	$MenuExtraY=109;
	$MenuEraseY=129;
	$MenuSendY=149;
	$MenuSkipY=169;
	$MenuSuperY=189;
	$MenuBackY=209;
	$MenuLogY=229;
	$MenuSaveY=249;
	$MenuLoadY=269;
	$MenuQuickY=289;
	$MenuPieceY=309;
	$MenuFullY=329;
	$MenuConfigY=349;
	$MenuTitleY=369;
	$MenuExitY=389;

	CreateChoice("me����󥻥�");
	SetAlias("me����󥻥�", "me����󥻥�");
	CreateTexture("me����󥻥�img",20,$MenuCancelX,$MenuCancelY,"cg/sys/menu/001-����󥻥�.png");
	CreateTexture("me����󥻥�/MouseUsual/hit",20,$MenuCancelX,$MenuCancelY,"cg/sys/menu/001-����󥻥�.png");
	CreateTexture("me����󥻥�/MouseOver/img",20,$MenuCancelX,$MenuCancelY,"cg/sys/menu/002-����󥻥�.png");
	CreateTexture("me����󥻥�/MouseClick/img",20,$MenuCancelX,$MenuCancelY,"cg/sys/menu/003-����󥻥�.png");
	//CreateProcess("me����󥻥�/MouseOver/me����󥻥�ץ�����", 150, 0, 0, "MenuCancelProcessOpen");
	//CreateProcess("me����󥻥�/MouseLeave/me����󥻥�ץ�����", 150, 0, 0, "MenuCancelProcessPause");

	CreateChoice("me�������ȥ�");
	SetAlias("me�������ȥ�", "me�������ȥ�");
	if(!$LOCAL_extra_lock){
		CreateTexture("me�������ȥ�img",20,$MenuX,$MenuExtraY,"cg/sys/menu/001-�øж�ӛ�h.png");
		CreateTexture("me�������ȥ�/MouseUsual/hit",20,$MenuX,$MenuExtraY,"cg/sys/menu/001-�øж�ӛ�h.png");
		CreateTexture("me�������ȥ�/MouseOver/img",20,$MenuX,$MenuExtraY,"cg/sys/menu/002-�øж�ӛ�h.png");
		CreateTexture("me�������ȥ�/MouseClick/img",20,$MenuX,$MenuExtraY,"cg/sys/menu/003-�øж�ӛ�h.png");
		//CreateProcess("me�������ȥ�/MouseOver/me�������ȥ�ץ�����", 150, 0, 0, "MenuExtraProcessOpen");
		//CreateProcess("me�������ȥ�/MouseLeave/me�������ȥ�ץ�����", 150, 0, 0, "MenuExtraProcessPause");
	}else{
		CreateTexture("me�������ȥ�img",20,$MenuX,$MenuExtraY,"cg/sys/menu/000-�øж�ӛ�h.png");
		CreateTexture("me�������ȥ�/MouseUsual/hit",20,$MenuX,$MenuExtraY,"cg/sys/menu/001-�øж�ӛ�h.png");
		Request("me�������ȥ�",UnClickable);
	}

	CreateChoice("me���`��");
	SetAlias("me���`��", "me���`��");
	if(!$SYSTEM_save_lock){
		CreateTexture("me���`��img",20,$MenuX,$MenuSaveY,"cg/sys/menu/001-���`��.png");
		CreateTexture("me���`��/MouseUsual/hit",20,$MenuX,$MenuSaveY,"cg/sys/menu/001-���`��.png");
		CreateTexture("me���`��/MouseOver/img",20,$MenuX,$MenuSaveY,"cg/sys/menu/002-���`��.png");
		CreateTexture("me���`��/MouseClick/img",20,$MenuX,$MenuSaveY,"cg/sys/menu/003-���`��.png");
		//CreateProcess("me���`��/MouseOver/me���`�֥ץ�����", 150, 0, 0, "MenuSaveProcessOpen");
		//CreateProcess("me���`��/MouseLeave/me���`�֥ץ�����", 150, 0, 0, "MenuSaveProcessPause");
	}else{
		CreateTexture("me���`��img",20,$MenuX,$MenuSaveY,"cg/sys/menu/000-���`��.png");
		CreateTexture("me���`��/MouseUsual/hit",20,$MenuX,$MenuSaveY,"cg/sys/menu/001-���`��.png");
		Request("me���`��",UnClickable);
	}

	CreateChoice("me��`��");
	SetAlias("me��`��", "me��`��");
	if(!$SYSTEM_load_lock){
		CreateTexture("me��`��img",20,$MenuX,$MenuLoadY,"cg/sys/menu/001-��`��.png");
		CreateTexture("me��`��/MouseUsual/hit",20,$MenuX,$MenuLoadY,"cg/sys/menu/001-��`��.png");
		CreateTexture("me��`��/MouseOver/img",20,$MenuX,$MenuLoadY,"cg/sys/menu/002-��`��.png");
		CreateTexture("me��`��/MouseClick/img",20,$MenuX,$MenuLoadY,"cg/sys/menu/003-��`��.png");
		//CreateProcess("me��`��/MouseOver/me��`�ɥץ�����", 150, 0, 0, "MenuLoadProcessOpen");
		//CreateProcess("me��`��/MouseLeave/me��`�ɥץ�����", 150, 0, 0, "MenuLoadProcessPause");
	}else{
		CreateTexture("me��`��img",20,$MenuX,$MenuLoadY,"cg/sys/menu/000-��`��.png");
		CreateTexture("me��`��/MouseUsual/hit",20,$MenuX,$MenuLoadY,"cg/sys/menu/001-��`��.png");
		Request("me��`��",UnClickable);
	}

	CreateChoice("me�����å�");
	SetAlias("me�����å�", "me�����å�");
	if(!$SYSTEM_save_lock){
		CreateTexture("me�����å�img",20,$MenuX,$MenuQuickY,"cg/sys/menu/001-�ݤ�.png");
		CreateTexture("me�����å�/MouseUsual/hit",20,$MenuX,$MenuQuickY,"cg/sys/menu/001-�ݤ�.png");
		CreateTexture("me�����å�/MouseOver/img",20,$MenuX,$MenuQuickY,"cg/sys/menu/002-�ݤ�.png");
		CreateTexture("me�����å�/MouseClick/img",20,$MenuX,$MenuQuickY,"cg/sys/menu/003-�ݤ�.png");
		//CreateProcess("me�����å�/MouseOver/me�����å��ץ�����", 150, 0, 0, "MenuQuickProcessOpen");
		//CreateProcess("me�����å�/MouseLeave/me�����å��ץ�����", 150, 0, 0, "MenuQuickProcessPause");
	}else{
		CreateTexture("me�����å�img",20,$MenuX,$MenuQuickY,"cg/sys/menu/000-�ݤ�.png");
		CreateTexture("me�����å�/MouseUsual/hit",20,$MenuX,$MenuQuickY,"cg/sys/menu/001-�ݤ�.png");
		Request("me�����å�",UnClickable);
	}

	CreateChoice("me�ԩ`��");
	SetAlias("me�ԩ`��", "me�ԩ`��");
	if(ExistSave(9998)&&!$SYSTEM_load_lock){
		CreateTexture("me�ԩ`��img",20,$MenuX,$MenuPieceY,"cg/sys/menu/001-�ݤ��_��.png");
		CreateTexture("me�ԩ`��/MouseUsual/hit",20,$MenuX,$MenuPieceY,"cg/sys/menu/001-�ݤ��_��.png");
		CreateTexture("me�ԩ`��/MouseOver/img",20,$MenuX,$MenuPieceY,"cg/sys/menu/002-�ݤ��_��.png");
		CreateTexture("me�ԩ`��/MouseClick/img",20,$MenuX,$MenuPieceY,"cg/sys/menu/003-�ݤ��_��.png");
		//CreateProcess("me�ԩ`��/MouseOver/me�ԩ`���ץ�����", 150, 0, 0, "MenuPieceProcessOpen");
		//CreateProcess("me�ԩ`��/MouseLeave/me�ԩ`���ץ�����", 150, 0, 0, "MenuPieceProcessPause");
	}else{
		CreateTexture("me�ԩ`��img",20,$MenuX,$MenuPieceY,"cg/sys/menu/000-�ݤ��_��.png");
		CreateTexture("me�ԩ`��/MouseUsual/hit",20,$MenuX,$MenuPieceY,"cg/sys/menu/001-�ݤ��_��.png");
		Request("me�ԩ`��",UnClickable);
	}

	CreateChoice("me�����å�");
	SetAlias("me�����å�", "me�����å�");
	if(!$SYSTEM_skip_lock){
		CreateTexture("me�����å�img",20,$MenuX,$MenuSkipY,"cg/sys/menu/001-�����å�.png");
		CreateTexture("me�����å�/MouseUsual/hit",20,$MenuX,$MenuSkipY,"cg/sys/menu/001-�����å�.png");
		CreateTexture("me�����å�/MouseOver/img",20,$MenuX,$MenuSkipY,"cg/sys/menu/002-�����å�.png");
		CreateTexture("me�����å�/MouseClick/img",20,$MenuX,$MenuSkipY,"cg/sys/menu/003-�����å�.png");
		//CreateProcess("me�����å�/MouseOver/me�����åץץ�����", 150, 0, 0, "MenuSkipProcessOpen");
		//CreateProcess("me�����å�/MouseLeave/me�����åץץ�����", 150, 0, 0, "MenuSkipProcessPause");
	}else{
		CreateTexture("me�����å�img",20,$MenuX,$MenuSkipY,"cg/sys/menu/000-�����å�.png");
		CreateTexture("me�����å�/MouseUsual/hit",20,$MenuX,$MenuSkipY,"cg/sys/menu/001-�����å�.png");
		Request("me�����å�",UnClickable);
	}

	CreateChoice("me����");
	SetAlias("me����", "me����");
	if(!$SYSTEM_skip_lock){
		CreateTexture("me����img",20,$MenuX,$MenuSuperY,"cg/sys/menu/001-���٥����å�.png");
		CreateTexture("me����/MouseUsual/hit",20,$MenuX,$MenuSuperY,"cg/sys/menu/001-���٥����å�.png");
		CreateTexture("me����/MouseOver/img",20,$MenuX,$MenuSuperY,"cg/sys/menu/002-���٥����å�.png");
		CreateTexture("me����/MouseClick/img",20,$MenuX,$MenuSuperY,"cg/sys/menu/003-���٥����å�.png");
		//CreateProcess("me����/MouseOver/me���٥ץ�����", 150, 0, 0, "MenuSuperProcessOpen");
		//CreateProcess("me����/MouseLeave/me���٥ץ�����", 150, 0, 0, "MenuSuperProcessPause");
	}else{
		CreateTexture("me����img",20,$MenuX,$MenuSuperY,"cg/sys/menu/000-���٥����å�.png");
		CreateTexture("me����/MouseUsual/hit",20,$MenuX,$MenuSuperY,"cg/sys/menu/001-���٥����å�.png");
		Request("me����",UnClickable);
	}

	CreateChoice("me�Ԅӥ�å��`��");
	SetAlias("me�Ԅӥ�å��`��", "me�Ԅӥ�å��`��");
	if(!$SYSTEM_text_auto_lock){
		CreateTexture("me�Ԅӥ�å��`��img",20,$MenuX,$MenuSendY,"cg/sys/menu/001-�Ԅӥ�å��`��.png");
		CreateTexture("me�Ԅӥ�å��`��/MouseUsual/hit",20,$MenuX,$MenuSendY,"cg/sys/menu/001-�Ԅӥ�å��`��.png");
		CreateTexture("me�Ԅӥ�å��`��/MouseOver/img",20,$MenuX,$MenuSendY,"cg/sys/menu/002-�Ԅӥ�å��`��.png");
		CreateTexture("me�Ԅӥ�å��`��/MouseClick/img",20,$MenuX,$MenuSendY,"cg/sys/menu/003-�Ԅӥ�å��`��.png");
		//CreateProcess("me�Ԅӥ�å��`��/MouseOver/me�Ԅӥ�å��`���ץ�����", 150, 0, 0, "MenuSendProcessOpen");
		//CreateProcess("me�Ԅӥ�å��`��/MouseLeave/me�Ԅӥ�å��`���ץ�����", 150, 0, 0, "MenuSendProcessPause");
	}else{
		CreateTexture("me�Ԅӥ�å��`��img",20,$MenuX,$MenuSendY,"cg/sys/menu/000-�Ԅӥ�å��`��.png");
		CreateTexture("me�Ԅӥ�å��`��/MouseUsual/hit",20,$MenuX,$MenuSendY,"cg/sys/menu/001-�Ԅӥ�å��`��.png");
		Request("me�Ԅӥ�å��`��",UnClickable);
	}

	CreateChoice("me�ե륹����`��");
	SetAlias("me�ե륹����`��", "me�ե륹����`��");
	if(!#SYSTEM_window_full_lock){
		CreateTexture("me�ե륹����`��img",20,$MenuX,$MenuFullY,"cg/sys/menu/001-�ե륹����`��.png");
		CreateTexture("me�ե륹����`��/MouseUsual/hit",20,$MenuX,$MenuFullY,"cg/sys/menu/001-�ե륹����`��.png");
		CreateTexture("me�ե륹����`��/MouseOver/img",20,$MenuX,$MenuFullY,"cg/sys/menu/002-�ե륹����`��.png");
		CreateTexture("me�ե륹����`��/MouseClick/img",20,$MenuX,$MenuFullY,"cg/sys/menu/003-�ե륹����`��.png");
		//CreateProcess("me�ե륹����`��/MouseOver/me�ե륹����`��ץ�����", 150, 0, 0, "MenuFullProcessOpen");
		//CreateProcess("me�ե륹����`��/MouseLeave/me�ե륹����`��ץ�����", 150, 0, 0, "MenuFullProcessPause");
	}else{
		CreateTexture("me�ե륹����`��img",20,$MenuX,$MenuFullY,"cg/sys/menu/000-�ե륹����`��.png");
		CreateTexture("me�ե륹����`��/MouseUsual/hit",20,$MenuX,$MenuFullY,"cg/sys/menu/001-�ե륹����`��.png");
		Request("me�ե륹����`��",UnClickable);
	}

	CreateChoice("me��å��`��");
	SetAlias("me��å��`��", "me��å��`��");
	if(!$SYSTEM_text_erase_lock){
		CreateTexture("me��å��`��img",20,$MenuX,$MenuEraseY,"cg/sys/menu/001-��å��`������.png");
		CreateTexture("me��å��`��/MouseUsual/hit",20,$MenuX,$MenuEraseY,"cg/sys/menu/001-��å��`������.png");
		CreateTexture("me��å��`��/MouseOver/img",20,$MenuX,$MenuEraseY,"cg/sys/menu/002-��å��`������.png");
		CreateTexture("me��å��`��/MouseClick/img",20,$MenuX,$MenuEraseY,"cg/sys/menu/003-��å��`������.png");
		//CreateProcess("me��å��`��/MouseOver/me��å��`���ץ�����", 150, 0, 0, "MenuEraseProcessOpen");
		//CreateProcess("me��å��`��/MouseLeave/me��å��`���ץ�����", 150, 0, 0, "MenuEraseProcessPause");
	}else{
		CreateTexture("me��å��`��img",20,$MenuX,$MenuEraseY,"cg/sys/menu/000-��å��`������.png");
		CreateTexture("me��å��`��/MouseUsual/hit",20,$MenuX,$MenuEraseY,"cg/sys/menu/001-��å��`������.png");
		Request("me��å��`��",UnClickable);
	}

	CreateChoice("me�Хå���");
	SetAlias("me�Хå���", "me�Хå���");
	if(!$SYSTEM_backlog_lock_a){
		CreateTexture("me�Хå���img",20,$MenuX,$MenuLogY,"cg/sys/menu/001-����ʾ.png");
		CreateTexture("me�Хå���/MouseUsual/hit",20,$MenuX,$MenuLogY,"cg/sys/menu/001-����ʾ.png");
		CreateTexture("me�Хå���/MouseOver/img",20,$MenuX,$MenuLogY,"cg/sys/menu/002-����ʾ.png");
		CreateTexture("me�Хå���/MouseClick/img",20,$MenuX,$MenuLogY,"cg/sys/menu/003-����ʾ.png");
		//CreateProcess("me�Хå���/MouseOver/me�Хå����ץ�����", 150, 0, 0, "MenuLogProcessOpen");
		//CreateProcess("me�Хå���/MouseLeave/me�Хå����ץ�����", 150, 0, 0, "MenuLogProcessPause");
	}else{
		CreateTexture("me�Хå���img",20,$MenuX,$MenuLogY,"cg/sys/menu/000-����ʾ.png");
		CreateTexture("me�Хå���/MouseUsual/hit",20,$MenuX,$MenuLogY,"cg/sys/menu/001-����ʾ.png");
		Request("me�Хå���",UnClickable);
	}

	CreateChoice("meǰ�x�k");
	SetAlias("meǰ�x�k", "meǰ�x�k");
	if((!$PLACE_select&&ExistSave(9999))&&!$SYSTEM_backselect_lock){
		CreateTexture("meǰ�x�kimg",20,$MenuX,$MenuBackY,"cg/sys/menu/001-�x�k֫�ˑ���.png");
		CreateTexture("meǰ�x�k/MouseUsual/hit",20,$MenuX,$MenuBackY,"cg/sys/menu/001-�x�k֫�ˑ���.png");
		CreateTexture("meǰ�x�k/MouseOver/img",20,$MenuX,$MenuBackY,"cg/sys/menu/002-�x�k֫�ˑ���.png");
		CreateTexture("meǰ�x�k/MouseClick/img",20,$MenuX,$MenuBackY,"cg/sys/menu/003-�x�k֫�ˑ���.png");
		//CreateProcess("meǰ�x�k/MouseOver/meǰ�x�k�ץ�����", 150, 0, 0, "MenuBackProcessOpen");
		//CreateProcess("meǰ�x�k/MouseLeave/meǰ�x�k�ץ�����", 150, 0, 0, "MenuBackProcessPause");
	}else{
		CreateTexture("meǰ�x�kimg",20,$MenuX,$MenuBackY,"cg/sys/menu/000-�x�k֫�ˑ���.png");
		CreateTexture("meǰ�x�k/MouseUsual/hit",20,$MenuX,$MenuBackY,"cg/sys/menu/001-�x�k֫�ˑ���.png");
		Request("meǰ�x�k",UnClickable);
	}

	CreateChoice("me����ե���");
	SetAlias("me����ե���", "me����ե���");
	CreateTexture("me����ե���img",20,$MenuX,$MenuConfigY,"cg/sys/menu/001-�O������.png");
	CreateTexture("me����ե���/MouseUsual/hit",20,$MenuX,$MenuConfigY,"cg/sys/menu/001-�O������.png");
	CreateTexture("me����ե���/MouseOver/img",20,$MenuX,$MenuConfigY,"cg/sys/menu/002-�O������.png");
	CreateTexture("me����ե���/MouseClick/img",20,$MenuX,$MenuConfigY,"cg/sys/menu/003-�O������.png");
	//CreateProcess("me����ե���/MouseOver/me����ե����ץ�����", 150, 0, 0, "MenuConfigProcessOpen");
	//CreateProcess("me����ե���/MouseLeave/me����ե����ץ�����", 150, 0, 0, "MenuConfigProcessPause");

	CreateChoice("me�����ȥ�");
	SetAlias("me�����ȥ�", "me�����ȥ�");
	CreateTexture("me�����ȥ�img",20,$MenuX,$MenuTitleY,"cg/sys/menu/001-�����ȥ�ˑ���.png");
	CreateTexture("me�����ȥ�/MouseUsual/hit",20,$MenuX,$MenuTitleY,"cg/sys/menu/001-�����ȥ�ˑ���.png");
	CreateTexture("me�����ȥ�/MouseOver/img",20,$MenuX,$MenuTitleY,"cg/sys/menu/002-�����ȥ�ˑ���.png");
	CreateTexture("me�����ȥ�/MouseClick/img",20,$MenuX,$MenuTitleY,"cg/sys/menu/003-�����ȥ�ˑ���.png");
	//CreateProcess("me�����ȥ�/MouseOver/me�����ȥ�ץ�����", 150, 0, 0, "MenuTitleProcessOpen");
	//CreateProcess("me�����ȥ�/MouseLeave/me�����ȥ�ץ�����", 150, 0, 0, "MenuTitleProcessPause");

	CreateChoice("me���`��K��");
	SetAlias("me���`��K��", "me���`��K��");
	CreateTexture("me���`��K��img",20,$MenuX,$MenuExitY,"cg/sys/menu/001-���`��K��.png");
	CreateTexture("me���`��K��/MouseUsual/hit",20,$MenuX,$MenuExitY,"cg/sys/menu/001-���`��K��.png");
	CreateTexture("me���`��K��/MouseOver/img",20,$MenuX,$MenuExitY,"cg/sys/menu/002-���`��K��.png");
	CreateTexture("me���`��K��/MouseClick/img",20,$MenuX,$MenuExitY,"cg/sys/menu/003-���`��K��.png");
	//CreateProcess("me���`��K��/MouseOver/me���`��K�˥ץ�����", 150, 0, 0, "MenuExitProcessOpen");
	//CreateProcess("me���`��K��/MouseLeave/me���`��K�˥ץ�����", 150, 0, 0, "MenuExitProcessPause");

	//CreateTexture("me���`��", 100, 683, 149, "cg/sys/menu/����/ico_auto.png");
	//SetAlias("me���`��", "me���`��");

	//����������ե��`������
	//CreateChoice("me�ե��`����");
	//SetAlias("me�ե��`����", "me�ե��`����");
	//CreateColor("me�ե��`����/MouseUsual/hit", 0, 0, 0, 800, 600, "BLACK");
	//	SetNextFocus("me�ե��`����/MouseUsual/hit","me����󥻥�/MouseUsual/img",DOWN);
	//	SetNextFocus("me�ե��`����/MouseUsual/hit","me����󥻥�/MouseUsual/img",RIGHT);
	//	SetNextFocus("me�ե��`����/MouseUsual/hit","me���`��K��/MouseUsual/img",UP);
	//	SetNextFocus("me�ե��`����/MouseUsual/hit","me���`��K��/MouseUsual/img",LEFT);
	//Request("me�ե��`����/MouseUsual/hit", Erase);
	//Request("me�ե��`����",UnClickable);

	//���ե��`����
	MenuFocus();

	//��ʂ�
	Request("me*/MouseUsual/hit", Erase);
	Fade("me*",0,0,null,false);
	Fade("me*/*/*",0,0,null,false);

	//�����
	$menufade=0;
	$menuwait=10;
	Fade("me����", 100, 1000, null, true);
	Wait($menuwait);
	Fade("me����󥻥�img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me�������ȥ�img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me��å��`��img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me�Ԅӥ�å��`��img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me�����å�img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me����img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("meǰ�x�kimg", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me�Хå���img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me���`��img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me��`��img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me�����å�img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me�ԩ`��img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me�ե륹����`��img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me����ե���img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me�����ȥ�img", $menufade, 1000, null, false);
	Wait($menuwait);
	Fade("me���`��K��img", $menufade, 1000, null, true);

	$SYSTEM_menu_enable=true;
	$SYSTEM_keydown_esc=false;
	while($SYSTEM_menu_enable){
		select{
			case me����󥻥�{
				$SYSTEM_menu_enable=false;
			}
			if(!$LOCAL_extra_lock){
				case me�������ȥ�{

					call_chapter nss/sys_hmode.nss;
					$SYSTEM_menu_enable=true;
				}
			}
			if(!$SYSTEM_save_lock){
				case me���`��{
					call_chapter nss/sys_save.nss;
					$SYSTEM_menu_enable=true;
				}
			}
			if(!$SYSTEM_load_lock){
				case me��`��{
					call_chapter nss/sys_load.nss;
					$SYSTEM_menu_enable=true;
				}
			}
			if(!$SYSTEM_save_lock){
				case me�����å�{
					//���������Ĩ�����륳�ޥ��
					$SYSTEM_text_icon_disable=false;
					$SYSTEM_mousewheel_up=false;
					$SYSTEM_mousewheel_down=false;
					
					$PLAY_TIME+=(Time()-#START_TIME);
					#START_TIME=Time();
					Save(9998);

					//������
					CreateSound("QuickSound2", SE, "sound/se/SE_sys_������");
					SetVolume("QuickSound2", 0, 1000, NULL);
					Request("QuickSound2", Play);
					Request("QuickSound2", Disused);

					$SYSTEM_menu_enable=true;
				}
			}
			if(ExistSave(9998)&&!$SYSTEM_load_lock){
				case me�ԩ`��{
					CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
					Fade("BLACK", 0, 0, null, true);
					Fade("BLACK", 300, 1000, null, true);

					$SYSTEM_menu_enable=false;
					$SYSTEM_menu_load_enable=false;
					DeleteSaveFile(9999);
			
					#InitCV=false;
					#PreSaveFlag=false;
					#START_TIME=Time();
					Save(0);

					Load(9998);
					$SYSTEM_menu_enable=true;
				}
			}
			if(!$SYSTEM_skip_lock){
				case me�����å�{
					$SYSTEM_skip=true;
					$SYSTEM_menu_enable=false;
				}
			}
			if(!$SYSTEM_skip_lock){
				case me����{
					#SYSTEM_skip_express=true;
					$SYSTEM_skip=true;
					$SYSTEM_menu_enable=false;
				}
			}
			if(!$SYSTEM_text_auto_lock){
				case me�Ԅӥ�å��`��{
					$SYSTEM_text_auto=!$SYSTEM_text_auto;
					$SYSTEM_menu_enable=false;
				}
			}
			if(!#SYSTEM_window_full_lock){
				case me�ե륹����`��{
					#SYSTEM_window_full=!#SYSTEM_window_full;
				}
			}
			if(!$SYSTEM_text_erase_lock){
				case me��å��`��{
					$SYSTEM_text_erase=!$SYSTEM_text_erase;
					$SYSTEM_menu_enable=false;
				}
			}case me�Хå���{
				call_chapter nss/sys_backlog.nss;
				$SYSTEM_menu_enable=true;
			}
			if((!$PLACE_select&&ExistSave(9999))&&!$SYSTEM_backselect_lock){
				case meǰ�x�k{
					call_chapter nss/sys_backselect.nss;
					$SYSTEM_menu_enable=true;
				}
			}case me����ե���{
				call_chapter nss/sys_config.nss;
				$SYSTEM_menu_enable=true;
			}case me�����ȥ�{
				call_chapter nss/sys_reset.nss;
				$SYSTEM_menu_enable=true;
			}case me���`��K��{
				call_chapter nss/sys_close.nss;
				$SYSTEM_menu_enable=true;
			}

			//�񥷥�`�ȥ��åȥ��`����
			if($SYSTEM_keydown_h){
				if(!$LOCAL_extra_lock){
					call_chapter nss/sys_hmode.nss;
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_space){
				if(!$SYSTEM_text_erase_lock){
					$SYSTEM_text_erase=!$SYSTEM_text_erase;
					$SYSTEM_menu_enable=false;
				}
			}else if($SYSTEM_keydown_a){
				if(!$SYSTEM_text_auto_lock){
					$SYSTEM_text_auto=!$SYSTEM_text_auto;
					$SYSTEM_menu_enable=false;
				}
			}else if($SYSTEM_keydown_ctrl){
				if(!$SYSTEM_skip_lock){
					$SYSTEM_skip=true;
					$SYSTEM_menu_enable=false;
				}
			}else if($SYSTEM_keydown_n){
				if(!$SYSTEM_skip_lock){
					#SYSTEM_skip_express=true;
					$SYSTEM_skip=true;
					$SYSTEM_menu_enable=false;
				}
			}else if($SYSTEM_keydown_r){
				if((!$PLACE_select&&ExistSave(9999))&&!$SYSTEM_backselect_lock){
					call_chapter nss/sys_backselect.nss;
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_b){
				call_chapter nss/sys_backlog.nss;
				$SYSTEM_menu_enable=true;
			}else if($SYSTEM_keydown_s){
				if(!$SYSTEM_save_lock){
					call_chapter nss/sys_save.nss;
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_l){
				if(!$SYSTEM_load_lock){
					call_chapter nss/sys_load.nss;
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_q){
				if(!$SYSTEM_save_lock){
					//���������Ĩ�����륳�ޥ��
					$SYSTEM_text_icon_disable=false;
					$SYSTEM_mousewheel_up=false;
					$SYSTEM_mousewheel_down=false;

					$SYSTEM_keydown_q=false;
					$PLAY_TIME+=(Time()-#START_TIME);
					#START_TIME=Time();
					Save(9998);

					//������
					CreateSound("QuickSound2", SE, "sound/se/SE_sys_������");
					SetVolume("QuickSound2", 0, 1000, NULL);
					Request("QuickSound2", Play);
					Request("QuickSound2", Disused);

					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_p){
				if(ExistSave(9998)&&!$SYSTEM_load_lock){
					CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
					Fade("BLACK", 0, 0, null, true);
					Fade("BLACK", 300, 1000, null, true);

					$SYSTEM_menu_enable=false;
					$SYSTEM_menu_load_enable=false;
					DeleteSaveFile(9999);
			
					#InitCV=false;
					#PreSaveFlag=false;
					#START_TIME=Time();
					Save(0);

					Load(9998);
					$SYSTEM_menu_enable=true;
				}
			}else if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
				}
				$SYSTEM_menu_enable=true;
				$SYSTEM_keydown_f=false;
			}else if($SYSTEM_keydown_c){
				call_chapter nss/sys_config.nss;
				$SYSTEM_menu_enable=true;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
				$SYSTEM_menu_enable=true;
			}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
				call_chapter nss/sys_close.nss;
				$SYSTEM_menu_enable=true;
			}

			if(!$SYSTEM_menu_enable){break;}
			if($SYSTEM_keydown_m){$SYSTEM_menu_enable=false;break;}
		}
	}

	Fade("me*/*/*",100,0,null,true);

	$menufade=0;
	$menuwait=10;
	Fade("me����", 100, 0, null, false);

	Fade("me���`��K��img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me�����ȥ�img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me����ե���img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me�ե륹����`��img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me�ԩ`��img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me�����å�img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me��`��img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me���`��img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me�Хå���img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("meǰ�x�kimg", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me����img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me�����å�img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me�Ԅӥ�å��`��img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me��å��`��img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me�������ȥ�img", $menufade, 0, null, false);
	Wait($menuwait);
	Fade("me����󥻥�img", $menufade, 0, null, true);

	WaitAction("me����", null);

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;

	$SYSTEM_menu_enable=false;
}

function MenuFocus(){
	Array($Menu,"����󥻥�","�������ȥ�","��å��`��","�Ԅӥ�å��`��","�����å�","����","ǰ�x�k","�Хå���","���`��","��`��","�����å�","�ԩ`��","�ե륹����`��","����ե���","�����ȥ�","���`��K��");
	AssocArray($Menu,"����󥻥�","�������ȥ�","��å��`��","�Ԅӥ�å��`��","�����å�","����","ǰ�x�k","�Хå���","���`��","��`��","�����å�","�ԩ`��","�ե륹����`��","����ե���","�����ȥ�","���`��K��");
	$MenuCount=Count($Menu);

	$MenuWhile=0;
	while($MenuCount>$MenuWhile){
		$Menu[$MenuWhile][0]=true;
		$MenuWhile++;
	}

	if($LOCAL_extra_lock){
		$Menu["�������ȥ�"][0]=false;
	}
	if(($PLACE_select||!ExistSave(9999))||$SYSTEM_backselect_lock){
		$Menu["ǰ�x�k"][0]=false;
	}
	if($SYSTEM_save_lock){
		$Menu["���`��"][0]=false;
		$Menu["�����å�"][0]=false;
	}
	if($SYSTEM_load_lock){
		$Menu["��`��"][0]=false;
		$Menu["�ԩ`��"][0]=false;
	}
	if(!ExistSave(9998)){
		$Menu["�ԩ`��"][0]=false;
	}
	if($SYSTEM_skip_lock){
		$Menu["�����å�"][0]=false;
		$Menu["����"][0]=false;
	}
	if($SYSTEM_text_auto_lock){
		$Menu["�Ԅӥ�å��`��"][0]=false;
	}
	if($SYSTEM_text_erase_lock){
		$Menu["��å��`��"][0]=false;
	}


	$MenuWhile=0;
	while($MenuCount>$MenuWhile){
		if($Menu[$MenuWhile][0]){
			MenuDocusGo();
		}
		$MenuWhile++;
	}
}

function MenuDocusGo()
{
	$MenuFocusBreak=true;
	$MenuStart=$MenuWhile+1;
	$MenuWhile2=0;
	while($MenuCount>$MenuWhile2&&$MenuFocusBreak){
		if($MenuStart>=$MenuCount){
			$MenuStart=0;
		}

		if($Menu[$MenuStart][0]){
			$menunut="me"+$Menu[$MenuWhile]+"/MouseUsual/hit";
			$menunut2="me"+$Menu[$MenuStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,DOWN);
				SetNextFocus($menunut,$menunut2,RIGHT);
			$MenuFocusBreak=false;
		}

		$MenuStart++;
		$MenuWhile2++;
	}



	$MenuFocusBreak=true;
	$MenuStart=$MenuWhile-1;
	$MenuWhile2=0;
	while($MenuCount>$MenuWhile2&&$MenuFocusBreak){
		if($MenuStart<0){
			$MenuStart=$MenuCount-1;
		}

		if($Menu[$MenuStart][0]){
			$menunut="me"+$Menu[$MenuWhile]+"/MouseUsual/hit";
			$menunut2="me"+$Menu[$MenuStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,UP);
				SetNextFocus($menunut,$menunut2,LEFT);
			$MenuFocusBreak=false;
		}

		$MenuStart--;
		$MenuWhile2++;
	}


}
