//<continuation number="160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_036.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md06_036.nss","Hikaru",true);
	Conquest("nss/md06_036.nss","Last_MuramasaVSMasamune",true);
	Conquest("nss/md06_036.nss","FullMetalDeamon",true);
	Conquest("nss/md06_036.nss","EventFlag",true);

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
	#bg112_���ؤ��ε�b_02=true;
	#ev267_��������ţ�_a=true;
	#ev267_��������ţ�_b=true;
	#ev267_��������ţ�_c=true;
	#ev000_����äƤȤ��Ȥ��Ȥ�=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#msong03 = true;
	#�����K�� = true;

	$PreGameName = $GameName;

	$GameCircle=0;


	//��ţĥ�`�볬�ٌ���
	PreSetRoll02A();

	//��Ҥ���
	Hikaru();

	PreSetRoll02B(3);

	//�����vs����
	Last_MuramasaVSMasamune();

	TheEND(3);

	//����K�ݳ�
	FullMetalDeamon();

	//��ե饰�؅�
	EventFlag();
}

scene md06_036.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_035.nss"


//�����ؤ���bg112a_Ϧ

//�ۥ磻�ȥ����ȕr�g���L���ΤϽK��ä���˼�ä������S��������˼�碌���ݳ��Ǥ���EnterѺ���줿����ζ���ʤ��Ǥ��� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��", 25000, "WHITE");

	OnBG(100, "bg112_���ؤ��ε�b_02.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");

	CreateSE("SE01","se��Ȼ_ˮ_�����01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	WaitKey(3000);

	SetVolume("SE*", 3000, 500, null);

	FadeDelete("��",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetNwC("cg/fw/nw̫�ä���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0360010e109">
��ι�����ǵĹ�����ô����!?��

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0360020e227">
��������������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0360030e109">
��������������깤������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0360040e227">
������ƨ������
��Ҫ�������Լ���ȥ����

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0360050e109">
��ʲô!?��

{	FwC("cg/fw/fwС��_ͨ��.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0360060b34">
�����С���

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0360070e227">
������������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0360080e109">
�����⣿��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��
	StR(1000, @0, @0, "cg/st/stС��_ͨ��_˽��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fwС��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0360090b34">
�������ԣ����ܡ���

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0360100b34">
���Ժ͡�����

//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0360110b34">
���Ժ�Ϊ�󡣡�

{	FwC("cg/fw/fwС��_����.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0360120b34">
�������Ǹ�������

{	NwC("cg/fw/nw̫�ä���.png");}
//������㣯ס�����
<voice name="����㣯ס���" class="����������" src="voice/md06/0360130e109">
����������

{	NwC("cg/fw/nw������y��.png");}
//������㣯�y�����
<voice name="����㣯�y���" class="����������" src="voice/md06/0360140e227">
��������������

{	FwC("cg/fw/fwС��_΢Ц.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0360150b34">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������������������������������������������������

}

function Hikaru()
{
	SetVolume("@mbgm*", 2500, 0, null);
	SetVolume("@SE*", 2500, 0, null);
	SetVolume("@OnSE*", 2500, 0, null);
	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");
	Fade("�}ɫ��", 2000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	Wait(1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");
	CreateTextureSP("�}�K��", 5000, Center, Middle, "cg/ev/ev000_����äƤȤ��Ȥ��Ȥ�.jpg");
	Delete("�ϱ���");
	FadeDelete("�}ɫ��", 2000, true);

	Wait(600);

	CreateVOICE("���ҥ���","md06/0360160b34");
	MusicStart("���ҥ���",0,1000,0,1000,null,false);

	WaitPlay("���ҥ���", null);

	Wait(2000);

/*

//��������ݳ��������ǥƥ����Ȥ����Τ�Ұĺ������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0000]
//��Ц�
{	FwC("cg/fw/fwС��_Ц�.png");}
//��С�⡿
<voice name="С��" class="���ҥ���" src="voice/md06/0360160b34">
�������Ժ�Ϊ�󡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/
}

function Last_MuramasaVSMasamune(){
//����K�ţĥǥ⡣
//���£ǣͤ��Фʤ�ϵ�ǤϤʤ�������ϵ��
//�������֣����ڤΣ��đ��L����򿗤꽻����줿�������ʡ�

	CreateColorEXadd("�}ɫ��", 20000, "#FFFFFF");//ͽ�i׷��
	Fade("�}ɫ��", 1000, 1000, null, true);//ͽ�i׷��
	Delete("�}�K��");//ͽ�i׷��

	CreateColorEXadd("�}ɫ100", 1500, "White");

	CreateMovie("�}������", 1000, 0, 0, false, false, "dx/mv���ڣ֣Ӵ���.ngs");
	Request("�}������", Stop);
	CreateSE("SE01","se����_mv��_���ڣ֣Ӵ���");
	SetAlias("�}������","�}������");

	FadeDelete("�}ɫ��", 500, false);//ͽ�i׷��

	MusicStart("SE01",0,1000,0,1000,null,false);
	Request("�}������", Play);

	$Movie_Time = RemainTime("�}������");
	$Movie_Time = $Movie_Time-500;
	Wait($Movie_Time);
	SetVolume("SE01", 300, 0, null);
	Fade("�}ɫ100", 300, 1000, null, true);

	Delete("�}������");

	CreateTextureSP("�}����001", 100, Center, Middle, "cg/bg/bg041_����_02.jpg");
	Zoom("�}����001", 0, 2000, 2000, null, true);
	SetShade("�}����001", HEAVY);

	CreateTextureEXadd("�}��001", 400, -363, -620, "cg/ef/ef044_��c.png");
	Zoom("�}��001", 0, 50, 50, null, true);

	CreateTextureEXadd("�}��002", 400, -380, -617, "cg/ef/ef044_��c.png");
	Zoom("�}��002", 0, 50, 50, null, true);

	CreateTextureEXadd("�}��003", 400, -368, -607, "cg/ef/ef044_��c.png");
	Zoom("�}��003", 0, 50, 50, null, true);

	CreateTextureEXadd("�}��004", 400, -45, -611, "cg/ef/ef044_��c.png");
	Zoom("�}��004", 0, 50, 50, null, true);
	CreateTextureEXadd("�}��005", 400, -29, -606, "cg/ef/ef044_��c.png");
	Zoom("�}��005", 0, 50, 50, null, true);
	CreateTextureEXadd("�}��006", 400, -43, -595, "cg/ef/ef044_��c.png");
	Zoom("�}��006", 0, 50, 50, null, true);

	CreateSE("SE01","se���L_�|��_�C�v�|����02");

	CreateSE("SE02","se���L_����_���ϕN01");
	CreateSE("SE03","se���L_��x_��������");
	CreateSE("SE04","se���L_��x_��������");
	CreateSE("SE05","se���L_��x_��������");
	CreateSE("SE06","se����_��x_��������01");

	CreateSE("SE07","se���L_����_Ұ̫�����02");
	CreateSE("SE08","se���L_����_��ꪏ���02");
	CreateSE("SE09","se���L_����_���ͥ륮�`�]���Ϥ�01_L");
	CreateSE("SE10","se���L_����_��װ�ʂ�01");


	CreateTextureEX("�}����002", 200, Center, InBottom, "cg/st/3d����_����_���Lc.png");

	SetBlur("�}����002", true, 3, 500, 50, false);
	Zoom("�}����002", 0, 1200, 1200, null, true);

	Fade("�}ɫ100", 300, 0, null, true);

	MusicStart("SE10",0,1000,0,1000,null,false);
	Zoom("�}����002", 300, 1000, 1000, null, false);
	Fade("�}����002", 300, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}����002", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("�}��001", 50, 300, 300, null, false);
	Rotate("�}��001", 50, @0, @0, @360, null,false);
	Zoom("�}��004", 50, 300, 300, null, false);
	Rotate("�}��004", 50, @0, @0, @360, null,false);
	Fade("�}��001", 50, 1000, null, false);
	Fade("�}��004", 50, 1000, null, true);

	Shake("�}����002", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("�}��002", 50, 300, 300, null, false);
	Rotate("�}��002", 50, @0, @0, @360, null,false);
	Zoom("�}��005", 50, 300, 300, null, false);
	Rotate("�}��005", 50, @0, @0, @360, null,false);
	Fade("�}��001", 50, 0, null, false);
	Fade("�}��002", 50, 1000, null, false);
	Fade("�}��004", 50, 0, null, false);
	Fade("�}��005", 50, 1000, null, true);

	Shake("�}����002", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("�}��003", 50, 300, 300, null, false);
	Rotate("�}��003", 50, @0, @0, @360, null,false);
	Zoom("�}��001", 0, 50, 50, null, false);
	Zoom("�}��006", 50, 300, 300, null, false);
	Rotate("�}��006", 50, @0, @0, @360, null,false);
	Zoom("�}��004", 0, 50, 50, null, false);
	Shake("�}����002", 50, 3, 0, 0, 0, 1000, null, false);
	Fade("�}��002", 50, 0, null, false);
	Fade("�}��003", 50, 1000, null, false);
	Fade("�}��005", 50, 0, null, false);
	Fade("�}��006", 50, 1000, null, true);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",500,500,null,false);

	Shake("�}����002", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("�}��001", 50, 300, 300, null, false);
	Rotate("�}��001", 50, @0, @0, @360, null,false);
	Zoom("�}��002", 0, 50, 50, null, false);
	Zoom("�}��004", 50, 300, 300, null, false);
	Rotate("�}��004", 50, @0, @0, @360, null,false);
	Zoom("�}��005", 0, 50, 50, null, false);
	Fade("�}��003", 50, 0, null, false);
	Fade("�}��001", 50, 1000, null, false);
	Fade("�}��006", 50, 0, null, false);
	Fade("�}��004", 50, 1000, null, true);

//	Fade("�ե�å����",500,1000,null,false);

	Fade("�ե�å����",500,1000,null,false);
	Fade("�}��001", 500, 0, null, false);
	Fade("�}��004", 500, 0, null, true);
	Fade("�ե�å����",0,1000,null,true);

	SetVolume("SE01", 1000, 0, null);

	Wait(1000);

	Delete("�}����*");
	Delete("�}��*");

	CreateTextureSP("�}����001", 100, Center, Middle, "cg/ev/ev903_�����ŚݥХꥢ�`չ�__b.jpg");
	CreateTextureSP("�}����002", 1000, Center, Middle, "cg/ev/ev903_�����ŚݥХꥢ�`չ�__b.jpg");

	SetBlur("�}����001", true, 3, 500, 100, false);
	SetBlur("�}����002", true, 3, 500, 100, false);


	CreateTextureEXadd("�}��001", 1400, -29, -615, "cg/ef/ef044_��c.png");
	Zoom("�}��001", 0, 300, 300, null, true);

	CreateTextureEXadd("�}��002", 1400, -380, -617, "cg/ef/ef044_��c.png");
	Zoom("�}��002", 0, 50, 50, null, true);

	CreateTextureEXadd("�}��003", 1400, 151, -372, "cg/ef/ef044_��c.png");
	Zoom("�}��003", 0, 50, 50, null, true);

	CreateTextureEXadd("�}��004", 1400, -323, -627, "cg/ef/ef044_��c.png");
	Zoom("�}��004", 0, 50, 50, null, true);
	CreateTextureEXadd("�}��005", 1400, -5, -694, "cg/ef/ef044_��c.png");
	Zoom("�}��005", 0, 50, 50, null, true);
	CreateTextureEXadd("�}��006", 1400, -263, -331, "cg/ef/ef044_��c.png");
	Zoom("�}��006", 0, 50, 50, null, true);


	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("�}����002", 500, 2000, 2000, null, false);
	FadeDelete("�ե�å����",300,true);
	FadeDelete("�}����002", 200, true);


	Shake("�}����001", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("�}��001", 200, 500, 500, null, false);
	Rotate("�}��001", 200, @0, @0, @360, null,false);
	Zoom("�}��002", 200, 500, 500, null, false);
	Rotate("�}��002", 200, @0, @0, @360, null,false);
	Fade("�}��001", 100, 1000, null, false);
	Fade("�}��002", 100, 1000, null, true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("�}����001", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("�}��003", 200, 500, 500, null, false);
	Rotate("�}��003", 200, @0, @0, @360, null,false);
	Zoom("�}��004", 200, 500, 500, null, false);
	Rotate("�}��004", 200, @0, @0, @360, null,false);
	Fade("�}��001", 100, 0, null, false);
	Fade("�}��003", 100, 1000, null, false);
	Fade("�}��002", 100, 0, null, false);
	Fade("�}��004", 100, 1000, null, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Shake("�}����001", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("�}��004", 200, 500, 500, null, false);
	Rotate("�}��005", 200, @0, @0, @360, null,false);
	Zoom("�}��001", 0, 300, 300, null, false);
	Zoom("�}��002", 0, 300, 300, null, false);
	Zoom("�}��005", 200, 500, 500, null, false);
	Rotate("�}��006", 200, @0, @0, @360, null,false);
	Zoom("�}��006", 0, 500, 400, null, false);
	Shake("�}����002", 100, 3, 0, 0, 0, 1000, null, false);
	Fade("�}��003", 100, 0, null, false);
	Fade("�}��005", 100, 1000, null, false);
	Fade("�}��004", 100, 0, null, false);
	Fade("�}��006", 100, 1000, null, true);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Zoom("�}����001", 1000, 2000, 2000, null, false);
	Fade("�ե�å����",400,500,null,false);

	MusicStart("SE05",0,1000,0,1000,null,false);
	Shake("�}����001", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("�}��001", 200, 500, 500, null, false);
	Rotate("�}��001", 200, @0, @0, @360, null,false);
	Zoom("�}��003", 0, 50, 50, null, false);
	Zoom("�}��002", 200, 500, 500, null, false);
	Rotate("�}��002", 200, @0, @0, @360, null,false);
	Zoom("�}��005", 0, 50, 50, null, false);
	Fade("�}��005", 100, 0, null, false);
	Fade("�}��001", 100, 1000, null, false);
	Fade("�}��006", 100, 0, null, false);
	Fade("�}��002", 100, 1000, null, true);

//	Fade("�ե�å����",500,1000,null,false);

	MusicStart("SE06",0,1000,0,1000,null,false);
	Fade("�ե�å����", 500, 1000, null, false);

	Fade("�}��001", 100, 0, null, false);
	Fade("�}��002", 100, 0, null, true);


	MusicStart("SE07",0,1000,0,1000,null,false);
	Fade("�ե�å����", 400, 1000, null, true);

	Delete("�}��*");
	Delete("�}��*");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev915_劸���Ϥ�����������.jpg");
	CreateTextureSP("�}����200", 500, Center, Middle, "cg/ev/ev915_劸���Ϥ�����������.jpg");
	CreateTextureSP("�}����300", 1000, Center, Middle, "cg/ev/ev915_劸���Ϥ�����������.jpg");
	CreateTextureEX("�}����400", 1000, Center, Middle, "cg/ev/ev915_劸���Ϥ�����������.jpg");
	SetBlur("�}����300", true, 3, 500, 100, false);
	SetBlur("�}����400", true, 3, 300, 100, false);

	Shake("�}����200", 10000, 5, 3, 0, 0, 1000, null, false);

	MusicStart("SE08",0,1000,0,1000,null,false);
	MusicStart("SE09",0,1000,0,1000,null,false);
	Zoom("�}����300", 2000, 2000, 2000, null, false);
	FadeDelete("�ե�å����", 500,true);
	FadeDelete("�}����300", 1000, true);

	Shake("�}����200", 2000, 5, 1, 0, 0, 1000, null, false);
	Wait(1000);

	Fade("�}����400", 0, 500, null, true);
	Zoom("�}����400", 2000, 2000, 2000, null, false);

	Shake("�}����200", 2000, 3, 4, 0, 0, 1000, null, false);
	Wait(500);
	FadeDelete("�}����400", 1000, false);
	Wait(500);
	Shake("�}����200", 5000, 6, 4, 0, 0, 1000, null, false);
	Wait(1000);

	SetVolume("SE09", 2000, 0, null);

	CreateColorSP("�}ɫ100", 1500, "White");
	DrawTransition("�}ɫ100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Wait(1000);
	Delete("�}����*");
	CreateColorSP("�}ɫ10", 100, "Black");
	FadeDelete("�}ɫ100", 2000, true);

}


function FullMetalDeamon()
{
//���ţ֣���������
//����������
	#play_speed_plus=#SYSTEM_play_speed;
	#SYSTEM_play_speed=3;

	PrintGO("�ϱ���", 30000);
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	FadeDelete("�ϱ���", 2000, true);

	Wait(1000);

	CreateSE("SE01","se�M��_냇��_�i��01");
	$�Еr�g=RemainTime("SE01");

//	SoundPlay("@msong03_full", 0, 500, false);

	Wait(160);

	MusicStart("SE01",0,1000,0,1000,null,false);
	WaitPlay("SE01", null);

	CreateTextureSP("����ED", 16000, Center, Middle, "cg/ev/ev267_��������ţ�_a.jpg");
	CreateTextureSP("����EDEX", 16010, -750, -770, "cg/ev/resize/ev267_��������ţ�_a.jpg");

	CreateSE("SE02","se���L_����_�z_̤���z��01");

	Delete("�}ɫ�\");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("����EDEX", 300, 0, 20, 0, 0, 1000, null, true);

	Wait(500);

	Move("����EDEX", 8000, @0, -60, DxlAuto, false);
	Wait(6000);
	FadeDelete("����EDEX", 1000, true);

	Wait(1500);

	CreateTextureEX("����ED02", 16100, @0, @0, "cg/ev/ev267_��������ţ�_b.jpg");
	Fade("����ED02", 2000, 1000, null, true);
	Delete("����ED");

	Wait(2000);

	CreateSE("SE03","se����_냇��_�z�ǈ���02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 30000, "#FFFFFF");
	Delete("����ED*");
	CreateTextureSP("����ED03", 16200, @0, @0, "cg/ev/ev267_��������ţ�_c.jpg");
	CreatePlainEX("�}��д", 16210);
	SetBlur("�}��д", true, 2, 500, 80, false);
	Fade("�}��д", 0, 500, null, true);
	FadeDelete("�}��д", 1450, false);
	Zoom("�}��д", 1500, 1300, 1300, null, false);
	FadeDelete("�}ɫ��", 1000, true);

	Wait(500);

	SetVolume("@m*", 3000, 10000, null);

	Wait(1500);

	ClearFadeAll(5000, true);

	#SYSTEM_play_speed = #play_speed_plus;
}













function EventFlag()
{
	#bg004_�ɤӤ���a_03=true;
	#bg012_�`�}�kǰ���x_02=true;
	#bg013_�`�}���d_02=true;
	#bg020_ɽ�}�ӵ�_03=true;
	#bg023_��Դ̫�μ�a_02=true;
	#bg028_��亣ǣȣѻ���_02=true;
	#bg032_��ᦌm�������a_03a=true;
	#bg033_���Lլ����˽��_02=true;
	#bg033_������һ��_03b=true;
	#bg034_���Lլ����ga_02=true;
	#bg038_���`���å�ֱ��b_01=true;
	#bg041_����_02=true;
	#bg045_���ӘS�ǹ������g_02=true;
	#bg046_���΍u�Q�y̨_03=true;
	#bg046_���΍u��̨_03=true;
	#bg057_���ӘS������_02=true;
	#bg061_���ӘS�Ǵ����Ta_03=true;
	#bg061_���ӘS�Ǵ����Tb_03=true;
	#bg065_���ӘS���ڹ�_03=true;
	#bg068_���ӘS���ڲ���_02=true;
	#bg070_���ӘS�����A�Υ۩`��_01=true;
	#bg070_���ӘS�����A�Υ۩`��_02=true;
	#bg071_���ӘS���ڏ������_01=true;
	#bg087_���Bۡ���vǰa_02=true;
	#bg088_�߼��ۥƥ�Υ۩`��_01a=true;
	#bg093_ɽ�g�δ�a_03=true;
	#bg097_ܥԽ�����ڹ�β���_03a=true;
	#bg100_�����w_02=true;
	#ev128_�����ι�_b01=true;
	#ev228_���y��܊��_a=true;
	#ev235_�Ȥ�����׏�_f=true;
	#ev235_�Ȥ�����׏�_g=true;
	#ev303_����VS���=true;
	#ev805_�����}����`�����Σ�_c=true;
	#ev930_����늴Œi����_a=true;
	#ev933_�y�Ǻ����_b=true;
	#ev935_����ϥ���_b=true;
	#ev944_�����֣ӻ�҆��_b=true;
	#ev950_ϥ��ؓĚ���=true;
	#bg005_ɽ��_03=true;
	#bg006_���w�β���_01=true;
	#bg010_���������Qb_01=true;
	#bg013_�`�}���d_01=true;
	#bg020_ɽ�}_03=true;
	#bg039_��������ϯ��_01=true;
	#bg040_���΍uȫ��_03=true;
	#bg047_�������_�a_02=true;
	#bg047_�������_�a_03=true;
	#bg048_�������_���ե���_02=true;
	#bg049_�������_סլ�إ��a_01=true;
	#bg050_�������Tǰ_03=true;
	#bg051_�����Ҿ��g_03a=true;
	#bg052_�����ҵ���_03b=true;
	#bg053_�����Ҥ�ͥ_03=true;
	#bg055_������_02=true;
	#bg073_��a_03=true;
	#bg073_��c_02=true;
	#bg073_���ϴ��F����_03=true;
	#bg080_�w�д�����Aa_01a=true;
	#bg080_�w�д�����Ad_01a=true;
	#bg091_ɽ�P��һ��_01=true;
	#bg092_ɭ�ε�b_01=true;
	#bg100_�����w_01=true;
	#ev102_����Ű��_b=true;
	#ev126_�཭�ˤ�ޤ�Ц��_a=true;
	#ev126_�཭�ˤ�ޤ�Ц��_b=true;
	#ev126_�཭�ˤ�ޤ�Ц��_c=true;
	#ev170_�Х������L���䚢_c=true;
	#ev172_�����å��`���ᥤ�ե饤Mk4C��_b=true;
	#ev215_���Ф˷�Ū��������=true;
	#ev237_�դ˕N�ä�����_b=true;
	#ev238_�����̫ꖤ��¤Ƚ���_b=true;
	#ev242_���񼤤����k��_e=true;
	#ev243_�رܙC�Ӥ�Ȥ����_a=true;
	#ev503_�����i������=true;
	#ev805_�����}����`�����Σ�_b=true;
	#ev925_Ұ̫����Ƭ_e=true;
	#ev925_Ұ̫����Ƭ_f=true;
	#ev930_����늴Œi����_d=true;
	#ev932_�y�Ǻ���ȭͻ��_b=true;
	#ev993_һ�����åȥ���=true;

	#bg010_���������Q_02=true;
	#bg013_�`�}���b_01=true;

}



..//������ָ��
//�Υե�����