//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_009.nss_MAIN
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
	#bg069_���ӘS���ڎ��g_01c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_010.nss";

}

scene md06_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md06_008.nss"


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "BLACK");
	CreateColorSP("�\", 50, "BLACK");

	OnBG(100, "bg069_���ӘS���ڎ��g_01c.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\",1500,true);

//�����虜�

	CreateSE("SEL01", "se����_����_����᤭02");
	MusicStart("SEL01", 0, 1000, 0, 1000, null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ˡ�

����һ�����ˡ�
������˭���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL01", 3000, 0, null);

	SetNwC("cg/fw/nw���h������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090010e146">
���������磬ս�����ӣ�
��ս��һֱ�ڳ����������߲������ӡ���

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090020e146">
�����������Ҳ��ʼ����
�����þͻᷢ���޴�����ѡ���

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090030e146">
��Ϊʲô���ߵ���һ�ز�!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ȫ�������Ҷ���
�����ҡ����ҡ����ҡ�

������<RUBY text="��������">�������</RUBY>���������㴦�ðɡ�
���Ҿ�Ȼ��������ң���ڣ��ⲻ�Ǻ������
��һ����������Ū���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw���h������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090040e146">
������ÿ���˶������Ρ�
����Ҫ��ж���������ϡ���

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090050e146">
�������������˽��յ����ѣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ӹ���ɡ�
����ȫ��ȷ��û���˻�񶨡���ȫû��
�������ʵ���ء�

�������ˡ����Ը����Ұɡ�
����Ҫ��ô���Ŷԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw���h������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090060e146">
���������������ǣ����Ƿ��µĴ���
������һ�°ɡ����ǵ�������ҵ�
������˭�𣿡�

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090070e146">
����������ʡ�
�����ǣ������������ĵ�������Ǽٵģ���

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090080e146">
�������ǰ�����ϱ����ķ����У��ϳ����ʤ����
���Ǵӹ������Ȩ����Դ��
����������ʱ����ͳ�ĳ�͢�Ǳ�������

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090090e146">
����ͳ�Ļ�Ȩ��ʧ������Ļ�Ȩ��
ȷ���������ݴ���⵽���ۡ���
����������ۻ࣬������������
�Ӷ�Ϯ�������ǣ���

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090100e146">
����Ϊ��͹���
���Ǳ�����;֪����
����������ĵ�·����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ȷ�ĵ�·��
������ĵ�·��

����ѡ��ĵ�·�Ǵ���ġ�
��������ڿ�������������
�ұ�Ȼ��ѡ����ȷ�ĵ�·��

��ֻ�ǡ�
������������ȷ������������ʲô�أ�

�����׹�ȥ���ܾ���һ�ж��Ǵ�ġ�
��������һ�δεĴ�������������ǰ���µĹ���
�Ӷ�û����ѡ�����أ������ò������ľ�����

����ô����Դ���������
������Ҫ׷�ݶ��٣��Ҳ��ܹ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw���h������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090110e146">
��Ҫ�����ͳ����ʣ�
����˭�������ң���

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090120e146">
���Ҳ��󣬲��Ǳ����ĺ��ᡭ��
���ǲ�����ͳ���!!��

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090130e146">
�����Ǳ���ϳ�������α��ʣ�
ӵ����Ϊ�µ���ʣ�
�����˱�������

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090140e146">
�������Ҿͻḳ����̫ƽʢ����
������һ�ջ���̫ƽ��ҵ����

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090150e146">
����Ϊ������������ʡ���
��������֮��!!��

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090160e146">
��������!!!!!!
�������ɣ���֮����!!!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����

����������ƽ��

��������

���������<RUBY text="��">��</RUBY>����

���Ǹ��ڹŴ�Ԥ���б���Ϊ���ľ����������ܾ���
��Ӧ����Ϊ���Ȳ��������ٵİɡ�

�������һ�д��󶼱���������ɱ�������
Ҳ�ܱ�Ĩȥ��˭�����Ի���Ҹ�����

��������ˣ�������Ρ�

�������Ĵ��󣬾����뽫֮�ƻ���

�����ǻ�����

�������Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md06/0090170a00">
���񡭡���

{	NwC("cg/fw/nw���h������.png");}
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090180e146">
�����ޣ�����֮����
�������꣬��Ϊ��һ���ط���;֮�ˣ���

//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090190e146">
��Ϊ������ڱ����ĵ�λ����ͬս���ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0090200a00">
���񡣡�

{	NwC("cg/fw/nw���h������.png");}
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090210e146">
�����ɣ���������Ҳ�ǣ�
��������������һ��֮������

//�룺�������Ȥ��̣���090930��
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090220e146">
����Щ��Ȼ�����α��ʵ�
�����ǵò�������ģ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0090230a00">
���񡣡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/0090240a00">
���������Ϊ������������Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������؂}�����

	OnSE("se����_����_������01", 1000);

	WaitKey(300);

	SetNwC("cg/fw/nw���h������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090250e146">
��Ŷ!?��

{	CreateSE("SEL01", "se����_����_����᤭02");
	MusicStart("SEL01", 0, 1000, 0, 1000, null,true);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0090260a00">
��Ϊʲô����һ����׷ɱ!?
���񡭡�Ϊʲô����

{	NwC("cg/fw/nw���h������.png");}
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090270e146">
���ȵȣ�����������ˡ���!?��

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0090280a00">
����Ҫ���ȵĻ���ȥ���У�
�������̤����Ҳ�޷������ǡ�����

//��������
<voice name="����" class="����" src="voice/md06/0090290a00">
���������<RUBY text="��������">����ʵ��</RUBY>��ȥ��!!��

{	NwC("cg/fw/nw���h������.png");}
//������㣯�}�ɵۡ�
<voice name="����㣯�}�ɵ�" class="����������" src="voice/md06/0090300e146">
���ȡ��ȵȣ�����ɱ�ң�
���Ҳ����ˣ�������ͳ�ʵ��һ��ǲ����ˣ�
��λ�����ʡ�����

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md06/0090310a00">
������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��á�
	OnSE("se����_����_�������Ƥ�01", 1000);

	CreatePlainEX("�}��д", 9990);
	Fade("�}��д", 0, 500, null, true);
	Shake("�}��д", 300, 0, 30, 0, 0, 1000, Dxl2, true);
	Delete("�}��д");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����ͬӿ��ķ�����һ��Ʋ�¡�
�������۰������������ı����ţ�
һ���̵����ˡ�

������û���ˡ�
����Ҳ�Ѿ����ˡ�

�������ô���ȫ������ĺ÷���
���޴���Ѱ��

�������޲ߡ�

��һ�ж��Ѿ����޷��ı䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL01", 1000, 0, null);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



}

..//������ָ��
//�Υե����롡"md06_010.nss"