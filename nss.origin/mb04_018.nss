//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_018.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb04_018.nss","DenziMan",true);
	Conquest("nss/mb04_018.nss","DenziManSET",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg041_Ƭ������_02=true;
	#bg041_����_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb04_019.nss";

}

scene mb04_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb04_017vs.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������

������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180010b40">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180020b40">
�����ڲ���˯����ʱ��
���������ۡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//��������ţ��
	CreateSE("SEL01","se��Ȼ_ˮ_��x�β�01_L");
	OnBG(100,"bg041_����_02.jpg");
	StR(1000, @0, @350,"cg/st/3d������ţ��_����.png");
	FadeBG(0,true);
	FadeStA(0,true);
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	DrawTransition("�}��ܞ", 1000, 1000, 0, 300, DxlAuto, "cg/data/slide_05_00_0.png", true);
	Delete("�}��ܞ");

	SetFwC("cg/fw/fwһ��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180030a02">
��������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180040a02">
�����ڡ�����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180050b40">
���á�
���������ڵ�״���ɣ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180060a02">
��������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180070a02">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݱ���", 4000, -330, -85, "cg/ev/resize/ev948_����ͻ�M����exl.jpg");
	Fade("�}�ݱ���", 1000, 750, null, false);

	SoundPlay("@mbgm26",0,1000,true);

/*

//��������ݳ���늴Œi����`�ө`�������Ƥ����ɤʤ󤫥Х���ΤǱ�����
	DenziMan();
*/


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������������С���
������ס��Ȼ�����������ڵ����壬
�Դ���������<RUBY text="��������">���Է���</RUBY>��

���Ա�֮������ʩ����
�������������ܵĹ������֣�ԭ�ⲻ���ط��ظ��Է���
������������ڵľ��С�

����Ҳ����ζ�ţ���������������Լ������������Ѹ
�ٵİε����Ĺ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ݱ���", 1000, false);
//	FadeDelete("@�ץ�늴Œi������", 1000, false);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180080a02">
�����������ˡ����𣿡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180090b40">
��û�С�
����Ϊ֮ǰ����һ����ȱ�����ȣ�������Ƚ�
��������������Ҳ����ǿ����


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180100b40">
�����ǿɺޣ�
�����Ƿ�������һ����������������������
����ʹ�������ˣ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180110a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������������Ļ����ڷ���֮ǰ�ͻᱻ�����������ˡ�
��
������һ˲�������뷨�����Ժ�����Ѹ�ٽ���Ĩȥ��

�����ǲ����ܵġ�
��������<RUBY text="��������">���Բ��ᵹ��</RUBY>�ġ�

����Ϊ���ᵹ�£���һ���ܽ����˵����ƶ�Ϊ���á�
���������������ǿ�ġ�

��û���κ����⡣
����Ȼ�����ǲ��ᵹ�µģ���ô�������κ����⡣

����������֮�������Ǿ����ᵹ�µģ�
��
�������ܵ����ص��ˣ�
�����¡��������εĻ�������ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��������
//���٤����᤯
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180120a02">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180130b40">
���������Ѵ������ϡ�
����ʲô�ϰ��𣿡�


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180140a02">
������û�С������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����Ȼ�ܾ�����������Щ���֡�
��������������������Ҳ����ν��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180150a02">
�������㣬״����ô������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180160b40">
���Ѿ�����������޶ȵ��޸���
�����ص��ġ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180170b40">
����ô�߰ɡ�
�����Ҳ�������ˡ�����ž�׹�����⸽������


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180180b40">
�����ڣ�ȥ�����˽�ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܥå����������}�����Ʊ�����ʾ
	DeleteStA(300,true);
	WaitKey(2000);

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180190a02">
������������ʲô�ط�����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180200b40">
����һ������亵ĵط�����


{	FwC("cg/fw/fwһ��_���x.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180210a02">
��ȥС��ʱ�����ĵط�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����ôһ˵����ȷ�е����졣

����ϰ־Ұ���ź��������ߡ�
����Լ���ڶ��Ͻǵķ�λ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180220a02">
��������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180230b40">
����Ӧ�þ��ڡ���{WaitKey(3500);}<BR>���š��ź�̽���Ȼ�ڵ����Ͼ�ʧ���˰�����


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180240b40">
����ȥ������λ̽��һ�°ɡ�������׹������
����λ�ġ�
���߰ɣ���������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180250a02">
�����ڡ�����


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180260b40">
�������ţ�����ô�ˣ���


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180270a02">
���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ҕ���Ƅ�
	CreateTextureEX("�}�ݱ���", 4000, Center, 0, "cg/bg/resize/bg004_�ɤӤ���b_02.jpg");
	Move("�}�ݱ���", 3000, @-256, @0, DxlAuto, false);
	Fade("�}�ݱ���", 600, 1000, null, true);

	SetFwC("cg/fw/fw������ţ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180280b40">
�������̣�
����������û�ж�Զ������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180290a02">
���ǰ���
������Ϊ����ʲô���ǻ����𣿡�


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180300b40">
����ô����
�������ȵȣ���


//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180310b40">
���������и�������������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180320a02">
����������


{	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180330b40">
����<RUBY text="����">����</RUBY>��
������û����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180340a02">
����������


{	FadeDelete("�}�ݱ���", 300, false);
	FwC("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb04/0180350b40">
����ô�죿��


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb04/0180360a02">
���߰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ä��塣
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se����_����_�ߤ�03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//����������
	WaitPlay("@mbgm*", null);
	WaitPlay("SE01", null);
	WaitKey(3000);

//�����¡����o��
	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0180370b21">
��������


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0180380b21">
����������׷���ˡ�����


//���x�塿
<voice name="�x��" class="�x��" src="voice/mb04/0180390b21">
�������������ӵ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb04_019.nss"


.//�ץ�����======================================================

..//늴Œi�������λ���
function DenziMan()
{
	CreateProcess("�ץ�늴Œi������", 5000, 0, 0, "DenziManSET");
	SetAlias("�ץ�늴Œi������", "�ץ�늴Œi������");
	Request("�ץ�늴Œi������", Start);
	Request("�ץ�늴Œi������", Disused);
}

function DenziManSET()
{
	CreateMask("�ޥ���", 3100, 0, 0, "cg/data/slide_08_00_0.png", true);
	CreateMovie("�ޥ���/�}�݄ӻ�", 3000, 0, 0, false, false, "dx/mv늴Œi��_��.ngs");

//	Fade("�ޥ���/�}�݄ӻ�", 0, 0, null, true);
	Request("�ޥ���/�}�݄ӻ�", Stop);
//	Fade("�ޥ���/�}�݄ӻ�", 1000, 1000, null, false);
	Request("�ޥ���/�}�݄ӻ�", Play);

	WaitPlay("�ޥ���/�}�݄ӻ�", null);

	Fade("�ޥ���/�}��ɫ��", 1000, 1000, null, false);
	Fade("�ޥ���/�}�݄ӻ�", 1000, 0, null, true);
	Delete("�ޥ���/�}�݄ӻ�");
	Fade("�ޥ���", 2000, 0, null, true);
	Delete("�ޥ���");
}