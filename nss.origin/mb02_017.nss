//<continuation number="270">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_017.nss_MAIN
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
	#bg001_��a_03=true;
	#bg067_���ӘS�����ܘS��_01a=true;
	#bg067_���ӘS�����ܘS��_01b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_018.nss";

}

scene mb02_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_016.nss"

//��Ϧ
//���ܘS��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg067_���ӘS�����ܘS��_01a.jpg");
	CreateSE("SEL01","se����_����_����᤭01_L");
	MusicStart("SEL01",3000,800,0,900,null,true);
	FadeBG(3000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ְ��Աȫ��������������̨б��Ŀ�̨�ϡ�
�����������ڵ����ߣ�������Ƭ������ʺ��������֣�
�����ǵ�������⣬��Ҳ��������Ȼ�ġ�

����Ϊ�����ϱ��ĸ߹ٹ����ǻ�δ������
������λ�����׳�������Ѿ����ˣ����������ͯ�ġ���
���Ͼ���̬�Ȳ��������ĵ�λ������Ϊ����ʾ��Ϊ����
�˵Ĺػ���

��������λ��������Ȼƽ��Ҳ������������ʿ���������
�����������˲���ɫ��ͷ��
���⵽���Ǻη��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170010a02">
��������
��С�㣡��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0170020a00">
��ʲô����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170030a02">
�������������������㿴�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������Ͷ��һ����ָ����

���߹��ǿ�ʼ�볡�ˡ�
�������л���һλ��粢�����۵�����Ů�ԡ���������
�Բ�ӣ�ӡ�

��������û�뵽��
��ͯ�ĺ�������λС�㶼��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170040a02">
������ȥ��֮ǰҪ������ˡ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0170050a00">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�@��_ͨ��_˽��b.png");
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����Ȼ��������������ֻ�ǵ��˵�ͷ���ٶ��ԡ�
����������С������ˡ�

����������ķ�˿������Ż�����
������һ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb02/0170060a00">
����������������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170070a02">
��������ô�ˣ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0170080a00">
��ûʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���߹ٺͷ����Ǵ��¾������������������֮ϯ��Ȼ
���š�
�����Ǻ���֮λ�����Զ�����

�����á�
��һ������С������ļ��š�������������Ϊ�Ϸ���
�ܵ�Ů�������������⼯�ŵ���ͷ����������ˣ���
���Ǹ�����ϯ��

�������������ɰ��ϡ�
����λ���꽫Ҫ�ӹ������游�Ǽ̳���������֮λ��
��Ϊ�����޵ġ���������Ϊ���µ�ͳ˧��

�����������е����������鲢����죬ͻȻ����ת����
ͷ��
���ƺ��Ǹ��ܵ��˲�Ѱ�������ߡ�

��תͷ��ȥ��
�������ǸԲ�ӣ�ӡ�

��������Ϊ���ȶ���Բ���۾���
��Ҳ��˭��û���ϵ���������μ����Ͽ���������Ӱ��

����գ��գ�۾����ƺ���Ϊ��ȷ�ϣ��ٴο�ȥ��
�����ţ��Ծ��ı��������������Ƶ�ϲ�á�

����Ϊ��ױ����С�����ݵ�Сװ����ӳ��������������
������������Ļ���������һ�䡣

�������������ߣ�ӣ��С�����΢Ц��
��
�����ܸ�����ǽ������֮��ȷʵ��ϵ��һ������֮�ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������äȜ��㤲
//��������
<voice name="����" class="����" src="voice/mb02/0170090a00">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170100a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����ϯ�������������
	SetVolume("SE*", 2000, 0, null);
	OnBG(100,"bg067_���ӘS�����ܘS��_01b.jpg");
	FadeBG(2000,true);

	CreateTextureEX("�}�ݱ���", 2100, -437, -418, "cg/bg/resize/bg067_���ӘS�����ܘS��_01bl.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
�����ֱ��ݿ�ʼ�ˡ�

�������Ƕ���Ŀ���Ϊ�����������֮��Ϊ���ǵ�
���¡�
���������򡰶�ʢ���ȹ���ʮ���֣�������������Ҫ����
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣ�
//���ܤβ��֤����e�������������������ˡ�
//���m��̨�~�ˤ�fwͯ��_�m����ʹ�á���ǰ�ڤ⸶����
//�����εǈ�����̨�~�ˤ���ǰ�ڤΤ�
	SoundPlay("@mbgm09",3000,1000,true);
	Fade("�}�ݱ���", 2000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0091]
��
������ɽ�ǹ�Ϊ����֮�ء�
�����������ɮ�˵��ã���̾��׳��֮����

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb02/0170110a00">
����������ǡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170120a02">
����ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��
����ʱ������һλ���ˡ�
����ɮ�˽�����ʤ�ż�֮�󣬴���ȥ��ƽ��Ժ��

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwNoh("cg/fw/ny����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������
�������˴���
������ƽ��Ժ��Ҳ������

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����������������᳡��
����Ȼ˭Ҳû�д�����������Ҷ���С�����ｻ����ǡ
���γɲ���֮�ơ�

������ƫƫ���������
������Ϊ�Ρ�

�������Ȼ����ʹû�г������۵���Ҳһ���ɻ�
���������¼������ű��ݵģ�ֻ������������λ���ϵ���
�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwNoh("cg/fw/nyɮ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��ɮ
���˴�������Ȥ��
�����ܼ���������ơ���

//��ɮ
��������״����
���Ǻ��⡣��

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���Բ�С�������Ȼ������ƫ����̨
�ڱ�����ϯ���ǻ���
��ע�⵽�����ߵ����ˣ�һλ�ǲ�֪���η�Ӧ�İ��ϣ�
��һλ�ǲ����κη�Ӧ������ͯ�ġ�

��һ�������ӣ��С�㣬�ٴ�������̨��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwNoh("cg/fw/ny����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������
�����մ˴����й�ս����
��Դ��λ����ս�ܡ���

//������
���ڴ˴�չ�������Ծ�����Ȫ����

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170130a02">
��������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0170140a00">
���ǰ�������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170150a02">
����ν���������Ǹ���
����Դ�����ٱ�֮ǰ��������ʥּ
��ƽ�Ͻ�ս�����ս�ܶ������Ǹ����𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0170160a00">
�����ǡ�
��Դ��λ��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0170170a00">
�����������Ϊ���ǵ����֡�
�����ǡ���Ϊ�Ρ�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170180a02">
����ʲô��ֵ��𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0170190a00">
�������뿴��
���ǿ��ǹ���<RUBY text="����">��λ</RUBY>��<RUBY text="����">����</RUBY>����


//��������
<voice name="����" class="����" src="voice/mb02/0170200a00">
���������뵽˭����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170210a02">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������Բ�<RUBY text="����">����</RUBY>��
�����ְΪ���������ٽ�<RUBY text="������">����λ</RUBY>��
������ΪԴ�ϡ�

�����߶��Ƿ�����Ȩ�ߺ�ս�ܶ����Ĵ󽫡�
�������������˵����ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mb02/0170220a00">
���Ҳ���Ϊ����żȻ��
���źӹ����ڿ���ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwNoh("cg/fw/ny����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������
���ʶ��˴���Ϊ�����ż�����
��������Ƭ���Ρ�����

//������
����������֥֮������

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
����������ֹ��
�������Ŀ�ڴ������������ֳ�������ʵ���ʺϣ�����
Ȼ������������ͯ�ĵ������½��еģ�˭Ҳ�޷�ָ��

����ҥ�������ɤ�����������ػ��ྲ�������á���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����|
����������������Ҳ��
����������֮�����ߡ���

//�����|
���������ؾ������£�
���׺�ɣ�﷭�����ˡ���

//�����|
����������Զ�����ͣ�
����������������Ҳ����

//�����|
��������������ȥҲ����
��������������ȥҲ������

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170230a02">
���ǹ������˲�����
���ص�����С�㣬ȴ�����������ĳ��ʣ�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0170240a00">
������Ҳ��ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240a]
�������Ҳ硣��ΪĻ��ͳ˧������Ϊ
ȴ���˲��ɵ�<RUBY text="��������">�������</RUBY>��
��
���������һ����Ϣ֮�󣬱��ݼ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240b]
��
����λ������Դ��������ꡣ
��������ʧ֮�󣬵����˳��ֻش�ɮ�˵����ʣ�������
˵�����Ĵ�˵��

��
��ɮ�˶����������������������������ꡣ
�����ǣ���ҹ��ɮ��������𡪡�

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwNoh("cg/fw/fwͯ��_�m��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���m��
��Ѫ����¹֮����
���첨���ʶ��ƣ�����ն�麡�ǡ���

//���m��
�����䲻�����δ�����֮�ˡ�
���غ��ָ�����һ�����

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�������˽ǵ�ר��������ߡ�����������������
��������������˻ں޵����棬��벿�ֵ����ǵǳ���

��������ǣ�����������̨���������������Ա��Ȼ
���衣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwNoh("cg/fw/nyɮ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��ɮ
������˼�顭��
������֮��ȴ�������У������о���Ϊ�ιʡ���

//��ɮ
�����ʿ��������е�Դ��λ
��֮����񡣡�

{	FwNoh("cg/fw/fwͯ��_�m��b.png");}
//���m��
����Ȼ�����ֲ��ͥ԰֮��Ҳ�޿����ء�
���Ա�����֮��ǰ�ѱ�֪��ʵ�����衣��

//���m��
�������о�������

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/mb02/0170250a00">
���൱�п�ͷ����


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0170260a02">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���Ҳ��Ƕ����ֳ���һ�����⡣
���������Ҳ�ܿ�����Ա������͵��ݼ���

���赸��һ����һͶ�㶼������ȡ�
��������ȵĶ���֮�ж�������ʿ�����ǡ�

������Ϊ��ɫ�ı���ɤ����
������һ��ԶԶ�޷������������

����Ϊ������С�
����λ����̨�ʵ������м����������������ٴ�����
�����С�

������������������������ע��ʧ�ܵ����˱��顭��

�������ĺ�г��
������Ǹ��ֵļ��ա�

���ݹ۲죬�ǽ����ϵ�Ĳ������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//�����|
����·��������϶��
���ټ������������ǿ��ա���

//�����|
��������Ϊǰҹδ�ߡ�
����ƽ��Ժ����С����ȥ��������
���ж�������

//�����|
����ӿ�����ˣ������ټ��ˣ�Դ�ϰ���٣�
Ψ�����˾ۡ���

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
������������������������ս����
Ϊ�ص����Ŀ��
����������г�������˹�������д�����ࡣ

�����ǣ�ȴ�ܸ��ܵ���еĴ��ݡ�
����ΪԴ��λ���������ӣ���Ϊ�η�ս���ɡ���ս��ʱ
�����θ��롣

�����еĿ��ա�
�����еı�ʹ��

������Ա��һ����һͶ��䣬���������˵�ȫ�����ꡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwNoh("cg/fw/fwͯ��_�m��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���m��
�����ã�Դƽ֮������
�����δ��ϱ���������

//���m��
��ʿ���ź�������ʸ��Х������
���쳹���棬������ս����

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
������ӣ��С�㵥�����졣
���������У����ǵ������Ѿ���Ϊ��������

��������˵��Ů����һ�㣬�������������н���ս֮״��
������������ԭ�Ҹ١�����������֮����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwNoh("cg/fw/fwͯ��_�m��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//���m��
��������ԭ̫֮���Ҹ٣�
�������δ��ȷ���Ҳ����

//���m��
��δ��ͨ�������������

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0341]
//�����|
����������ֱ�봨�У����������
��Ⱥ�����֮����������������

//�����|
������ײ�����
�����δ��ˡ�����

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���������Կ�����
����ʿ�����ˡ�����Ȼ��Ϊӵ�н���֮������ߣ���ѡ
�����ʿ��̤���ӣ�����ͬ�顣

����֮��̨�����̨��
��ʵ�˴�ǧ���硣

�������ܳɾ�����һ�����硣
��������ʦӵ����������ʱ����̨�������硣

���˿̵���̨����һƬ������ء�
���߰���ʮ��ǰ�����δ��������

������������µĻ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwNoh("cg/fw/fwͯ��_�m��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360a]
//���m��
���Ҹ������ʿ��������

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360b]
//�����|
��ˮ��������Ҵ�����
��������������֮������׳�����
ˮ��֮Ϯ����

//�����|
������������ִ�������ˣ�
��������������

//�����|
����Ψһͳ˧֮������
���ɹ����ϴ󽭾���һ��
������ˮ����

�����ķ���Ҫ���ѱ����ơ�
���о�����ͬ��֮����ӿ��ŭ�Ρ�

��ͬ��������ɱ����
�����и��м������������ˡ�

������Ͻ�������ˡ�

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwNoh("cg/fw/fwͯ��_�m��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380a]
//���m��
�������˴�����

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380b]
//�����|
�������˴�����

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
������֮�ϣ�������չ��
����ȥ���ף��ε����ʡ�

�����ǣ����С���
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwNoh("cg/fw/fwͯ��_�m��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//���m��
����ľ֮���޿���
������֮ʱ���䰧����

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
������������������֪����
��ȴ��Ȼ���������֮�䣬����Ψ������ĩ·���Լ���

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/mb02/0170270b28">
���������״��ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
����������ȥ��
����ɮ���ѡ�

�����޾����У���̨��Ļ����
��Ψ��ɥ��֮Ů�ĵ������ʣ������������õĿ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ�ȥե��`�ɡ��gȡ��
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_018.nss"