//<continuation number="1020">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_016.nss_MAIN
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
	#ev102_����Ű��_a=true;

	#bg008_����_01=true;
	#bg018_У�L��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_017.nss";

}

scene ma01_016.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_015.nss"



	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg008_����_01.jpg");

	StL(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStL(0,true);

	SoundPlay("@mbgm26",1000,1000,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//������

	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160010b57">
����ν������Ļ����������ԭ�����ڵ�
Ϊ���������޶�������ͨ�ƣ��ٷ���Ϊ
����������������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160020b57">
��˵����Ц��
����������ν�������Ĺ��𲢲����ڡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160030b57">
���������������ҽ����������ұ�������
�������Ÿ����������׶����������ܳơ�
��������ԭ��������Ϊ�������ĵ�����
�ء���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160040b57">
��Ȼ�����Դ�����������һ��Ϊ��˾���
ͳ�ʽ��������Ĺ�ְ��������ֱ������ְλ
������ͳ�����ߵ����Σ��ɴˣ��ڴ���֮
�£�������Ϊ���ĵĲ�ı��֯�����ˡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160050b57">
��������Ƕ��ϣ��������Ÿ�Ӧ�ó�Ϊ�߳ơ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
���崨������һ�������������
�������ܾ��ã�������������Ƿȱ��Щ��������
�������ڵ�״��Ҳ���п�ԭ�ɡ�

������ʧ���������������졣
�����겻���ģ��϶���ֻ�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160060b57">
��������������Ĵ󽫾�һ����ӵ��
ʩ�о�����Ȩ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160070b57">
���������Ĵ󽫾�ӵ�г������õ�ռ
����ϵ���ӦȨ����Ӧ�����������
��ӭ����еķ���ս�У���ĳһ������
��Ϊ��Ҫ��ӵ����ӦȨ�ޡ���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160080b57">
�������ĸ�����սʱ�޶�����ʱȨ����
��һ��ս��������Ҫ��ʩ��Ȩ���͢����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160090b57">
�����Ǵ�ǰ������Ļ���������Ĵ󽫾������
Ȩ�����󻯽��ͣ���ʩ��Ȩ���쵽ȫ����Χ��
ʹ���û�����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160100b57">
��������Ҳ��������ͬ���¡�
���š��ֽ��˹���֮ʱ������ţ�������ʱ
��Ȩ�����ŶԴ��ȫ��ʵʩ������ʩ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������Ű���ãǡ������_�α�Ű����`���a��
	CreateTextureEX("�}�ţ�100", 10000, Center, Middle, "cg/ev/ev102_����Ű��_a.jpg");
	Fade("�}�ţ�100", 1000, 1000, null, false);

	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160110b57">
�������ݣ����������Ĵ���Űɱ��
��Ҳ�����������ս���������ն��ɱ����
�����ǳ����ҹ���ǿ��֧��Ȩ�����ɡ�
������������Ŀ�ɿڴ��ĺ�������������

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160120b57">
�������������֧������α�����
ǿ������������ϣǣȣѵ�Ĭ�ϣ���ͬ��Ϊ
֧����ͳ�ε�֧���Լ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������á�
	OnSE("se�ճ�_ѧУ_���ҥɥ��_����01",1000);
	SetVolume("@mbgm*", 2000, 0, null);
	DrawDelete("�}�ţ�100", 1000, 100, "blind_01_00_0", true);

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160130b56">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0131]
���ڿ����У����޹��ǵ������������쳣��ͻ��
����󣬴�������Ȼ¶��һ�����˲����
��������Ҳ����ͻ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160140b57">
�������̵����Σ���

{	NwC("cg/fw/nw���^����.png");}
//������㣯���^��
<voice name="����㣯���^" class="����������" src="voice/ma01/0160150e052">
���Ͽ��д���ʵ�ڱ�Ǹ��
���崨��������һ�¡�У�����㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0151]
�����Ǹ�����ͻ�ģ�������֮��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetNwC("cg/fw/nw���^����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������㣯���^��
<voice name="����㣯���^" class="����������" src="voice/ma01/0160160e052">
������������Ǿ�������Ұ����
������Ҳһ��������

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160170b56">
��������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0160180b33">
��ʲô����

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0160190b43">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	PrintBG("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg018_У�L��_01.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitKey(600);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	WaitPlay("OnSE*", null);
	WaitPlay("SE*", null);

	OnSE("se�ճ�_ѧУ_���ҥɥ��_����01",1000);
	DrawDelete("��ܞ", 1000, 100, "blind_01_00_1", true);

//��У�L��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0191]
�������������ѧ�����Ƶ��������䷿�䣬
����һ������ͻ�����ŵ�����������������
���������֮����޿��ܰɡ�

�����������ǣ���Ϊ����Ȥζ�ı�׼ѧ����
�ң���Ȼ���ǵ�һ���߽�У�������ֵط���
��������ˣ���ȴ��û��ӿ��ʲô�п���

�����������׼���Ů���ϵ�˽��ѧԺ����
���ۣ�����һ������ѧУ��һ��У��������
�����ں�̴ľ�칫���ϳ����̹ܰ칫�ľ���
�����ﲻ���ǣ�һ�������ζ�İ칫�Ҷ��ѡ�

������䷿�����������ҲȫȻû��������
����Ȥ�Ĳ��֡�֮��̸�������ݸ�����Ȥ����������������ɣ����Ѿ�����һ���̶ȵ�Ԥ�롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm35",0,1000,true);
	SetFwC("cg/fw/fwУ�L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160200b23">
��һλ��Ը͸¶������סַ����ʿ������ѧУ��
��������֪��У��ѧ�������պ�Ļ����Ӷ�ļ�
λ��·�Ϸ�������ִ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0201]
��У�������վ�Ž̵����Σ������Ա����崨�ڡ�
�����������ʣ�У���Ļ������Ƕ������Ƕ����е�
�κ�һ��˵�ġ��Ƕ�<RUBY text="��������">�������</RUBY>˵�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwУ�L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160210b23">
��������û��ɣ���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160220b56">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0221]
����һ��<RUBY text="����">����</RUBY>����Ŀ������Ҹ����˿϶��Ĵ𸴡�

����Ȼ������һ���������г��������û����Ǹ�
ʲô����϶��Ѿ�ָ�����յع��������ǡ�
��װ��Ϳֻ���˷�ʱ�䡣

����ʱ���ֳ�����Ⱥ֮�У���˭��ô���һ����һ�°ɡ�
����Ϊ�������˵�൱���ǡ�����������˵��ʵ�ڣ�
��ȫ�ǣ��鷳ʮ������һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160230b56">
�����������ǡ�����

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160240b23">
��������ִ�����ݣ���û�д�������
��˵��
���Ͼ����Ѿ���˵��δ�����ش��¼���
��ʵ�ϣ����Ǵ˿�Ҳƽ�����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0241]
����׼�����ϲ�������˵��ȥ���ң���У�����״�ϡ�
�����ǽ���˵ʲô������ʲô����Ȼȫ�������˵�̬�ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160250b23">
�������Ǽ��¾����ˡ�
���������ڣ�Ϊʲô�ᷢ���������¡���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160260b56">
����������˵�������������ϵ�Ұľɽ
�ǰ��ˡ�����

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160270b23">
������Ϊʲô�������ֵط�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0271]
��������Ȼ���������Ի�������Ҳ�������ˡ�

���ں�Ұľɽ�鷢�����׵���������Ҳ����ɧ����
��Ȼ�ˡ����ǲ��Ǳ����߰���
�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160280b23">
����һ��Ӧ��ֻ��ҹ��Ӫҵ����ʳ�ꡣ
��������˵��ûʲô��ֵ�ĵط��ɡ�
��ôΪʲô�����ǻ������ֵط�ת�ƣ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160290b56">
��������Ϊ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0291]
������һ����˵����Ϊѧ�������Ǻ�������Υ����
У�档������α�⣬�����ʵҲ����ı䡣
������У�������Դ�Ϊͻ�ƣ����Ի����һ�ߵ���
������

����Щ����û��ʲô���ˡ�
�������ܵ��������������������ж������Ƶ������
����Ҫ��������ġ����������ͣ�η�ʡ��֪ͨ��
��Ļ�����û�취���������ˡ�

����Ȼ����������Ҫ�����׵�ʱ����ȴ�벻��
һ�����õ����ɡ�������������ʱ����ɿ����ұ���
���Ҳ�����ų�Ĭ�������Ǹе����¼�����Ĳ���
�ڿ����Լ�������Ĳ��ְɡ�

��������������ֻ��˳��У�����յ��ش�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160300b56">
������ȥ���������ˡ���

{	FwC("cg/fw/fwУ�L_���C��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160310b23">
�������������ء�����ѧ���Ĵ�ð����̽
�ڸ���̽�飬���������磬
��������Ҳ�ӵ��˼��Ρ�
������˵��Ҳ�����ǵ���Ϊ�ˡ���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160320b56">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0321]
����������˵�������������õĳ̶ȣ�У�������ĶԻ�
����˳���Һ��޷ϻ���
��Ӧ���ŵ��Ҽ�ֱ��Ȼ��ζ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160330b23">
�����Ǿ���Ĺ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0331]
����Ȼ����������ǵ����顣
�������������Ķ�ʽ�䣬У����ʡ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160340b23">
����������ɡ�
���ⲻ�����Ǹ������¡���

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160350b56">
�����ǣ������Ļ�������

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160360b23">
�����İɡ������������ж���
��ǰ���죬��ԭ��Ա��˵����У�ſڽ�����
���¾���ĵ��顭�����Բ��õ��ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0361]
�����еġ�
��<RUBY text="����������������">�Ǽһ������û��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160370b23">
��������ѧ�����޷���Ϊ�����������
����ʹ����Э�����ӽ����˵Ҳֻ���ǰﵹæ����

//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160380b23">
��������Ϊ�������������Ҫ�����ˣ�
����������ѧ���������
���ڸ�Σ�յľ��ء�
���������𣿡�

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160390b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0391]
�����
�����������޷����Ƶط����š�

���������ɶ�
��Ϊʲô��Ϊ<RUBY text="����">����</RUBY>�Ķ�������������˻�󰡣�

��У������������������÷�����
��������һ��ϻ���ֻ����и�ɻ�������ʹ��������

��û�жԲߡ�

������������µ���������һ�����ǵĴ������ٽ�
ҧס��㲻�ţ�����������ĳ�̶ֳȵ���Э��
����������ôһ����������ί������ս���в�ͨ�ˡ�

��������ɶԻ�����������ȥ���������͸ú�У��
Լ�����ٽ����޴����ж��˰ɡ�
��Ҳ��������Լ���������Ѳ顣

�����ǻ�Լ�����ֻ��Ϊ���ǵĸ���������ѧУ
�����ϳ����ǵ������ԡ�
���뱻�����ڼң�һ��Ҳ��Ϊʱ��Զ�ˡ�

��������̬�����Ǿ��Բ�����ܵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160400b56">
�����ǡ�����������
���������ǵ����Ѱ������ԣ�������ǲ�ȥ����
����������

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160410b23">
����˵һ�飬�ⲻ�����Ǹ����ġ�
��������ѧ����������ѧϰ����

//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160420b23">
����Ȼ��ֻҪ��Խ�磬��ѧ֮����ô����
������ν��Ȼ������
���������������鲢�������ְɣ���

//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160430b23">
�����ԣ�����ֹͣ��
���ҵ���˼����������𣿡�

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160440b56">
������������

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160450b23">
�����������ͬ�뽲������
��Ҫ��ûʲô��˵�ģ��Ǿ������ұ�֤
����ٽ������Եľٶ�����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160460b56">
������������

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160470b23">
��ѡ��һ��������Ĭ�Ļ��Ҳ����ס�
������Ҳ��ൽ�˸�ѧ��������������
����������涨����Щ��ν����˵�����
�������ˡ���

//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160480b23">
�������ó�Ĭ��ﲻ�����·��ڵȴ��Է���Э
���������Ƶ�̬�Ȱɡ���

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160490b56">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0491]
���ɶ񡣿ɶ�
������ʲô����

������˵��ȷʵ�Ϻ�������
���������ǣ�û��һ�㷴������ء�

������ֻ��Ƭ��ĵ���Ƭ�����ȷ�Զ��Ѱɣ�
����ʹ����������ձ�ͨ�õĵ���

��������Լ�����ȷ�������˵���������𣿡�
�������Ļ��ͱ�����ӱ��˵���ȷ�Բ�����
������˵��Ҳ�ǰ���Ҫ��Ȼ�����޷���ת�ˡ�

�����ǣ���ʹ��ˣ����ֵ���ȴ������������
��ȷ��ֻ���޷��ú�˵�����˸������˰���
�������ڵ���һ���ļһ

��������ô˵����������Ҳֻ��˵�����޷�˵
�����˵Ĵ�ɡ�
��������<RUBY text="����">�ܸ�</RUBY>����һ������ô˵��

�����ǰ�����
��������������ϲ���ֻ���������ݵ��˲���
ȡ��ʤ������

�������ܹ�����ﲻ������ߵļһ
����ô���������ǵ���ֻ�ܱ��������������

���������ȷ�������
����������!?

���������������������������ס�
�������ǲ�����ȷ����ᣬҲ��<RUBY text="����">���</RUBY>��ȷ�����԰ɣ�

�����ٱ����������ּһ�ֻ���þٲ�ά��������˵��
�����������Ҷ����װ���

���������ס���
����ô���ܽ��ܰ�!!���ڣ���ʱ�˿̣�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160500b56">
��������

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160510b23">
�����������ûʲôӦ��˵���ˡ�
����ô���Ͱ��ҵĻ���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0511]
������<RUBY text="������">�Ǹ���</RUBY>��
�����������޷�˵�����ҵ����飬�ɡ�

���������뷨��ͻȻ�������ӹ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160520b23">
����󡪡���

{	StR(1000, @0, @0,"cg/st/st⏴�_ͨ��_�Ʒ�.png");
	FadeStR(300,false);
	SetVolume("@mbgm*", 1200, 0, null);
	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160530b57">
�����һ�¡�У������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0531]
��ʲô��û��˵���ڵ��ҵ��油��
�����Ҹ���ûԤ�ϵ��ķ���վ�����ˡ�

�������崨��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160540b23">
����ô�ˣ���

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160550b57">
�������ǳ��ڶ����ѵĵ��ĲŻ�����ж��ġ�
����һ���ϣ�����Ϊ��Ӧ�ö�ӿ��ǡ���

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160560b23">
�������Ҳ�����������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0561]
�������������ڱ���������޶ȵ�˳���������
�ĵ��ڱ�������ˮ��У�������������üͷ��
��ָ�������ô������档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160570b23">
������ʧ�ٵ����ѣ����Ը���ð����̽���¡�
���Ե�������ס�
��������������������˵���ǣ�������Ϊ��
Υ���涨�ġ���

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160580b57">
���������ԡ�
��<RUBY text="����������">����ʹ���</RUBY>��<RUBY text="��������������������">����������Ϊ��������</RUBY>��
<RUBY text="����������">��ȳ�����</RUBY>��
<RUBY text="������������">��չ�����ж�</RUBY>����

{	SoundPlay("@mbgm32",0,1000,true);}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160590b57">
�������д��𣿡�

{	FwC("cg/fw/fwУ�L_�Ӥ�.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160600b23">
��ʲ����ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0601]
������������ߡ�����Ӧ�������ߵ����������
�Զԡ����ƺ���δ�����Ȼ��������ʱ���ܵ�������
������
��������˵Ҳ��ͬ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160610b23">
����������������⣡
�����ǵ���Ϊ�����Χ����ƽ���鷳����
��һ��������⡣��

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160620b57">
������У������ֻ�������һ�����档
�������������ȫ������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160630b57">
��Ϊ�˹�ƽ�����ҲӦ�Ӳ�ͬ�Ĺ۵㿼�������
������Ϊ��Ӫ�����Ѷ���ʼ����Ϊ��
��һ���ָ����������ء���

{	FwC("cg/fw/fwУ�L_���C��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160640b23">
�������㵽����˵ʲô������
��ѧУ�����յ��˱�Թ���������������
�г����Ӧ�ԣ�ѧУ�����þ�ʧ��
��Щ�������𣿡�

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160650b57">
���г���Ķ�Ӧ�������ǵ�Ȼ��
��������Ϊ��Ӧ����ȥ̽Ѱ�Ȳ��Ա�Թ����������
Ҳ��ֿ���ѧ���������ѽ����������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160660b57">
�������𣿡�

{	FwC("cg/fw/fwУ�L_�Ӥ�.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160670b23">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0671]
��У��ŭĿԲ����ȴ���񷢲������������ӡ�
���ԱߵĽ̵�����ҲĿ�ɿڴ���

����ʵ���⡣
��ȷʵ���崨��Ϊʮ�֡���˵��������ʦ��
��ѧ��������Ҳǡ����ֵظߣ�����Ҳ��
����С��һ������������֮�ĵİ�Ľ�ߡ�

�����ǣ���������״���£��Ծ�վ��ѧ��
�������ϱ绤����˳̶ȣ�������С�Ķ�
���������ڴ��ɡ�
��վ������ߵ�С�ģ���С������ȴ�ɴ���˫�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160680b57">
������Ϊ�������ǵ��ж�Ӧ�ø������
������ʮ�ֳ�֡�
��Ϊ��Ѱ��ʧ�ٵ����Ѷ�����չ���ж���
����ʲô��ֵ��ء���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160690b57">
�����ο����ھ���֮��û��ָ��������¡���

{	FwC("cg/fw/fwУ�L_���C��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160700b23">
���������У����崨�����

{	FwC("cg/fw/fw⏴�_Ц�.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160710b57">
����ֻ��˵������ʵ���Ѱ���
��������ѽ��ʧ���ˡ�������Щӹ�׵�
��ǡ���

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160720b23">
��������Ȼ��Ϊ���ǵİ����Σ���ϣ����
�ڳ������Ҳ�û�к������۵Ĵ��㡣
�������������ң��������뿪����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160730b57">
���治���ɣ�У�����Һ������Ҳ������
���޹�ϵ����Щ�Ը���˵����û�н�����
ѧ������������Σ��ʱ��Ӧ�ñ��ֳ�Ĭ��
��֮������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160740b57">
����ˡ�
��Ҳ����˵���������ǵ��ж���Ҳ�������Ρ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160750b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0751]
��ι��ι��
�����������崨��

���ܾ��ã����Ѿ�������Ϊ�������Ǳ�һ�ߵ�
��ѵ����Ĵ�ͬ�飬��΢��һ�µĳ̶��ˡ�
�����볹�׶Կ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160760b56">
����Ȼ�Һܿ��ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0761]
��˵ʵ��������ĺܿ��ġ�

��������һ���ʦ��������У��������ͻ��û����
�����������ܻ�û�°ɡ�

����Ϊʲô��
��ΪʲôҪ�������ֵز�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160770b23">
��������Ľ�����ʽ����Ҳ��˵�˺ܶ࡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0771]
��У�����������ȫû�гɷ���������
�Լ��ĵ����Ƕ���ġ�
������������յ���Ϣ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwУ�L_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160780b23">
�������Ŵ�������<RUBY text="������">������</RUBY>�����չ֮��֮�ࡣ
���ˣ�������£���Ҳ���ò�����̸һ�¡�
�����ܽ�̸����ǰ���ǰ��˴�æ�أ��崨������

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160790b57">
����ô���������ٽ�̸������ǰһЩ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0791]
����Գ���ѹ�ȵ�����崨�����������ϵ�η��
��û����¶��
��������Ȼ��ͦ�����ţ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160800b57">
���ҵļ����Ǳ������޶�ȥ�ġ�
����������������Σ���������һ�࣬
����������ڱ����Ƶ�һ�ࡣ��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160810b57">
����һ������������¡���

{	FwC("cg/fw/fwУ�L_�Ӥ�.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160820b23">
������������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160830b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0831]
���������������Ĵ��š�

���崨�����ѻ��ߣ����ȴ����
������ӵ�й���Ů����ʧȥ�ˡ�

��������������ֱ�ӡ����Զ����֡�
��Ȼ���崨�������򻼸�ð���ϲ���������ȥ���ƺ���
������̰���Ӷᵼ��һʱ����ʳ������ҽ�ƷѼӾ����
���Ӹ�ϵ��

�����崨���ڿ��У������ܹ��������������޵ķ�ŭ����
�������ԭ�򡭡���Щ�������ڴ��ﲻ�����˶��еĵط�
��Ȼ�����Ĵ���ȫ����
����Ȼ��У��Ӧ��Ҳ֪������¡�

��������֪�崨�����ἰ���¶������رܣ�ȴƫƫһζ
���ʣ�����У������ͼ�ɡ�
�����У����Զ����ս�����崨ѡ���˽���ս��

������һ˲�����̵��㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160840b57">
���ҵļ��ˣ����Ӻ�Ů����������������
�������ݣ��������ԡ������̬�ȣ��ǳ��ģ�
���ǳ�����������

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160850b57">
��ʧȥ֮���������ź������ź����������޷�
�ͻ��ĳ̶ȡ�Ȼ��ȴû�а취��ء�
�����߲��ܸ�����������ʲô�����ܡ���

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160860b57">
���������ʵ�Ķ����������ҡ�
����������������ڽ̡���У������֪���ɣ���
��Ļ�����ƵĻ����̡���

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160870b57">
����Ȼ���˼����Ҹ棬���ǳ����������⣬
��û�д��Ա������б����Լ��ķ�����
��ʮ�ֱ�Ǹ���������Ի�ÿ��ȥһ�ν̻ᡣ��

{	FwC("cg/fw/fwУ�L_ͨ��.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160880b23">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0881]
����ν<RUBY text="����">����</RUBY>��������׼ȷ�ı������ڣǣȣ���ǰ
��ֹ���ǵ��ڽ̼�ʹ��������Ҳ��������
�����������Ļ������䵭��Ļ�������߻�����
Ҳ����ʵ����˵��˽�½������൱�Ͽ����ѹ��

������й���Ա��������س���̻ᣬ
��<RUBY text="����">˽��</RUBY>�ﻹ��֪�����ܵ������ĶԴ���
���������²��Ǳ��жϽ�����·�����̶ֳȾ���
���µİɡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160890b57">
��������Ϊ��֧�����ҵĴ��ڡ�
�����ǣ�ȴû�г�Ϊ���ꡣ��

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160900b57">
�������ҡ��������ν̡�
��Ҳ������Ȱ��ȥ���¾���������
��Ȼʧȥ�Ķ�����Ҳ�޷��һأ���
ô���٣������ҵ��µ�ʲô����

//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160910b57">
�������������Ӻ�Ů��һ�������������ࡣ
�����������ģ��Խ�ʦ��������¿�ʼ��
Ϊ��������ԣ��Ҳ�վ�����У������

{	FwC("cg/fw/fwУ�L_�Ӥ�.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160920b23">
���崨������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0921]
�����˵�崨�Ļ�����ȭͷ��������ôһζ�����У��
��ֱ��ͬɳ��һ����
���߼��ѵش�Ϣ�ţ��߽⿪���죬���źò����׼�����
�仰��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwУ�L_�Ӥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160930b23">
���崨�������ǡ���

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160940b57">
����ϣ��ѧ�����������ġ�
������ϣ�������ǽ����ѵ��������������
���ࡣ��

{	FwC("cg/fw/fwУ�L_�Ӥ�.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160950b23">
�����ǰ�������

{	FwC("cg/fw/fw⏴�_���.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160960b57">
��У������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0961]
��̬��ǿӲ���侲��͸����
���崨��������˾��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw⏴�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0160970b57">
�������ش��ҡ�
������������Σ����ʱ����ʦӦ�ý̵�ѧ��
ʲô����Ҫȥ���𣿡�

{	FwC("cg/fw/fwУ�L_�Ӥ�.png");}
//��У�L��
<voice name="У�L" class="����������" src="voice/ma01/0160980b23">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0981]
��У���޷�����ͬ��
���Ӹղſ�ʼ�������������������˼��

�����ǣ���ȴ������ͬ��
����ʱ�˿̣�����崨����û�а취��ͬ��

������̹�׵�˵��
���Ҿ����崨��ս����Щ���ɡ�

����������Ĳ������������ԴﵽĿ�ģ�����
�Է����Ǹ��Լ��������ҵı��ˣ�����������
��������Ҫ�ܵ��ֶα��ɵ�ָ��ɡ�
�����������˵����ĵ���Ϊ�������ߵı�����

�����ǣ��崨ƽʱ�����ǻ��������֮�ˡ���
�崨�Ĺ�ȥ������Ϊֹ��Ҳһ�ζ�û�����׿�
˵����

������֮��Ҳ�ǽ���ͷһ����˵��
����ţ����������κ���˵���ɡ�

����ôΪ���µ���񽲳�����������Ȼ������
ͻȻ��õ����ǵ�ͬ�顣
������Ϊ�˰������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0986]
������
����Ϊ��<RUBY text="����">�ػ�</RUBY>��
���ػ��崨���е�������

��һ�뵽���������Ƿ���Ĵ�������������
˵ʵ���е㲻����˼��
������Ϊ�������崨�����ų��衣

����ϧ�������ߵı����ĳ��衣
�����������������ɱ��Լ��߳��ĵ����ࡣ

���ǵ�������ôһ���£������Ҳ����Ǻ�
�����
����Ȼ����������������ˣ��������ĵ�
��һ��һ�㶼û����⡣

�����ǣ��Ҿ��ñ���Ҫ�������֮һ��
����Ǹ�����Ǳ��л�⡣����һ�����ò�����

������һ���ء�
���Ҳ�֪����

����Ϊ��֪�����ҷ����Լ�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0160990b56">
����ʦ����

{	FwC("cg/fw/fw⏴�_ͨ��.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0161000b57">
���ţ���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0161010b56">
���Բ��𡣡�

{	FwC("cg/fw/fw⏴�_Ц�.png");}
//��⏴���
<voice name="⏴�" class="⏴�" src="voice/ma01/0161020b57">
�����õ�Ǹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1021]
���崨��Ц��ҡ��ҡͷ��
����������ѡ���ˡ�

������ʱ�˵ĶԻ�����˭Ҳû��׷����
����ǰ�ľ����Ѿ����˽����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
	CreateColorEX("��ܞ", 15000, "#000000");

	SetVolume("SE01", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	Fade("��ܞ", 2000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
����������
�����գ��崨��������ͬ��Ϊ������ȡ����������
�ж����ɵ��Ͽɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 1000);


}

..//������ָ��
//�Υե����롡"ma01_017.nss"

