//<continuation number="1450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_021.nss_MAIN
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
	#bg034_���Lլ����ga_03a=true;
	#ev259_������_a=true;
	#ev259_������_b=true;
	#ev259_������_c=true;
	#ev259_������_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_022.nss";

	//��ꥳ�쥯������á���������������
	ReConquest();
	#md06_021=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene md06_021.nss
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
//ǰ�ե����롡"md06_020.nss"


//�����Lլ

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100, "bg034_���Lլ����ga_03a.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

	SoundPlay("@mbgm33", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ؾپƱ���
�����º���֪ζ�ľơ������޲��ɼ���

����Ȼ������������

��ƽϢ����֮�����Ҳ�ã�
������ƽ��֮�����Ҳ�ա�

���Ҹ���������Ϊ����

�����������Ԥ��֮�е��¡�

������żȻһ�Ρ�
�����������γ��ѡ�

��������˶��ѡ�

��ʣ�µı�����ʵ��
��
�������ң��վ�ʲô�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md06/0210010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����뻹���Ц��

��ɱ�˷���Ҫ�����Լ��Ĺ�ȥ����
����Ҫ������Ҫ���棬����˵�ú�����

��Ҫ�ε�����Ϊ�ǲ��ܵ�����˺���׳�

����ϧ��δ�õ���������ӡ�
����ȴαװ��ԭ�α�¶��

��αʥ�����Գ�ǵ���̬ʧ���˳�����

����Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md06/0210020a01">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210030a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210040a01">
������Ϊ�������úܺá�
������Ϊ�˸е��߳ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������߳ܡ�

����Ϊ�β��øе��߳ܡ�
���������ˡ�

�������˶��١������١��������������
��������������ͳ���˺͹⣬�ұ����ػ��ļ��ˡ�
��
����Ϊ�˵ĳ��衣

����ȫ���粥�����ѡ�
�������л�����ֹ����ȴû��������
��
����Ϊ�˵ĳ��衣

��Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md06/0210050a00">
����Ȼ���衣
����Ӧ�øе�����ľ��ǡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210060a01">
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210070a00">
��������֮���
��һ����û���⵽��Ӧ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��û�а��շ����ܵ��Ʋá�
�������������֮�£�һ����û����

��ʲô��û����ʲô�������ˡ�
����ң����ػ��š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md06/0210080a00">
������ǳ��衣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210090a01">
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210100a00">
������Ϊ�λ��š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210110a00">
���ң�Ϊ�λ��š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210120a01">
������������

//�����ߥ���ŭ
{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210130a01">
��������������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210140a00">
��Ϊʲô������

//��������
<voice name="����" class="����" src="voice/md06/0210150a00">
�������ҡ�����

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210160a01">
���ء�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210170a01">
�����������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210180a00">
�����������ŵ��ʸ�Ҳû�С�����

//��������
<voice name="����" class="����" src="voice/md06/0210190a00">
���������š�����

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210200a01">
������������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210210a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//============================================
//��ꥳ�쥯������á���������������
}else{
	//״�B���x
	OnBG(100, "bg034_���Lլ����ga_03a.jpg");
	FadeBG(0, true);

	//�ꥳ����Ĩ��
	RecoIn();

	SoundPlay("@mbgm33", 0, 1000, true);
}
//========================================================

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//����ե����
//��������
<voice name="����" class="��������" src="voice/md06/0210220a01">
<FONT size="32">��ι!!��</Font>

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������
	SetVolume("@mbgm*", 1000, 0, null);


	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
//	Fade("�}�ե�", 300, 1000, null, true);

	DeleteStA(0,true);
	OnSE("se����_����_֩������¤�01",1000);

	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	DrawDelete("�}�ե�", 100, 100, "zoom_01_00_0", true);

	WaitKey(500);

	CreateSE("SE01","se����_�n��_ܞ��03");
	CreatePlainEX("�}��д", 3990);
	Fade("�}��д", 0, 500, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("�}��д", 600, 0, 40, 0, 0, 1000, Dxl2, false);

	FadeDelete("�}����20",300,true);

//���ţ֣���������֥å��졣�������������̤�ࡣ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���仯����̫ͻȻ��̫���ҡ�
��˼ά�����������ϣ���Ϣ����Ҳ�����ͺ�

�������ұ���ô�ˣ�
��˿������˿��

������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��д");

	CreateTextureEX("���ޤ���", 3010, -235, -45, "cg/ev/resize/ev259_������_al.jpg");
	Fade("���ޤ���", 1000, 1000, null, true);

	CreateTextureSP("���ޤ�", 3000, @0, @0, "cg/ev/ev259_������_a.jpg");

	WaitKey(1000);

	SoundPlay("@mbgm05", 0, 1000, true);

	SetFwC("cg/fw/fw����_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md06/0210230a01">
�������������������ǵģ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210240a01">
�����ǻ�󣡡�

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210250a00">
��ι����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210260a01">
��������˰�������
��Ϊʲô����ô��֪���룬��ô�޿��κΣ�
��ô���ް취������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210270a00">
��ʲ��ʲô��
�������Ȱ����������������

{	FwC("cg/fw/fw����_�@��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210280a01">
���������ޡ���!!��

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210290a00">
���侲�㣬������
�������侲�㡣��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210300a01">
����Ҫ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md06/0210310a01">
�����Ų�����
������ʲôҲ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210320a01">
��Ϊʲô�����̶ֳȵ��¶�
����ԭ���Լ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210330a00">
���ҡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210340a01">
����������򾡢���ϡ�ˮ��һ�࣬���ˡ�
������ʳ�ࡢ��ʳ��Һ�����һ���Ǵ���
�����Ҳ�����ô��������
��������Ҳ��ɻ��ţ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210350a00">
��������һ�¡���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210360a01">
������˵��������ú����ţ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210370a00">
�����Ҳ�����ô��Ϊ����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210380a01">
���������Լ�����ú������壬
�뷴�������룡
�������ǻ��ű�����Ѿ�����
��ֵ�ˣ���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210390a01">
����ν�����������û��������¡�
�������ھ�����˳Ӧ������ţ�
<RUBY text="��������">��͹���</RUBY>����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210400a00">
�������Ǹ�������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210410a01">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����ǽƱ硣
���������϶���״�����Թ�ȥ���¡�
��֮������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md06/0210420a00">
�������ҷ����
�������޿ɱ粵����ʵ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210430a00">
�����ԣ��ҡ���
����������ҵ��������е���
���Ρ�����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210440a01">
�����˺��ˣ���֪�������ס�
���Լ��������£��úõ����Գе���
ȫ�������Σ������˺�ΰ��ɣ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210450a01">
����������Ƿ�������������£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210460a00">
��������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210470a01">
������Ϊ�Լ��ж�����!?
�������ǳ�Խ���˵�Ӣ�ۺ�����!?��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210480a00">
�����ǡ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210490a01">
������������ϣ��޷��������ص�����
��ѡ���ӱ�������ȴ�ܻ���ȥ����
����ʤ�����������������˼����Щ��
��û�л���ȥ�ļ�ֵ����!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210500a00">
����������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210510a01">
�����԰���
����������Щ��ͨ�˶��ѣ���

{	FwC("cg/fw/fw����_���C��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210520a01">
���������������ͨ�˾ۼ����ɡ�
�����ѵ��޷���ͬ���Լ����������е�һԱ��!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210530a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210540a00">
���������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���������ε���ȷʵ����ţë��
��������Ӧ�е������Σ����޷�����Щ�ˡ�
���Ტ�۵ġ�������ɱ¾֮�

����ȴ��һ�л���ȥ��
�����ַ�ǳ�����ӵ���Ϊ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����ߥ���ŭ
//��������
<voice name="����" class="��������" src="voice/md06/0210550a01">
������������

//��������
<voice name="����" class="��������" src="voice/md06/0210560a01">
���������ðɡ�֪���ˡ�
���Ҹ������ڶ�ţ���١�û�취����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210570a00">
��ʲô����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210580a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������
//����֣����������㥳��������

	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
//	Fade("�}�ե�", 300, 1000, null, true);

	DeleteStA(0,true);
	OnSE("se����_����_֩������¤�01",1000);

	CreateTextureSP("�}����20", 4900, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	DrawDelete("�}�ե�", 100, 100, "zoom_01_00_1", true);

	WaitKey(500);

	CreateTextureSP("���ޤ�02", 3100, @0, @0, "cg/ev/ev259_������_b.jpg");

	Delete("���ޤ�");
	FadeDelete("�}����20",1500,true);


	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md06/0210590a00">
������ι������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����˿�ٴ����֣������ĸо������ҵ�Ƥ����
������Ĵ������������ӡ�

���·��ѱ���ȥ�������ָо�Ҳ�޿ɺ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/md06/0210600a01">
��Ȼ�󡭡�����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210610a00">
���������ȵȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����ֻ�ţ�����Ҫ��ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="��������" src="voice/md06/0210620a01">
��ĸ�״�������֪�ң�
����������ô���Ļ�����
���κ����˶���������Ӧ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210630a00">
��������ֻ���ϡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���������µؽ���Щʲô��

�����Բ�λ��������һ���������ϱ�����
������һ�����£��޷����Ƶ�ս��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/md06/0210640a01">
���۰����������ˡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210650a00">
���������µĻ��ͱ�������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210660a01">
���ġ����У�
���ߡ������ţ�̫û��Ϣ�ˡ���

//��������
<voice name="����" class="��������" src="voice/md06/0210670a01">
�����������⡢����Ӧ�þ͡��ͻ�
�䡢����⡢�����𣿡�

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210680a00">
������Ͱ͵���˵ʲô�ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��ʵ�������˵Ĳ����ң��������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/md06/0210690a01">
���ȵȡ��С���������
����֮��һ��Ҫ�������ף���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210700a00">
��ʲô����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210710a01">
��������Ͳ���ʲô�˲�����ˡ�
������޷����ܵͼ������淽ʽ��
���ҾͰ����ɵͼ����ˡ���

//��������
<voice name="����" class="��������" src="voice/md06/0210720a01">
����Ϊ�ҵ�������¹ڲ��������ˡ���
����ѽ!?��������һ��һ����!!��

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210730a00">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210740a01">
������������

//��������
<voice name="����" class="��������" src="voice/md06/0210750a01">
���ء�̫�ѿ��ˣ���������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210760a00">
����ô����������ƴ����ǿ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210770a01">
����Ҳֻ�����ڻ���˵���ַ�������
���С������˵��������޷�����ס�İɡ���

//��������
<voice name="����" class="��������" src="voice/md06/0210780a01">
���������Ļ����ܿ졪����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����������Ӿ���ͬǱˮʱ����ȱ��״̬���������ң�
���ϵĶ����漴���¿�ʼ������
����ס�ҷ���Ľ�ֺ����׾�س鶯�š�

��������ɬ�����޼������ԡ�
������֪��żȻ���Ǳ��ܣ��������Ƶ���ʵ���

��ճĤ���ܵĴ̼�ǡ����֣���������������ʼ��Ѫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="��������" src="voice/md06/0210790a01">
����ѽ!?
��Ϊʲô�����ô�󣡡�

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210800a00">
��˵���ֲ������εĻ������Ҹе�Ϊ�ѡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210810a01">
���ⶫ���͸�������!?��

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210820a00">
�����������������ġ�
���������Ӧ�ñ��ʲô������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210830a01">
��������

//��������
<voice name="����" class="��������" src="voice/md06/0210840a01">
������������

//��������
<voice name="����" class="��������" src="voice/md06/0210850a01">
������Ԥ���һ������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210860a00">
��̫��ǿ�ˡ�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210870a01">
���ۡ���������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210880a00">
��������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210890a01">
��������������
����������������������о��񡣡�

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210900a00">
��ʲô���������ģ���Ȼ�����⸱
ȱ��������Ҫ�������˰ɡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210910a01">
���⡭�������°���
����������η񶨣����������ɣ�
��α���������

//��������
<voice name="����" class="��������" src="voice/md06/0210920a01">
�����ŵ��˾͸��Һúû��ţ�
����Ҫ��˵ʲôû������֮��Ļ�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210930a00">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210940a01">
�����õͼ��Ļ������Եͼ���
��ʽ������ˣ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0210950a00">
��������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210960a01">
�������Լ�������Ҳ�á�
�������������������Σ������Լ�û�С�
����ȥ�������ͺ��ˡ���

//��������
<voice name="����" class="��������" src="voice/md06/0210970a01">
���ҡ�������Ҫ����㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣���������
	CreateSE("SE01","se����_����_����01");
	CreateTextureEX("���ޤ�03", 3200, @0, @0, "cg/ev/ev259_������_c.jpg");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("���ޤ�03", 1000, 1000, null, true);
	Delete("���ޤ�02");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���������·��⿪��
��¶���������ܽ���������Ӱ�ļ�����

������˺��޷�������̬���������ҵ����ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/md06/0210980a00">
����һ�¡�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0210990a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("���ޤ���", 3200, -160, -60, "cg/ev/resize/ev259_������_cm.jpg");
	Move("���ޤ���", 8000, -210, -200, DxlAuto, false);
	Fade("���ޤ���", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�������Ե���ͼ��ֹ����ȴû�еõ���Ӧ��
�����������壬������һ��㻥��Ӵ���

�����ˡ���Ҳ�͵���Ϊֹ��
��ֻ�нӴ����ܶȷ�����΢��ı仯������֮��
û���κ�ʵ�ʽ�չ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="��������" src="voice/md06/0211000a01">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
��΢�����ϵɿ���ԸС�
����ʹ�ҵ�ĳ����λҲ�����˷�Ӧ���������ิ���ǡ�

����֪��������ڳ���ճҺ�������˼�Ŀ�϶�����ϡ�

�����ǲ������Լ���ʹȻ��
�������Ǵ��������������δ֪�����
�־�������е���ԥ���£����˶��ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("���ޤ����r", 3210, -160, -60, "cg/ev/resize/ev259_������_cl.jpg");
	Move("���ޤ����r", 8000, -235, -45, DxlAuto, false);
	Fade("���ޤ����r", 1000, 1000, null, false);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md06/0211010a00">
���Ѿ����ˡ�����ͣ�¡���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211020a01">
��ʲ��ʲô�
����ϲ������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211030a00">
�����ǲ�ϲ����ֻ�ǡ�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211040a01">
�������Ѿ�ѹ�����˼�һ���ˡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211050a00">
���ء�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211060a01">
���������������¡���
��ȴ�ְ�;���ϣ���

//��������
<voice name="����" class="��������" src="voice/md06/0211070a01">
���������ǵġ�һ������
����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211080a00">
����ʱ���ǡ�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211090a01">
�������ˣ����죡
���㡪�����������ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣������롣

	CreateTextureEX("���ޤ�04", 3300, @0, @0, "cg/ev/ev259_������_d.jpg");
	Fade("���ޤ�04", 1000, 1000, null, true);
	Delete("���ޤ�03");
	Delete("���ޤ���*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���Ѿ�������������
������������һ���Ե�ѹ�������ϡ�

������Ķ���˳��̽����Ѩ������ס����
�����ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="��������" src="voice/md06/0211100a01">
����������

//��������
<voice name="����" class="��������" src="voice/md06/0211110a01">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211120a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��������š�
���ӽ�ϵĲ�λ�����ɼ������º�ɫ��Һ�塣

�����������壬����Ϊ����֮ǰ�����ˡ�
������ȥ����û���Խ��ľ��顪���������
Ҳ��������Ȼ�İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="��������" src="voice/md06/0211130a01">
���Ҳ��Ǳ�����
������ǡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211140a00">
��������Ӳ���ѵ����Ǳ�������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211150a01">
����û��Ӳ��������

//��������
<voice name="����" class="��������" src="voice/md06/0211160a01">
���������������»������泩�ɡ�
���������������ú��������ֱ��оͺ���Ӵ����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211170a00">
��������ô˵����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
������̫����֪��
��һζ����ס��ʹ��Ť������
��������Կ��֮����ȥ��Զ��

�������Ͳ�������δʪ��ʱǿ�в��롣
�������Ħ���ᵼ����ʹ����Ҳ�������ܡ�

������մ���ȥ�����۴������Ŭ�����ҵķ���
���²��ý���ή�Ҳ������޷�������
����Ȼ������Ҳ����ν����<k>���ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="��������" src="voice/md06/0211180a01">
��˻�����ء�����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211190a00">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211200a01">
����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211210a00">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211220a00">
����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211230a01">
������������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211240a00">
��������ô��³��
������һ�㣬�ٶȷŻ�����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211250a00">
�������������Ħ������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211260a01">
���⡭��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
�����������ƴӵظı���������
����Ȼ�������ɱ�׾������ʹȴ��������ࡣ

��Ů���Ծ���ȱ����ʱ��Ҫ�����ơ�
˫���������������޷�������ˮ֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/md06/0211270a00">
�����У�������ס�������á�
������ǳǳ�ش�Ϣ���ɡ���

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211280a01">
�����š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��Ҫ������ʹ����Ȼ����ס�������������Ļ�
����ͻᷦ����
������������ȥֻ��������ν���˺���

���ۼ����������´��ݣ��������˵Ľ��֮����
�����һֻ�֡�
��̽�������������١�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="��������" src="voice/md06/0211290a01">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
�����������嵯��������
���Լ�Ҳδ������������

��δ֪�Ĵ̼����ܽ�����ʹ�࣬��������ˣ���
�����ܹ���ɢ�ƴ�֮ʹ�ɡ�
��Ϊ�˲���ָ��������һ��λ��
��С����������ᰮ���š�

������������ͻȻ�ս��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="��������" src="voice/md06/0211300a01">
�����š�������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211310a00">
����ϲ����������

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211320a01">
�����ǲ�ϲ������
�����ǲ�ϲ����ֻ�ǡ�������

//��������
<voice name="����" class="��������" src="voice/md06/0211330a01">
���������ù��ҡ�
��ֻҪ�㡪����

{	NwC("cg/fw/nw����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211340a00">
���������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
����������
������������µ�Ե�ɡ�

�����������ַ�ʽ���Ի�Ӧ��

�������˫�ۣ���ֹ�˴��������Ķ�����
��ת������Ť�����Լ���������

����˿�Ѿ�ʧȥ�˴�����������
����Ȼ�޷������ҡ�

����һ��������̽����
����Ѱ����������֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="��������" src="voice/md06/0211350a01">
�����������ţ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
��˺���ѷΰ��ʹ����ʹ������Ȼ���¡�
��ʪ���ͫ�������Ρ�

���������ҵ���ǣ��ҵ�����¶��֮���¡�

���˷ܡ�
������֮�и��ǡ�

������ѹ���Լ��������������öԷ�Ҳ�������ܡ�
��Ψ�в���׷Ѱ��ӿ�����������

����ר�ĳ��������ֵͼ�����Ϊ֮�С�

�����Ž��ޱŷ���
��ֱ�����ޡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="��������" src="voice/md06/0211360a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
����ɫ�Ķ�����
���ۻ�֮�������ġ�

����Ű���ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("���ޤ���", 3310, -500, -300, "cg/ev/resize/ev259_������_dl.jpg");
	Move("���ޤ���", 10000, -550, -500, null, false);
	Fade("���ޤ���", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0511]
�������ԡ�
������������

����ʲô���Ի�ġ�
����ʲô�ɷ��յġ�

���Ҿ��������ڴ��µ����ˡ�

����֪�¼�֮�ֵ��ˡ�

������һ����
����ǿ��Ů���������ᡣ

�����ֿ�����΢Ц��

�����á�
����ϲ��
���Ŀ�������

���ǰ���
���ᴩ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("���ޤ���", 1000, false);

	SetNwC("cg/fw/nw����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="��������" src="voice/md06/0211370a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
��������塣
�������뾫��ͬʱ�ٵǼ��֡�

��������ϲ�á�
�����Ǹ�˲�䣬����ʵ���ܵ��˻��ŵ����塣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����
//���ե��`�ɥ�����
	CreateColorEXadd("��", 15000, "WHITE");
	Fade("��", 2000, 1000, null, true);

	WaitKey(500);

	ClearWaitAll(2000, 2000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
������Ȼ��
���ʹ���һͬ��������̱���ڴ���
��
���������޿ɾ�ҩ��

����Ϊ�Լ�û�м�ֵҲû�д����ʸ�
ȴ������֪�ܵس�����̰ͼ����֮�С���
���Ҿ��������ˡ�

�������ˡ�
��
�������εȵġ����Ǻεȵĵͼ���

�����ο���<k>
��һ�������ˣ���Ȼ������ʵҲ������ˡ�

������Υ�͸С�

�����룬�����Ҿ��������˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//��������
<voice name="����" class="����" src="voice/md06/0211380a00">
����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211390a01">
�������š�����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211400a00">
���㣬�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
�����䱻����������
���Ĳ����ɵ������������ĵ�����Թ��

�����ǵġ�����û��˵�����ֹ������ĵķ�ʽ��
����׾Ҳ���и��޶ȡ�

�����ǡ�
��
��
������������һ�Ρ�

��������ݱ�׾��
  �е�������

������̬����İ��¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��������
<voice name="����" class="����" src="voice/md06/0211410a00">
������������

{	FwC("cg/fw/fw����_�դ�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211420a01">
������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/0211430a00">
���ܺ�����һ���𣿡�

{	FwC("cg/fw/fw����_�դ�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211440a01">
��������������������

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0211450a01">
�����������š���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
������Ƭ�̰�����
����ɱ������������������ɱ����ĸ������
�ñ��������

�������е��¶����ҹ��صı��

���������������һ��ı��䡣
������ȴ��֮�෴���ҿ���������ͬһ���˵�
�������ů��

��������ϸ��������û���ˡ�
��
�������Գ��š�

��˯��Ϯ����

�������������Ţ�г��١�
��������������Υ��������˯��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//============================================
//��ꥳ�쥯������á���������������
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(1000, 0);
	}
//============================================


}

..//������ָ��
//�Υե����롡"md06_022.nss"