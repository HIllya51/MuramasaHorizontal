//<continuation number="590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_010.nss_MAIN
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
	#bg103_���ӘS������ٛg����_01=true;
	#bg105_���T�����ڂ�_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_011.nss";

}

scene md04_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md04_009.nss"

//���ٛg��
//��������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg103_���ӘS������ٛg����_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);
	CreateSE("SE�|�đ�", "se����_����_���L_�ձ�_L");
	MusicStart("SE�|�đ�", 2000, 500, 0, 1000, null,true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ӵ������Ĺ��Ǿ�ʮ����ʵ�ڳ���ս����
����������Զ�����ڻ�����������п�Ϯ������������
�����ɳ�װ�ײ��ӡ�

������һ����������Ϊ���ս��ʷ������һָ��������
������
���ú�ը�ļ�϶�������ƣ����ñ��ݵ��ڻ�ʹ��������
�������֮�У��Ӷ����Ƶо�ǰ����

������ʱ�����Ŷ����Ӽ��ҵĹ�������ս���ڳ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��bg105
	SetVolume("SE�|�đ�", 2000, 200, null);

	CreateTextureEX("�}����100", 1000, @0, @0, "cg/bg/bg105_���T�����ڂ�_01.jpg");
	Fade("�}����100", 1000, 1000, null, true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md04/0100010a00">
������ܥԽ���ڱ��ֲ������

{	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100020a07">
������ò����𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100030a00">
���������ǳ�������û�μ�ʵս�ľ��ӡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100040a07">
���������ǵ�Ȼ��
���ڴ�ս�����������ڣ����ǿ�û���š���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100050a00">
����������
������Ϊ�й��������ң�������Ȼ������ѹ
�������𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100060a07">
������Ҳ��һ����ϵ��
��ֻ��ӲҪ˵�Ļ�����ʵ���෴����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100070a00">
���෴��������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100080a07">
��������һ��ܥԽ�������ؼ�����
�����ŵ�������ξ�����پӶࡣ
�����Ҹɵ���һ���������ټ������ġ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100090a07">
����������˵���Ѿ����ǵ�һ�βμ������Դ��
Ϊ���ֵľ���ս���ˡ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100100a00">
����������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������Ⱥ�Ϲ����޳�����ξ��ξ����ǰ�ߵ���ָ�ӣ�
��Ȼ�Ͳ�����ʿ��������ҡ��
���¼�ָ�ӹٵ�������λ��ʿ�����Ϸ�ӳ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md04/0100110a00">
�����ǡ�����Ȼ���ֺܺá�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������������ֲ��Ŀ��Ǽ���˵����
����Χ��Ȼ��������Ļ�ţ���ս���Ľ���������������
�壬����������ˣ���������Ҳ�ɲ������Ƿ���׷����
����Ҳ�������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md04/0100120a00">
���Ͽ�����������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100130a07">
���š�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100140a00">
����������ȥ�����ǵĿ�ս������ȫ��ġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100150a07">
����ȫ��ȷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������뵽�˰ɡ�
������跳�յ����Ŷ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�䵨.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100160a07">
�����������û�а취���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100170a00">
����ȫû�취�𣿡�

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100180a07">
��ֻҪ<RUBY text="����">�Ǹ�</RUBY>���ھ��޼ƿ�ʩ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����200", 5000, @0, @0, "cg/ev/ev805_�����}����`�����Σ�_b.jpg");
	Fade("�}����200", 1000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�������˵��ָ���̾�߿յķ��н���

���ǲ����ǵ����ķ�ͧ�򵥴��ľ��÷��н���
�������������ķɴ���

��Ҫ�������ط��н���
�����Ǿ޴������ɱ�������ҩװ����Ҳ�����
�ģ�ͬʱ������ǿ������������ĸ�����ܡ�

����ֱ���ǿ���Ҫ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100190a07">
����Ϊ�Ǹ������˻��صĽ�ɫ�����˵������
�Ϳ��Ա��и߶����ƶ����Ͻ�����
����ʹ���Ǵ����ٶ࣬���˶�û��û�ˡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100200a07">
��һ���뼯��ս��<RUBY text="����">����</RUBY>���Ļ���
��Щ����������ͻ�������ӡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100210a00">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100220a00">
��������޼ƿ�ʩ�˰�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100230a07">
���ǰ���
�����ִ�ս���У���Ӧ�ٶۿ��������ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100240a00">
������ս�����˱�����Լһ�����𣿡�

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100250a07">
������Ҫ����⡣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100260a00">
����������
��������Ʋ��϶Բߡ���

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100270a07">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100280a00">
�������ǵ������ȫ��������ô������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100290a07">
����������������ս������ȫ����ս����
���⵹��ʧΪһ��ѡ�񡣡�

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100300a07">
��������һ�����������߾ͱ���ס�ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100310a00">
�����е�<RUBY text="������">��һ�</RUBY>�����������ĸ����
���һ��Ǻ�ը���ɣ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100320a07">
���š�
�����ǳ���������Ļ�������û���ɲ���ը�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������ս���к�ըǿϮ��
���û�����������������÷��н������Ϳգ��Ե���
���и߾��ȵĺ�ը��

���ɹ��Ļ�ս���Ժգ����Ƿ��н����о������������
�ǵ���ĶԿ����������Σ��Ҳ�ܴ�
���Է�Ҫʵ������սҲ��Ҫ���ġ�

�����ǳ���������Ļ�������ʵ�к�ըǿϮ��Σ����
�ͻή�͡�
�����������Ĺ��ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md04/0100330a00">
��û��
�����ǣ��������<RUBY text="����">����</RUBY>�ġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100340a07">
������������ʲô���ɣ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100350a00">
����������
��<RUBY text="����">��פ��</RUBY>��Ŀ����ʲô����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100360a00">
������������������ǿ��ȴ�����ſ�ս����
�ķ��������ʱ�䣬��Ϊʲô����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100370a07">
������������

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100380a07">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}����200", 1000, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ܥԽ����ž���������������Լ��Ķ�ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100390a07">
���������á�
�����Ӷ����ս�������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100400a00">
���ǵġ�
�������ڿ���Ӯ��ս��֮����¡���

//��������
<voice name="����" class="����" src="voice/md04/0100410a00">
���ڿ�����β��ܲ�������Ϊ�У�
�������֧���½���ͳ�Ρ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100420a07">
���������������Ĳ��Ȳ�˵����ը��Ե�����Ļ�
Σ�����ܱߵ���Ŀ����Ժܸߡ�
������ֻҪ���ؾ��ܱ���Σ�������ǡ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100430a07">
��������Ų�����ġ�
�����������˵���������ֱ�Ե�����������
ͦ�ӽ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100440a00">
����Ȼ�����Ŷ�����ɢ����ȥ�ˡ���
������Ӧ����û���ü����ܵģ�������δ��ɢ
�ĵ�������Ҳ�ᱻ�������������ƻ���������
��Ҳ����������²��õ�ӡ�󡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100450a00">
������ս���ͳ�δ������㡣��

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100460a07">
������һ�������ǾͲ�����к�ըǿϮ��
�������������Լ�����ѹ���������£��ñ��
�ֶ���Ӯ��ʱ�򲻻ᡣ��

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100470a00">
���š�
��˵�����ⳡ��ս�����Ӻ����ԡ����ըǿϮ
�Ļ���͸����ж��ˡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100480a07">
���ԡ�
���������������ӷ�Ӧ̫������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100490a07">
����һ�������˶����˰�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100500a00">
������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100510a07">
�����ǿ��Ǳ����ս�����������ڿ�ʼҲҪ��ϧ��
��лл�㣬��硣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100520a00">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������ټ�Ļ�ţ��򵥵��������
��������һ������ܾ��ȣ����ƺ����Ͼ�������京�壬
��æ��ɢȥ��ʵ���

��ͨ�ű��ĺ������Ĵ������Ĵ�����ĽŲ���������Χ
����������һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100530a07">
�����ǲ���������������������Ǻ��Ѱ찡��
��������н�����ը����װ�����Ҳ��û�
����һ���ɡ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100540a00">
�����溽��ս������Ҫ�ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100550a07">
������û��
��֮���ע����ǡ���
��ͶϮ���𡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100560a00">
��½ս��������𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100570a07">
���š��Ҳ���Ϊ����������ֹ��Щ��Ͷ��
�������֡�
�������ó��ص��������ս����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0100580a00">
����ս��Ҳ�ܲ�������
���������˱Ȳ����ڴﵽһ���ġ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0100590a07">
���Լҵ����ϴ���ܲ���Կ��ġ�
��һ�㲻���㲻��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ٛg�ڤΑ��
//���ܩ`��ܩ`��
	DeleteStA(1000,false);
	FadeDelete("�}����100",1000,true);
	MusicStart("SE�|�đ�", 0, 1000, 0, 1000, null,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������������Ի��ڼ䣬ս�����ڲ��Ϸ�չ��

��ǹ��֯��������ײ����
��������ȥ��

����ͣ����ȥ��
���޾�����ȥ��

�������ļ�ֵ��ͬ�ݽ档
������˭�ߺ��������һ�۵㣬��������Ϊ����
����ʵ��ǰ���������ġ�

��������ս����
������Ϊս�������硣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1500, 0, null);
	SetVolume("@OnSE*", 1500, 0, null);

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_011.nss"