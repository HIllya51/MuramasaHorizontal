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

scene mc04_052.nss_MAIN
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
	#ev209_ľ�˱����A������������֦=true;
	#bg058_�ҿ�a_01=true;
	#bg058_�ҿ�b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName

	#��׉���K�� = true;

	$PreGameName = $GameName;

	$GameCircle=0;
}

scene mc04_052.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_051vs.nss"

//����
//��ѩ�����������
//��ɭ
//����������������ä���i����
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg058_�ҿ�a_01.jpg");
	CreateTextureSP("�}����11", 9, Center, Middle, "cg/bg/bg058_�ҿ�b_01.jpg");
	FadeDelete("�ϱ���", 3000, true);
	WaitKey(1500);
	FadeDelete("�}����10", 2500, true);
	WaitKey(1500);
	CreateColorSPadd("��", 28000, "WHITE");
	DrawTransition("��", 2500, 0, 1000, 1000, null, "cg/data/effect_01_00_0.png", true);
	Delete("�}����11");

//	SoundPlay("@mbgm33",0,1000,true);

	//$SYSTEM_effect_drop_image = "cg/ef/��ä���_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/efDro_ѩ001.png";
	$SYSTEM_effect_drop_dencity = 30;
	$SYSTEM_effect_drop_speed = 7;
	$SYSTEM_effect_drop_swing = 128;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("�}����ѩ", 4100, Center, Middle, 1030, 580, "Drop");
	SetAlias("�}����ѩ","�}����ѩ");
	Fade("�}����ѩ", 0, 1000, null, true);

	CreateTextureSP("�}����12", 10, Center, Middle, "cg/bg/bg092_ɭ�ε�b_01.jpg");
	FadeDelete("��", 2500, true);
	CreateSE("���륤�ƥޥ�", "se����_����_�i��_ؓ��_L");
	MusicStart("���륤�ƥޥ�",0,1000,0,700,Dxl3,true);

	Wait(2500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ɭ�ּ������š�

�������ޱȳ��ء�
������Ƿȱ�˲��ٶ�������֪Ϊ��ȴ��ƽ��
���ӳ��ء�

�����������ҲҪ����ȥ��
������ͣ�½Ų���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/mc04/0520010a01">
����������������


{	SetVolume("���륤�ƥޥ�", 1500, 0, null);
	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0520020a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0520030a01">
���Բ���
�����ƺ�����ֻ�ܣ��������ˡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc04/0520040a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ĵĻ���ƺ�����һ���ˡ�

��������תͷȥΪ�����е�������û�С�
������һ�����������Ҫ������´��ﵽλ
�����þ�ȫ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc04/0520050a00">
��лл����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc04/0520060a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ȥ����
	Wait(1000);
//	SetVolume("@mbgm*", 1500, 0, null);
	OnSE("se���L_�n��_�zܞ��03", 1000);
	Wait(2500);
	CreateColorEX("�\Ļ��", 15000, "BLACK");
	Fade("�\Ļ��",2500,1000,AxlAuto,true);
	Wait(500);
	CreateSE("���륤�ƥޥ�", "se����_����_�i��_ؓ��_L");
	MusicStart("���륤�ƥޥ�",0,1000,0,500,Dxl3,true);
	Wait(1000);
	Fade("�\Ļ��",1500,0,AxlAuto,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������һ�ˡ�
�������ּ�С����

�������ࡣ
��������أ���ʶģ������֪��������Χ��ñ���̹ǡ�

����ʹ�ࡣ
����Ϊ�����Ѿ�Ҫ����ͷ�˰ɡ�

����ǿ�ȼ���˥�ߵ�����������
����������ȥ��ʹ�ࡣ
������ֹͣ�����޴�����Ϊ��һ�����ܽ���ʹ���˰ɡ�

�����ǣ��һ���������
���ص������֮ǰ��������
</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������������
//���Ф��ꡣ���줿��

	CreateColorEX("siro", 15000, "WHITE");
	Fade("siro", 300, 1000, null, true);
	CreateTextureSP("�}����11", 11, Center, Middle, "cg/bg/bg092_ɭ�ε�b_01.jpg");

	SetShade("�}����12", SEMIHEAVY);
	Zoom("�}����12", 0, 2000, 2000, null, true);

	FadeDelete("siro",300,true);
	Fade("�}����ѩ", 1000, 0, null, false);
	FadeDelete("�}����11", 1000, true);
	SetVolume("���륤�ƥޥ�", 0, 0, null);
	Wait(1000);
	Move("�}����12", 300, @0, @-400, AxlAuto, false);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, AxlAuto, "cg/data/slide_02_01_1.png", false);
	OnSE("se����_�n��_ܞ��03",1000);
	Wait(1000);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������ʶ����ʱ������Ȼ̱���ڵء�
�����ϵ������ƺ������Ĵ�����

���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc04/0520070a00">
�����У�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��һ��Ҫ������

��������������

�������룬������ط�����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc04/0520080a00">
��һ������������˭���ᣩ

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ô��İɡ�
������ɱ������Щ���ǡ��ڱ�ɱ��˲�䶼����ô��ɡ�

����������
�������ţ��һ���������

���Ҽ�̤����Щ��ʹ��Ը����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc04/0520090a00">
�����ԣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��<RUBY text="����">����</RUBY>��
���һ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣������饹��Ҋ�Ϥ���ɭ�ι⾰���ܤ䤱�Ƥ���
//�����Ϥ��ä��褦���ݳ���

//inc�ñ�������_�J�Τ���٤�CG��ev208_���ڤι⾰_a
//��������ݳ����زĿsС���줿�Τǁ������

	CreateColorEX("siro", 15000, "WHITE");
	Fade("siro", 300, 1000, null, true);


	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/bg/bg058_�ҿ�b_01.jpg");

	CreateTextureSP("�}�ţ�a", 6000, Center, Middle, "cg/bg/bg058_�ҿ�b_01.jpg");
	CreateTextureSP("�}�ţ�b", 5500, Center, Middle, "cg/bg/bg058_�ҿ�b_01.jpg");
	CreateTextureSP("�}�ţ�c", 5000, Center, Middle, "cg/bg/bg058_�ҿ�b_01.jpg");

	SetShade("�}�ţ�a", NOMORE);
	SetShade("�}�ţ�b", SEMIHEAVY);
	SetShade("�}�ţ�c", EXTRAHEAVY);

	Fade("�\Ļ��",600,0,null,true);
	FadeDelete("siro",300,true);

	FadeDelete("�}�ţ�a", 1500, true);
	Fade("�\Ļ��",500,200,DxlAuto,true);
	FadeDelete("�}�ţ�b", 500, true);
	Fade("�\Ļ��",1500,0,AxlAuto,true);
	FadeDelete("�}�ţ�c", 1500, true);
	FadeDelete("�}����12", 0, true);
	Fade("�\Ļ��",600,0,AxlAuto,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ǿ������֧�����ӡ�
��ҧ�����أ����ֳ���

��һ��Ҫվ������
��һ��Ҫ����ȥ��

������һ��㡣
���ص������ȥ��

������������֦���ȥ��

�����Ǹ����ߡ�
�����о��ն�����֮����ˡ�

����Ӧ��ɱ���ն��������ˡ�

���ҵ�������Ҫ���������ϣ�������������
����Ϊ���Ǵ��ű���ɱ�������ǵĻںޣ�
��ȡ���ҵ�������

����Ϊ�������������Ե��Ƶķ�ŭ��

����������������塣
����ȻҲ����Զ�����ڵı�Ӧ��

���������š�
����Ҫ���š�

������������Ҫ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣�����֦���؂������ܤ䤱�Ƥ�Τ������狼��ʤ�
	CreateSE("���륤�ƥޥ�", "se����_����_�i��_ؓ��_L");
	MusicStart("���륤�ƥޥ�",0,1000,0,1000,Dxl3,true);

	Wait(2000);
	CreateTextureEX("���֤�", 4000, Center, Middle, "cg/bg/bg092_ɭ�ε�b_01.jpg");


	SoundPlay("@mbgm18",0,1000,true);
	Fade("�}����ѩ", 2000, 1000, null, false);
	Fade("���֤�",2000,1000,DxlAuto,true);
	FadeDelete("�}�ţ�", 0, true);

	SetVolume("���륤�ƥޥ�", 0, 0, null);

	Wait(1000);

//	SoundPlay("@msong02_full",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mc04/0520100a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�����ˡ�
�������

�������ˡ�

����������֦��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc04/0520110a00">
����ξ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������ϣ����
���������С����

���Ҳ�֪����û�з���������
������ȴû���κεĲ�����

�����Ǵ���ĸ����ִ���ߡ�
�����ԣ�û�й�ϵ��

�������š�

����������֦����ˣ�����������Ǹ���
���˸��ҵ����δ�����롣
��һ����������Ҳ�֪���Ķ�����

���������������������෴�ı�������
�ļ�����Ҳ��һ����
�����������ĵĻ���Ҳ��һ����

�������������ǣ��ƺ�ȷʵ��ˡ�
��
��
���������ǣ��������鶼�Ѿ�����ν�ˡ�

����Ȼ��û���κ����壬�ֺα������ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣����������֦���ļs
	EfRecoIn1(18000,600);
	CreateTextureSP("�Ҥ��ޤ���", 4100, Center, Middle, "cg/ev/ev171_����֦�˹򤯾���.jpg");
	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Լ���˻���ն���������������

����̵ġ�
�����޴ȱ��ġ�
�����Բ�����ˡ�ġ�

�������ȫ����

��������˵�����ͺá�

�����Բ�˵��

�����Ů�ˣ��㲻��������
�˼�Ķ�ħ��
�����ڴն�������˵������֮ʹ��
û���κ�����

����������֦��
���Ҹ�л�㡣

��ȫ���ĵظ�л�㡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);
	FadeDelete("�Ҥ��ޤ���", 0, true);

	Delete("�}����ѩ");


//��С�������ȡ��ۥ磻�ȥ�����
	Wait(1500);
	FadeDelete("���֤�", 0, true);

	EfRecoOut2(600,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����ʲô��ů�Ķ����������˲��ӡ�
��
�����ǡ������С�������

����������Ƭ�̣��ڻ���ɢ��
������ӭ���ˣ�����������������

������֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/mc04/0520120a00">
���������ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���������һ����
���ҵ���꣬������һ��СС�Ĳ�����

������ʹ�ࡣ
��Ҳ����ʹ��

��ֻ��΢΢�ģ���͵ġ�

�����ԲŲ�����
��
����������ն�����������Ӧ����Ҫ����
�п�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������ä��ơ��ե��`�ɥ����Ȥ���
	Wait(1000);
	CreateColorEX("�\Ļ��", 25000, "BLACK");
	Fade("�\Ļ��",2500,1000,null,true);

	Delete("�}����ѩ");

	Fade("�ۤ襤�Ȥ�����",0,0,null,true);
//���ţ֣���θ�Ԫ������l��������֦�����������
	Wait(1500);
	CreateTextureSP("�}����01", 5000, Center, Middle, "cg/ev/ev209_ľ�˱����A������������֦.jpg");
	Fade("�\Ļ��",2500,0,null,true);

	Wait(1500);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��������û����Ϣ�����ա�
��������������㡣���ƺ���һ�㣬ֻ��һ���Ĳ�����

����Щ��������˯����
��������Ц�ݵģ����������ı��顣

����Ȼ�Ѿ���Ҳ�޷����������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0520130a03">
��ɵ�ϣ�

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���վ������Ϊֹ��Ҳû��̻���Լ���

���������߾ͺ��ˡ�
��������Ӧ���뵽���Լ����Բ�������
�ط���ȥ��

��������ȴѡ����������ս����
������Ҳ����Ҫ��������֦���뷨��

����Ϊ���Ǹ�������Ҫɱ���Լ���Ů�˶�ս����
������������ֻ��Ϊ����Ҫ�ػ����Ǹ�Ů�ˡ�

��Ȼ�����ˡ�

�������޴���
���޿ɾ�ҩ���޴�������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwL("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0520140a03">
�����ǣ�

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���޴��ģ�������˭�ء�

������Ҫ�ػ�����֦��������֦ս��������
  �����������࣬����������Ĩɱ������֦��

�����ˡ�
���������ɡ�

���޿ɾ�ҩ��ɵ���ǻ���Կ���
��Ȼ���ϲ�ɺصأ������ˡ�

��һ����ֻ���������ѡ�

�����������û�п־塣
��Ҳû�в�����

������������
������������

��һ����˼��
��ֻ�Ǳ�����ͬ���ѡ�

�������������Ǵ��㿪ʼ�����������㿿����
ֻ�������졣
�����ԣ�����������֮�䣬��û��ʲô
���ʵĲ��

����ʹ����������������Ϸ�̶ȵĲ��Ҳ�������塣
��ֻҪ����ʵ���Լ������õ������õ�����
���������ˡ�

����������Ľ����������ʣ��Դ�������֦��˵����ȷ
�Ĺ��ޡ�
���Դն�����Ҳ�ǡ�

����ֿ������
����ֿ������

����Ϊ��������֦��
����Ϊ�ն�������

���������Ϊ�ġ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0520150a03">
��ι��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������Ѿ��޷���Ӧ����˵����

��������Ȼ�޴���
����Ȼ��ĺ��޴���

������ֻ����ô���ɡ�

��û�а취ѡ�������ĵ�·�ء�

��������������һͬ��ȥ����
���ݳ�һ��������Ϸ�硣

�����׾�ӣ���˻�����ȴû���κ�
һ�����ڡ�
��ֻ���������ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwL("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/0520160a03">
�����԰���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����������ֻ�����������˵Ĺ��¡�

���������˾�һ��Ц�ɡ�
����ָ�ų���ǣ���Ц�����޴����ŵĳ�̬��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���׉������
/*
//inc���ñ������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_��׉��.png");
	Wait(4000);
	FadeDelete("�ϱ���", 2000, true);

	Wait(1000);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 500, 200, 200, "cg/sys/Telop/lg_�����.png");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_��׉��.png");
	FadeDelete("�ϱ���", 1000, true);
*/

	SetVolume("@mbgm*", 6000, 0, null);
	ClearWaitAll(5000, 3000);


//������������������������������������������������

}

..//������ָ��
//�Υե�����