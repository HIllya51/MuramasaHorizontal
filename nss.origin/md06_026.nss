//<continuation number="1080">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_026.nss_MAIN
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
	#ev261_�����ᥤ�ɤ���Щ`�����=true;
	#ev262_�����ᥤ�ɤ��󤴷���_a=true;
	#ev262_�����ᥤ�ɤ��󤴷���_b=true;
	#ev262_�����ᥤ�ɤ��󤴷���_c=true;
	#ev262_�����ᥤ�ɤ��󤴷���_d=true;
	#ev262_�����ᥤ�ɤ��󤴷���_e=true;
	#bg089_���Bۡ�F�ˤ��g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_027.nss";

	//��ꥳ�쥯������á���������������
	ReConquest();
	#md06_026=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene md06_026.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//============================================
//��ꥳ�쥯������á���������������
if(!$PLACE_reco){
//============================================
..//������ָ��
//ǰ�ե����롡"md06_025.nss"

//���\
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100,"bg089_���Bۡ�F�ˤ��g_01.jpg");
	FadeBG(0,true);

	CreatePlainEX("�}��д", 990);
	SetShade("�}��д", HEAVY);

	Delete("�ϱ���");

	Wait(1000);

//============================================
//��ꥳ�쥯������á���������������
}else{

	//״�B���x
	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100,"bg089_���Bۡ�F�ˤ��g_01.jpg");
	FadeBG(0,true);

	CreatePlainEX("�}��д", 990);
	SetShade("�}��д", HEAVY);

	//�ꥳ����Ĩ��
	RecoIn();
}
//========================================================

	SetFwC("cg/fw/fw����_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md06/0260010a01">
������������ô����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260020a01">
���������ν��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260030a00">
��ĳ����������˵�ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260040a01">
��Ҳ������΢��ƫ������⡭��
�϶��ǰɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣��ᥤ�ɴ���
//�����뤤�����ñ����������}
	FadeDelete("�\", 1000, true);
	SoundPlay("@mbgm22", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ڳ�վ����ĳ�ùݵ�һ�����䡣
��λ��һ¥���ǹ�Ӧ�·��ķ�װ����ꡪ����
Ϊ���ȳ���׼����Ҫ�ķ�װ�����ֵ��ڡ�
�ù��ڲ������ټ���

����װ������ȫ��������Ϊ��ױ����õ�
�·��У�������һ�׿��������ҵ�Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}���٣�", 1010, Center, InBottom, "cg/ev/resize/ev261_�����ᥤ�ɤ���Щ`�����l.jpg");
	Fade("�}���٣�", 1000, 1000, null, true);

	Move("�}���٣�", 9000, @0, 0, DxlAuto, false);
	Wait(5600);
	FadeDelete("�}���٣�", 1000, true);

	WaitKey(1000);

	CreateWindow("�}��", 5000, 192, 0, 400, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);

	CreateTextureSP("�}��/�}����", 1000, 30, -230, "cg/ev/resize/ev261_�����ᥤ�ɤ���Щ`�����sex.jpg");

	Move("�}��/�}����", 3000, -110, @0, DxlAuto, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);
	Fade("�}��д", 3000, 1000, null, false);

	SetFwR("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md06/0260050a00">
������������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260060a01">
������������ʲô��
������Ҫ˵�Ļ�������ʵ����̫
���ʵġ�����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260070a00">
�����ȷ�ǹ�����Ů�ķ�װ��
��ֻ���������������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260080a01">
������𡭡���

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260090a00">
����ѽ���ܺá�
���ţ�̫���ˡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260100a01">
����Ȼ����ô�����Һܿ��ġ�
���������������ڿ���ȥ���ǲ��ˡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260110a00">
�����鲡�����°������ϵġ�
�������Զ������ֲ�����
���Ա����⡣��

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260120a01">
��ʲôѽ��
���ǣ���������Ӧ����Щʲô����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260130a00">
��Ҳ���ء���
���˲��ˮ�ɡ���

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260140a01">
�������أ���

{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260150a00">
�����������ϵ��Ǹ�����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260160a01">
�����������
������˵�����ں��Ķ��棬
�Ȳ�������������߰ɡ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260170a00">
�����������һ�¡���

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260180a01">
���ԵȵȰ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ä��餳���ǥ��٥��һ���ե��`�ɥ����� inc�Ѿ�
	Zoom("�}��", 1000, 0, 2000, null, false);
	Fade("�}��д*", 1000, 0, null, true);
	Delete("�}��");

//�������㤫���㡣
//�����ä����
	OnSE("se�ճ�_ʳ��_����ʂ�_L", 1000);

	WaitKey(3000);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se�ճ�_���������", 1000);

	WaitKey(500);

	SetFwR("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md06/0260190a01">
���ۣ��ۡ���
����Ǹ����û�ù����ֶ���������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260200a01">
�����������ˣ��øϽ����ɾ�����

{	OnSE("se�M��_���ߥ���_���`��01", 1000);
	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260210a00">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`��
	OnSE("se�M��_���ߥ���_���`��02", 1000);

	SetFwR("cg/fw/fw����_�@��b.png");
	SetComic(@280, @0, 8);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0041]
//��������
<voice name="����" class="��������" src="voice/md06/0260220a01">
��Ϊʲô���ж���!?��

</PRE>
	SetTextEXR();
	TypeBeginTimeRI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteComic();

	SetFwR("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0042]
//��������
<voice name="����" class="����" src="voice/md06/0260230a00">
���������ǲ��ǡ�
���һ����ǡ�����Щʧ�������ˡ���

{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260240a00">
���ò����װѻ궼�����˻�������

{	FwR("cg/fw/fw����_����b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260250a01">
����ȥ�Ķ��˰�������

{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260260a00">
�������⣬�����ɡ�
������ʧ�ܶ��ٴζ�û��ϵ����

{	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260270a01">
�����ᡣ
���ȵ���������衣��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㤫���㡣
	CreateSE("SEL01","se�ճ�_ʳ��_����ʂ�_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEX("�}����", 1000, -430, -570, "cg/ev/resize/ev261_�����ᥤ�ɤ���Щ`�����m.jpg");
	Fade("�}����", 1000, 1000, null, true);

	WaitKey(1000);

	SetVolume("SEL*", 1000, 0, null);
	Fade("�}����", 1000, 0, null, true);

	SetFwR("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md06/0260280a00">
������������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260290a01">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㤫���㡣
	CreateSE("SEL01","se�ճ�_ʳ��_����ʂ�_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Move("�}����", 0, -283, -1060, null, true);
	Fade("�}����", 1000, 1000, null, true);

	WaitKey(1000);

	SetVolume("SEL*", 1000, 0, null);
	Fade("�}����", 1000, 0, null, true);

	SetFwR("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md06/0260300a00">
������������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260310a01">
�������Ǹ�����

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260320a00">
��ʲô����

{	Fade("�}����", 1000, 1000, null, false);
	FwR("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260330a01">
���Һ�����������ߡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260340a00">
��Ϊʲô����

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260350a01">
����Լ�о���һ˿а���

{	FwR("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260360a00">
���ף���

{	FwR("cg/fw/fw����_�դ�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260370a01">
������û��������֮�°ɣ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260380a00">
�������ˡ���

{	FwR("cg/fw/fw����_�@��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260390a01">
�����ٷ���һ�°���
�����¶����������˰ɣ���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260400a00">
�������ҳ����ˡ���

{	FwR("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260410a01">
����������������
�����������ֵط�����

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260420a00">
������Ҳ���ܴ���������ȥ�ɡ���

{	Move("�}����", 10000, @0, -260, DxlAuto, false);
	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260430a01">
������������

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260440a00">
������������

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260450a01">
��������������������

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260460a00">
��������������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����*", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������
��
�����������̾�˿�����
���·����޼ƿ�ʩ��ؿ����ҡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md06/0260470a01">
���������ǵġ�
����Ҫ����ô������

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260480a00">
���ҽ��͸������ɡ�
���ܼ򵥵��¡���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\", 15000, "BLACK");
	Fade("�\", 1000, 1000, null, true);

//���ţ֣��ᥤ�ɤ��󤴷��ˡ�

	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureSP("�ᥤ��01EX", 4210, -250, -30, "cg/ev/resize/ev262_�����ᥤ�ɤ��󤴷���_al.jpg");
	Delete("�}����");

	WaitKey(1000);

	FadeDelete("�\",1000,true);

	SoundPlay("@mbgm28", 0, 1000, true);

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md06/0260490a01">
��������̬����������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260500a00">
����ʧ�񰡡���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�ᥤ��01EX", 3000, @0, -200, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ô��������ҵ���ϥ֮�䡣
  ǿ�����ڳ�һ�ֿ����𾴵����ơ�

�����������Ѿ�¡��Ĳ�λ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�ᥤ��01", 4200, Center, Middle, "cg/ev/ev262_�����ᥤ�ɤ��󤴷���_a.jpg");

	Move("�ᥤ��01EX", 3000, @0, @-200, null, false);
	FadeDelete("�ᥤ��01EX", 1000, false);

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md06/0260510a01">
�����ǵġ���ͻȻҪ�������¡���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260520a00">
��Ҫ�޾ͺ��Լ����·��ɡ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260530a01">
���������Ҵ��ϵİɣ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260540a00">
����Ҳ�����Ǹ����ƻ���ܺ��ߡ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260550a01">
���治֪������˵ʲô������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260560a00">
���������������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260570a01">
���֣���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260580a00">
�����õ���ֻ����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260590a01">
���ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����

	CreateTextureEX("�ᥤ��02", 4400, @0, @0, "cg/ev/ev262_�����ᥤ�ɤ��󤴷���_b.jpg");
	Fade("�ᥤ��02", 1000, 1000, null, true);
	Delete("�ᥤ��01");


	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md06/0260600a01">
��������ס�ˡ�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260610a00">
����Ҫ���š���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260620a01">
��������������Ħ���𣿡�

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260630a00">
���ţ�����Щ�ͺá���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260640a01">
��������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����ϸ����ָ�������س鶯�š�

����ȻҪ�۵�����������ɬ��
�������ֻ��޷�����Ϊ��еĴ���
�������񾭡�

�����˽�������ĸо���
��Ҳ����˵�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md06/0260650a01">
�������������¾�Ȼ�е����ġ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260660a00">
�������ƺ�������������
���Ƶ��¡�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260670a01">
�������Ǵ����ǴΣ�
����������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260680a00">
�������󵨶�ǿӲ���¶����ó�����
���̶ֳȲ���С��һ������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260690a01">
�������ء�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260700a00">
���ֿ�����΢�õ�������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260710a01">
��������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260720a00">
���ԡ�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260730a01">
����������
���ܾ��ÿ�ʼ�е�����ˡ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260740a00">
�������������󡣡�

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260750a01">
������ָ�����
����ָ�������֮��ġ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260760a00">
��������Ǹ��
��<RUBY text="��">��</RUBY>�����һ�ֲ�����

//��������
<voice name="����" class="����" src="voice/md06/0260770a00">
����ͷ�Ի����ѵ�ʱ��Ԥ�ȵ�Ǹ����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260780a01">
��ȴ�����ϰ����ء�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260790a00">
����������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260800a01">
�����䱾�����ˡ�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260810a00">
����������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260820a01">
���ǡ��������ԡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����

	CreateTextureEX("�ᥤ��03", 4600, @0, @0, "cg/ev/ev262_�����ᥤ�ɤ��󤴷���_c.jpg");
	Fade("�ᥤ��03", 1000, 1000, null, true);
	Delete("�ᥤ��02");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������ԥ��һ�£��������ճĤ��
��ֻ�����Ա���ͷ�����ĳ̶ȡ�

�������к���ָȫȻ��ͬ��
����صĴ̼����ܳ�Ϊ�ԸС�

��������ͷ�ĽӴ��治������
���˷ܸ�Ҳ�������

�����������ͬ����˵���ð㣬�������������š�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="��������" src="voice/md06/0260830a01">
�����������𣿡�

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260840a00">
���ܺá���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260850a01">
���ҵ��Ǿ��úܲ�����˼����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260860a00">
��������ˡ�������˲�Ҫ����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260870a01">
���������������������ǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������������ô˵��������Ȼ�ڼ�����
����ͷ���ڷ����ǰ�ˣ������촽�����š�

����Ȼ���������Ȳ�֪�Ƿ���У�
��Ч��ȴ��������
���о���һ˿��ʹ���Ҳ��ɵ��������´���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md06/0260880a00">
���ԣ�������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260890a01">
����������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260900a00">
������������С���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260910a01">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�ᥤ��04", 4800, @0, @0, "cg/ev/ev262_�����ᥤ�ɤ��󤴷���_d.jpg");
	Fade("�ᥤ��04", 1000, 1000, null, true);
	Delete("�ᥤ��03");



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����Ŀ¶��֮ɫ�Ĵ������Ҽ�װ�Ӷ�������
��ץס���Ĳ��ӣ������ߴ١�

����Ȼ����ŭ�����ҵĺ������ԣ������������˿��ݡ�

����������ڴ��ļз����롣
�����ų�ª֮��������֮���໥���ڵ�ģ����
���������ܹƻ�

���˷�֮����������θв������

���������ˡ�
��ʵ�ڡ���̫�����

�������������͡�

��һ�뵽��Ȼ�ô����������£���ɫ��ϲ�ø�
��������ǡ�

�����ܸе����󣬴�������Ψ���Ǵӡ�
�����к����ҵķ����������ñ�׾����ͷ
Ħ�������š�

���������������
�������أ������ز���߳���

�����˼������͡�

���޷����ܡ�

����Ҳ��ʼ�����ж���
�����ָ����������գ����������ڿ��н�����

�������Ǿ������ܣ�����������üͷ��
���������Ҳ��û���㽫���³���

��̰�������������ҵ����̡�
�������������ڲ಻��Ħ����Ȼ���ٴ������������

���ܲ����ˡ�

�������ۻ����Ϊ��
��������������������

�����Ｋ�ޡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md06/0260920a00">
����������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260930a01">
����������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260940a00">
����������ߡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����ڴ�����ǰ��
  ��������

��Ȼ��������û��Ӧ����֮ǰ��
�������䡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����
//����֣����

	CreateColorEX("�ץե�", 15000, "WHITE");
	Fade("�ץե�", 100, 1000, null, true);
	CreateTextureSP("�ᥤ��05", 5000, @0, @0, "cg/ev/ev262_�����ᥤ�ɤ��󤴷���_e.jpg");
	Delete("�ᥤ��04");
	Fade("�ץե�", 300, 0, null, true);

	Fade("�ץե�", 100, 1000, null, true);
	FadeDelete("�ץե�", 1500, true);

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/md06/0260950a01">
����ѽ��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����ѹס��������Ҫ���ܵĴ�����
��Ҳ��׼����ͷת��һ�ߣ���������������

���Ա������۽ǡ���ͷ��
������������

��û�뵽�Լ�������Ȼ��ô�ࡣ
��СС�����ϱ������ǵ�Һ�塣

  �޷������Ĵ�����Ψ�а��ڽ�����һ���С�
  ֻʣ����Ƥ����գ����

��ֱ������������һ��Ϊֹ��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/md06/0260960a01">
���š���������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260970a00">
������һ���þ��¡���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0260980a01">
����������
�������ˡ�������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0260990a00">
����û�С���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0261000a01">
��������

//��������
<voice name="����" class="��������" src="voice/md06/0261010a01">
�����ǡ�����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��ûʲô�ɲ����ǵġ�
���ҵ�������û�е������㡣

��������Ȼ��ͦ��ʡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/md06/0261020a00">
������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0261030a01">
��������Ҫ��ʲô����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0261040a00">
���ܿ����֪���ˡ���

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0261050a01">
���Ǹ�����������
�������Ѿ���ֻ�ǿ����ˣ�
������ر�¶��Σ�հ�����

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0261060a00">
����˵���ǲ��ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������ä��餳����CG�Ф��椨 inc�Ѿ�
	FadeDelete("�ᥤ��*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���ұ�����������������˷ܸвٿ��š�

���������������壬������������
��ʹ���ڳ������β���������ˡ�

��Ȼ�������ƿ������·��°ڣ���ȥ���¡���
�����������򲻴�������е���ʱ�䡣��

��������һ���Ӿ����ܰɡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/md06/0261070a01">
��������������

{	NwR("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0261080a00">
����ô����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����������аɡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{
	//���ե��`�ɥ�����
		ClearWaitAll(1500,1500);
	}
//============================================



}

..//������ָ��
//�Υե����롡"md06_027.nss"