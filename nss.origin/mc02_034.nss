//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_034.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev174_����׏�Ͷ��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_035.nss";

}

scene mc02_034.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_033.nss"

//�����ӘS���X����
//���y�Ǻ�
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm12",0,1000,true);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg026_���ӘSɽ��a_01.jpg");
	Delete("�ϱ���");
	
	CreateSE("���Q", "se����_����_���Q01");
	MusicStart("���Q", 0, 1000, 0, 1000, null,true);

	FadeDelete("�\Ļ��", 1500, true);

	Wait(1000);

	SetVolume("���Q", 5000, 0, null);
	CreatePlainSP("�}��д", 19990);
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg001_��b_01.jpg");
	FadeDelete("�}��д", 1000, true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateColorSP("�}��/�}��ɫ", 5010, "#CC0000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Move("�}��/�}�ݱ���", 0, @-512, @0, null, true);

	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, Middle, "cg/st/resize/3d�y�Ǻ�_�Tͻ_ͨ��l.png");
	Request("�}��/�}�����}װ��", Smoothing);
	Rotate("�}��/�}�����}װ��", 0, @0, @180, @0, null,true);
	Move("�}��/�}�����}װ��", 0, @-250, @0, null, true);

	Move("�}��/�}�����}װ��", 600, @-30, @0, Dxl1, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/mc02/0340010a14">
������������


{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/mc02/0340020a15">
������������
����ô�ˣ���

{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mc02/0340030a14">
�������������

//���⡿
<voice name="��" class="��" src="voice/mc02/0340040a14">
�������ƻ�֮������


{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/mc02/0340050a15">
������!?��


{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/mc02/0340060a14">
����!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���׏��u��
	CreateSE("SE01","se���L_�Ɖ�_���k07");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreateTextureSPadd("�}����", 11100, Center, Middle, "cg/ef/ef031_����׏��u��.jpg");
	CreateTextureSP("�}��", 11000, Center, Middle, "cg/ef/ef031_����׏��u��.jpg");
	SetVertex("�}��*", 340, 430);
	Zoom("�}��", 0, 1100, 1100, null, true);
	Zoom("�}����", 0, 1400, 1400, null, false);

	Delete("�}����*");
	Delete("�}��*");

	Fade("�}����", 0, 500, null, true);
	Zoom("�}����", 400, 1000, 1000, Dxl2, false);
	FadeFR2("�}��",0,1000,500,@0,@0,50,Dxl2, false);
	FadeDelete("�}����", 1000, true);

//���y�Ǻš��|�I��ա�ħ���ǰk��
//�������]���Ϥ��Ф��ΣӣŤȤ�
//���\���
//���ˡ��פ��ҤӸ��һ��ӥ��äȡ�
	CreateColorSP("�}ɫ�\", 19900, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	PrintGO("�ϱ���", 20000);
	CreateColorSP("�}ɫ�\", 19900, "#000000");

	CreateTextureSP("�}����", 100, Center, InTop, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	CreateTextureSP("�}���}", 1000, Center, Middle, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Move("�}���}", 0, @60, @0, null, true);
	Request("�}���}", Smoothing);
	Rotate("�}���}", 0, @0, @180, @0, null,true);

	Delete("�ϱ���");

	Move("�}���}", 600, @-60, @0, Dxl2, false);
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_0", true);

	WaitAction("�}���}", null);

	CreateSE("SE06","se���L_�y�Ǻ�_�|�I���ħ����_�ʂ�");
	MusicStart("SE06",0,1000,0,1000,null,true);
	CreateColorSPadd("�}ɫ��", 19900, "#FFFFFF");

	CreateTextureSP("�}�݄���", 4100, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Request("�}�݄���", Smoothing);
	Zoom("�}�݄���", 0, 1000, 10000, null, true);
	SetBlur("�}�݄���", true, 3, 500, 60, false);

	Wait(200);
	Delete("�}����*");
	Delete("�}���}*");
	Zoom("�}�݄���", 2000, 1000, 1000, DxlAuto, false);

	Fade("�}ɫ��", 300, 0, null, false);
	WaitAction("�}�݄���", null);


	SetVolume("SE06", 2000, 0, null);
	OnSE("se���L_�y�Ǻ�_�|�I���ħ����_�k��", 1000);

	Fade("�}ɫ��",100,1000,null,true);
	Delete("�}�݄���*");
	CreateTextureSP("�}����30", 1100, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	Fade("�}����30",1000,500,null,true);
	Zoom("�}����30", 0, 1050, 1050, null, true);
	Wait(200);
	Zoom("�}����30", 50000, 1500, 1500, null, false);
	MoveFFP1("@�}����30",1000);
	Fade("�}ɫ��",300,0,null,true);

	WaitKey(1000);

	CreateSEEX("�]������", "se���L_����_���ͥ륮�`�]���Ϥ�01_L");
	MusicStart("�]������", 0, 1000, 0, 1000, null,true);

	OnSE("se����_�z_�ҤӸ��01", 1000);

	SetFwR("cg/fw/fw����Ů��ρ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������������
<voice name="��������" class="��������" src="voice/mc02/0340070a15">
��������

//������������
<voice name="��������" class="��������" src="voice/mc02/0340080a15">
������<?>
{Wait(500);}
��������������������������������
����������������������������������������
��������������������������������������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⤦һ��ӥ���
	Fade("�}ɫ��",100,1000,null,true);

	OnSE("se����_�z_�ҤӸ��02", 1000);

	OnSE("se���L_�Ɖ�_�y�Ǻ��Ɖ�", 1000);

	OnSE("se����_늓�_���02", 1000);
	CreateTextureSP("�}����30", 1100, Center, Middle, "cg/ef/ef037_�|�I���ħ����c.jpg");
	Zoom("�}����30", 0, 1050, 1050, null, true);
	Zoom("�}����30", 50000, 1500, 1500, null, false);
	MoveFFP1("@�}����30",750);
	Fade("�}ɫ��",300,0,null,true);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���⡿
<voice name="��" class="��" src="voice/mc02/0340090a14">
�����ҹ⣡��

//���⡿
<voice name="��" class="��" src="voice/mc02/0340100a14">
���������Ǻš�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ˡ��ӥ��ӥ���

	Fade("�}ɫ��",100,1000,null,true);
	OnSE("se����_늓�_���02", 1000);

	CreateTextureSP("�}����30", 1100, Center, Middle, "cg/ef/ef037_�|�I���ħ����d.jpg");
	Zoom("�}����30", 0, 1050, 1050, null, true);
	Zoom("�}����30", 50000, 1500, 1500, null, false);
	MoveFFP1("@�}����30",500);
	Fade("�}ɫ��",300,0,null,true);

	SetFwR("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���⡿
<voice name="��" class="��" src="voice/mc02/0340110a14">
�������𡪡�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӥ��ӥ��ӥ���
//���Х��`�󡣳Z��ɢ�ä���
//���˱��k������ɩ`��
	SetVolume("@mbgm*", 2500, 0, null);
	Fade("�}ɫ��",2500,1000,null,true);
	SetVolume("�]������", 1000, 0, null);

	OnSE("se����_�z_�ҤӸ��02", 1000);

	WaitKey(1500);

	OnSE("se����_��x_�k��03", 1000);

	OnSE("se���L_��_����ӥƥ��֥饹��_�k��", 1000);
	OnSE("se���L_�y�Ǻ�_�֥쥤���󥰥��ȥ�`��", 1000);
	OnSE("se����_��x_�k��02", 1000);

	Delete("�}����*");
	Wait(2400);

	SetVolume("@mbgm*", 300, 0, null);
	SetVolume("SE*", 300, 0, null);
	SetVolume("@OnSE*", 300, 0, null);

	Wait(2000);

	OnSE("se���L_�Ɖ�_���k09", 1000);
	CreateTextureSP("�}����", 19000, Center, InBottom, "cg/ef/ef046_��a.jpg");
	SetVertex("�}����", center, bottom);
	Zoom("�}����", 0, 600, @0, Dxl1, true);
	Zoom("�}����", 3000, @0, 10000, Dxl1, false);

	Fade("�}ɫ��",300,0,null,true);

	Wait(2000);


	CreateTextureSP("�}����50", 18000, Center, Middle, "cg/ev/ev174_����׏�Ͷ��.jpg");
	CreatePlainEX("�}��д", 18100);
	Zoom("�}����50", 0, 1050, 1050, null, true);
	Zoom("�}��д", 0, 1100, 1100, null, true);
	Zoom("�}����50", 50000, 1500, 1500, null, false);
	Fade("�}��д", 0, 500, null, true);
	MoveFFP1("@�}��д",250);

	FadeDelete("�}����", 1000, true);

	Wait(3000);

	ClearWaitAll(2000, 2000);



}

..//������ָ��
//�Υե����롡"mc02_035.nss"