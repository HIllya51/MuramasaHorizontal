//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_015.nss_MAIN
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
	#ev128_�����ι�_f03=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_016.nss";

}

scene ma05_015.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_014.nss"

//������
//�������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg052_�����ҵ���_01.jpg");
	CreateSE("SE01","se���L_����_�����02");
	FadeBG(0,true);
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,900,null,false);
	WaitPlay("SE*", null);
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������䵶����֮����һ��Ҳ����ࡣ
���������Ϊ���̲��ȣ���������֮�ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm33",0,1000,true);
	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma05/0150010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ʶ���Լ�״̬���Ѻ������ɡ�
�����ĵط���ľ����

��������ʲô�������������Ѳ���������龰��

������������һ���Σ������������������ٴ�ȥȷ�ϣ�
��ǰ���龰��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����åȒ��롣�؏ͤ�����
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����", 8000, Center, Middle, "cg/ev/ev128_�����ι�_f03.jpg");
	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����������Ը��ա�
����������һɲ�ǡ���<RUBY text="��������">һ˲֮��</RUBY>��

�������ͷ�������ݣ�
����������Ƥ�⣬
����֦��Ĺ�����

��ȫ���ػ�������

��������Ȼ��
���������ڳ������ڲ����ܷ�����

���ٳ���һ�е��ǣ���Խ�������������
�����е�������

���������ʹ�ٿ��ߡ���ʹ���ߵ�����������Ծʽ��
��ߡ�
������Ҳ�����ָ�����

�����߼��㱻�����ֱۣ�<RUBY text="��������">ֻ�����</RUBY>��
���ñ�ɸ�ԭ��
����˵��������<RUBY text="��������">��̥����</RUBY>��

���������ֳ����쳣�ָ����������ǽ��е����ã���Ҳ
�������
��
��Ȼ���ⲻ���ܡ�

������ٿ���û��װ������У����Ǵ��ڷ���״̬��
Ҳ������˿�Ѹ�ٸ�ԭ�������
������Ҫ������ٿ��߽�����Ե����ʵ�֡�

����һ����Ҵ�ͳ���ǣ���Ϊ�嵶��
�������뽣�������ѯ�ʱ˴����ʣ�������϶Է�ʹ��
�ߺ���������ݡ��������������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������������ǣ����˲����뽣�к϶�Ϊһ����Ϊ����
����������
���������ֽ�Ե������֮�겻�벻���������������
Ҳ����������

����Ӧ��δ��������嵶��
��һ��û���ĵķ��ˣ�Ϊ�ν��л�����Ϊ����

�����ڹ������ڴ��ϡ�
����������ָ���Ҳû�л�ļ���


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}���뱳��", 7999, Center, Middle, "cg/bg/bg054_�����Ҽ���a_01a.jpg");
	FadeDelete("�}����", 1000, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0052]
������Ҳ����ˡ�
����֮�������˶��Ļ����ǣ����ô���������е�
��󣬲�Բ�����ٴη�ӡ�������������䣬δ��һ
˿������

�����ǲ��������Ǹ��������н�Ե�ġ�
��
��Ȼ������ĳ����ָ�������֮���ⲻ�����롣

�������£��ӹŽ�����������ߴ�˵�ж�����δ�š�
��������û����˵����

��̫����˼���ˡ�
��������ˡ�����Ӧ��ȸԾ���ѣ�����ȴ��ȫû������
�о���

����ĸ�ƺ�Ҳһ����
�����죬���Ҽ������¸�����֮�ˣ��䲻�����ﵫ����
�Ƿ�����ʲô<RUBY text="����������">���õ�����</RUBY>��������
������ɢ�˻ᡣ

������û��
������ʲô�ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤�

	CreateSE("SE01","se���L_����_�����02");
	MusicStart("SE01",0,1000,0,900,null,false);
	EfRecoOut1(100);
	Delete("�}����*");

	EfRecoOut2(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����Ž����о���һɨ���յ�����������һ������ľ
������
���������ָ��ˡ��������ܺá�����һ����

��Ȼ��ȴǣ�浽���С�
�����ң����ǽԶ��ҹ涨Ӧ������ӡ�ġ�а���

��������˲��ܲ��黳��
��û���ɵظе����꣬����Ҳ�쳣���ҡ�

{	CreateColorEX("�}�\", 5000, "#000000");
	Fade("�}�\", 3000, 1000, null, false);}
�����Ǽ���
�������ס�

���в��������жϡ�
�����������ֱ������ѹ˫�����Ĳ�ʱ�����Ÿ�������
��С�޵ĸо���

�����ǶĲ������н����
�����ӵĵ�������ʤ����

��������ǶĲ��Ļ�����
�����յĵ���������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ȥ�
	CreateSE("SE01","se����_����_һ�i");
	MusicStart("SE01",0,800,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ͻȻ���ӱ���������ĽŲ�����<k>
���һ���Ϊ����ĸ������Ϊ��ػ�ͷ��ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//������ä��ݳ����뤫��
//��������ݳ����Х��ȥ��åפ���������äƤߤ뤫��

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Delete("�}�\");
	Fade("�ե�å����",0,1000,null,true);

	CreateCamera("����飱", Center, Middle, 250);
	SetAlias("����飱","����飱");

	CreateTextureSP("����飱/�}����100",500, -709, -338, "cg/bg/resize/bg052_�����ҵ���_01l.jpg");
	CreateTextureEX("����飱/�}����200",500, -709, -338, "cg/bg/resize/bg052_�����ҵ���_01l.jpg");
	SetAlias("����飱/�}����100","�}����100");
	Request("����飱/�}����100", Smoothing);
	Zoom("����飱/�}����100", 0, 1200, 1200, null, true);
	Zoom("����飱/�}����200", 0, 1200, 1200, null, true);
	SetShade("����飱/�}����200", SEMIHEAVY);

	CreateTextureSP("����飱/�}��",600, 173, -658, "cg/st/resize/st�����ǰ_ͨ��_˽��ex.png");
	SetAlias("����飱/�}��","�}��");
	Request("����飱/�}��", Smoothing);
	Zoom("����飱/�}��", 0, 300, 300, null, true);
	Move("����飱/�}��", 0, @+50, @+50, null, true);

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("�ե�å����",1000,false);
	Move("�}����100", 5000, @0, -586, Dxl1, false);
	Move("�}st100", 5000, @0, -71, Dxl1, true);


//	CreateColorSP("�}�\", 5000, "#000000");
//	Wait(10);
//	StR(1000, @0, @0,"cg/st/st�����ǰ_ͨ��_˽��.png");
//	FadeStR(0,true);
//	DrawDelete("�}�\", 1000, 100, "slide_01_00_1", true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma05/0150020a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("����飱/�}����200", 3000, 1000, null, false);
	MoveCamera("@����飱", 5000, @+450, @0, @+300, Dxl1, true);
	SetShade("����飱/�}����100", HEAVY);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ǹ⡣

����ԡ�������͵������¡�
���ҵ����ã���վ�����

��һ��ǰ������ô��Ϥ��<k>
������һ����ֱ������ңԶ��<k>
��������ʹ�����ټ�һ�Σ�ȴ��������Զȥ������ģ��
����Ӱ��

����΢Ц�š�

�������������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	FadeDelete("�}д��", 800, false);
//	SoundPlay("@mbgm14",0,1000,true);

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma05/0150030a00">
���⡭����

{	FwL("cg/fw/fw�����ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0150040a14">
���š���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ӦңԶ�ġ����ʵ�������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma05/0150050a00">
�������⡭��
�������𡣡�

{	FwL("cg/fw/fw�����ǰ_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0150060a14">
���š�<RUBY text="����">����</RUBY>��
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ǹ��������
�������õĻ��

���⡪��
��վ�����������˵����

������ʧȥ���ˡ�
����Ӧ��ʧȥ���ˡ�

�������������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma05/0150070a00">
����!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��һ�ж�������ɢ��
�����������ĵ����ǻ��ǲ��������е�һ�ж�����ʵ��
ǰ��ʧ���١�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 1500, "Black");

	Fade("����飱/�}����200", 500, 0, null, false);
	MoveCamera("@����飱", 1000, @0, @0, @+700, Dxl1, true);
	CreateSE("SE01","se����_����_���01");
	CreateSE("SE02","se����_����_�����Ĥ�01");
	Shake("����飱/�}��", 500, 0, 3, 0, 0, 500, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0151]
���ܹ�ȥ��
�������������塣

{	MusicStart("SE02",0,1000,0,1000,null,false);
	MoveCamera("@����飱", 1000, @0, @0, @+500, Dxl1, false);
	Fade("�}ɫ100", 500,1000,null,false);}
�����������ʵ�����ҵ�����ȴ�Բ������š� 
��������ס������һ��ȷ���š�

���������ڡ�
���������

�������ˡ�
���ҵ����û����ˣ�

</PRE>
	SetTextEXL();
	TypeBeginTimeLO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���⡿
<voice name="��" class="��" src="voice/ma05/0150080a14">
���ţ���������
���е��ۡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0150090a00">
���������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����������֣����������������
��Ȼ���ֱ�ȴΥ�����ҵ���Ը��

��������ࡣ
��������ݴ��С�

�������Ρ�
���ⲻ�����룬Ҳ���ǻþ���

����Ҫ����ȷ�ŵ�֤�ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���⡿
<voice name="��" class="��" src="voice/ma05/0150100a14">
������������û�취����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�������������ҡ�
������Ѱ�󲹳��Ƶģ�����ָ�����ҵ�ͷ����

��һ�С�����������ν��
��ֻҪ����ݴ��У���������ʲô����Ҫ��

��������ʲô��͵ġ�
������Ҳ�ý���Ҳ�ա�

����ֻ��л����漣��
��������ʲô���Ҷ��Ļ��м���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0150110b46">
��������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0150120a00">
��ͳ���ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/bg/bg052_�����ҵ���_01.jpg");
	Fade("�}����100", 0, 1000, null, true);

	StL(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStL(0,true);

	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210a]
����������������
����֪��ʱ����ĸҲ�����������ͬ�ղŵ����������
�������Ź⡪������Ů����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @-30, @0,"cg/st/st�����ǰ_ͨ��_˽��.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210b]
����Ӳ�������������������塣
��ĸ�׵��ľ�Ӧ������һ����������ǰ���龰����ʵ����
���룬��������Ҫȥȷ�ϡ�����������һ�˶�ռ��

������ʲôǣ��һ�㣬��ĸ��⿿����
������˫�۶�ʪ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0150130b46">
���⡪����

{	FwC("cg/fw/fw�����ǰ_��Ц.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0150140a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����š�
����ĸվס�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma05/0150150a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����������˼��֮�顭��������
��������ĸ�ı��飬�ҳ���һ����

��<RUBY text="��������">�����ɻ�</RUBY>��
����ͬ������Ϊ�ⲻ��˼����漣�������Լ����۾���

������Ů���������ʵ��
����Ȼ��Ȼ����ϲȴ��ʲô�谭�ˡ�

����ʲô��

��������ĸ���ŵ��ǹ⡣
���ǹ�����ݡ�

������Ҳ����ĸ�ס�
���������Լ��ı��顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma05/0150160a00">
������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����������˿̿�������һĻ��
��������

��������⡣
��ȴ���Խ��ܡ�

��Ϊ�Σ�
��Ϊ�Σ�

��<RUBY text="����">Ϊ��</RUBY>��<RUBY text="������������������">��������ؿ���ĸ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����ǰ_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���⡿
<voice name="��" class="��" src="voice/ma05/0150170a14">
������������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0150180b46">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
����ô���ܡ�
��Ȼ�����ܿ����ٱ飬��һĻ��˿��δ�䡣

����<RUBY text="����������">а���Ц��</RUBY>��
������ĸ��ĬĬ���ܡ�

��û�뵽���������¡�

���Բ��ڴ�֮ǰ���������Ϊ�ഺ�ڵ�Ե�ʣ��⾭����
ĸ�װڳ������Ե�̬�ȡ�
����������δ¶������������

�������ǲ�����Ϊ�ո����������ӻ��������ء�
�����������룬���޷���⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma05/0150190a00">
���⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������ұ�������_������
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se�ճ�_����_���_��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��Ʋ����Щ��̸����Ҫ�����������ε����գ��ҿ��ڽ�
������֡���
����˵��һ�룬ȴ���˻�ȥ��

�������������ŵķ�����һ�����졣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_016.nss"