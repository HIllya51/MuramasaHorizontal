//<continuation number="1130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_009.nss_MAIN
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
	#ev128_�����ι�_b03=true;
	#ev008_���Ӥ򱧤���Ů=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_ɽ�\�����I=true;
	#voice_on_���I�ε�=true;

	$PreGameName = $GameName;

	$GameName = "ma05_010.nss";

}

scene ma05_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_008.nss"

//��ɽ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg055_ɽ�\������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ɽ����ռ���˽����Сɽ��Ϊ�ݵ㡣
���ӵ���ѧ�ĽǶ��������������ڱ����վ�ɽ����¡��
��ʵ�ʳ�֮Ϊɽ��Ļ��������ڸߴ󣬳�֮Ϊɽ���Ļ���
�����ڰ�С������ֻ�ܳ�֮ΪСɽ�ˡ�

����ȥ���˴�������Ȼ����С�����ǵ����ֳ���
��Ȼ��ɽ������ǹ���Լ���������в����������һ����
ʣ�������ȥ��������Ϊ�������ǣ�ɽ���Ÿ���Ҫ��
��ɽ��


�����㹻��С���γ�ѹ�ƣ����ҳ����ֺ����ɡ�����ɽ
������������ɽ��ʥԼ֮�أ�Ҳ�Ҳ����ܹ������ǵ�
�۾�����
����������������Լ����������ܲ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_�|��_�}��������01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090010e080">
��ͣ�¡���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090020a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ߵ��·���Ⱦɽ�о�ɫһ�������ı��ݵ�ʮ��ǰ��
����ǹ��ͬʱ��ֹ���ҡ�
���ú������ڵ�����ɽ���м�����ߵ���ô���ĵط���
����ֻ�����Բ²��ҵ���ͼ�ɡ�

�����ɵ����ߴ������ҵĴ�硣
������ʵ�ؾ���˫�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwɽ�\��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090030e080">
���������ϵļһ���
��������ģ�������������ǵ���ء���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090040e082">
����׽�ԲصĻ�����԰ȥ�������ꡣ
������Ĺ�����е����˰�����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090050e080">
���ٺ٣�
���ǰ���������<RUBY text="����">����</RUBY>�Ļ�������
���ǻῪ����Ŷ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������һ����������ҫ�ض��һ��˻���ǹ��
��Ȼ����һ��������������ϵ�С���������������
���ɡ�����������ҫ���Դ��Һü�ǹ��

������ȷ˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma05/0090060a00">
��ǹ�Ƿ���ġ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090070e080">
��������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090080e082">
��������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090090a00">
��������С��������Ҳ�ж�ʱ���׽�Բ�����
�ù��ô��ӵ���ǹ������Ȼ�ܱ�Ǹ����������
�ҵ����á�������Ϊ�����������˵�����
��Űɱ��Ϸ�������Ͼͷϳ��ˡ���

//��������
<voice name="����" class="����" src="voice/ma05/0090100a00">
����Ϊ�Ⲣ����ȫ���Ե����󡣡�

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090110e082">
������������
�����������𡭡�����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090120e080">
��������˵��������������ʲô��������
�İ����������ϼҡ�
�������ʹ��ǹ��ʱ�򣬰ѹ��ǵ�����֮��
�ġ�����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090130e082">
�������������ˡ�
��û���ӵ��Ļ��������֮��ġ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090140a00">
���ǵġ�
��������������ķ�չ�������ջ���
������ս����Ϸ���Ͳ�������׽�Բ���
Ϸ�ķ����ˡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090150e080">
�����𡭡���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090160e082">
����������
�����ԡ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090170e082">
����˵���㵽��������ʲô�İ�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090180a00">
����������ǵ����졣��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090190e080">
�������죿��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090200e082">
������ʲô��
���ѵ�������˵����׷��������˧С���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090210e080">
����������
����һ�����������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090220a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


/*
//������һ�r�˱�
//��ͬ�r�k��
{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090230e080">
��������?!��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090240e082">
��������?!��
*/

	CreateVOICE("����������1","ma05/0090230e080");
	CreateVOICE("����������2","ma05/0090240e082");

	SetBacklog("��������?!��", "voice/ma05/0090230e080", ����������);
	SetBacklog("��������?!��", "voice/ma05/0090240e082", ����������);

	MusicStart("����������1",0,1000,0,1000,null,false);
	MusicStart("����������2",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������㣯ɽ�\����������㣯ɽ�\�£�
��
��������?!��

</PRE>
	SetTextEXC();
	Request("@text0070", NoLog);
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0071]
//��������
<voice name="����" class="����" src="voice/ma05/0090250a00">
������Ϊ������С��������֮�����Ը��
ǰ��Ȱ˵������µġ�
  ����д�Ϊת���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090260e082">
������������������
��ԭ�������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090270e080">
��������˵��ơ���
��������ʵ�Ǳ���ϷŪ�˰ɣ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090280e082">
��������������
��ֻ�ǺͲ�̫�ܳ���
��ϵ���˳��Ϲ�ϵ�˶��ѡ�����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090290e080">
���������𡭡���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090300e082">
����ô�죿��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090310e080">
��Ҫ��˵��ô�졭����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090320a00">
������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090330e080">
�������ܾ��ñ������������ˣ�
����������һ������ȽϿ졣��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090340e082">
����Ҳ��ô���á�
����������ȥ�ɡ�����Ҳû�д�ʲô
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ͷ��ͷߴߴ�����ص�����ʲô����������ת��������

����֪Ϊ��Ī���ذڳ�ƣ���ı��顪�������ҿ�����
������ʲô�Ӻ�����ͼ��

��������������ͨ���ˡ�
��û�뵽����ô�򵥡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma05/0090350a00">
�������������ĵ��˰���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�������Ļ���̸��Ҳ�����ڴ��ˡ�
���ҵļƻ�Ҳ����ϣ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}��ܞ", 2000, "#000000");
	DrawTransition("�}��ܞ", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	WaitKey(1000);
	StR(1000, @0, @0,"cg/st/st����_ͨ��_��Tb.png");
	FadeStR(0,true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw���I_��Ц.png");

	#voice_on_ɽ�\�����I=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090360b31">
��Ŷ����������������
��������������������
��������������������
������������������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090370b31">
����������������������
��������������������
��������������������
����������������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090380b31">
����������������������
��������������������
��������������������
������������������!!��

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090390b31">
�����ء���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090400a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��Ȼ�����ϣ�������׻��顣

����������̤������ɽկ֮�С�
���˼���ɽ���������������ҵĻ�֮��һ��һ����һ��
��Ц����ͣ��֮�󣬶�����ôһ�仰��


���޴����֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090410b31">
������ֹͣ�Ӷ᣿���ߡ���
����Ҳ̫ʧ���˰ɡ����ǵ���ʲôʱ��
�Ӷ�������ˣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090420a00">
��������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090430b31">
��һĥ��
���㻹�ǵ��𣿡�

{	#voice_on_���I�ε�=true;
	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0090440b32">
������ɵģ���㡣��

{//���ܤ���
	CreateSE("SE01","se���L_����_Ź��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090450b31">
���ǡ����������Ӷ�!!
������Ϊ���ڴ�ֵľ����ж�����
����������ṩ���ʣ���

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0090460b32">
���ԡ��Բ��𣬽�㡭����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090470a00">
��������ô����������ΪҲ�޷���
������С���<RUBY text="����">����</RUBY>Ҳ�쵽�����ˡ�
��������ȥ������������С�������
����Ҳ�Ѿ����ܵ����ش����״������

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090480b31">
����ѽ�����𡣡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090490a00">
�������ܿ�������ˡ�����𣿡�

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090500b31">
������Ӵ��
����ô��󣬾ͱ�Ԥ����΢����һ��ɡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090510a00">
��Ԥ���ǣ���

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090520b31">
������Ǿ��»��ܡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090530a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�������������ŵ��
��������ֽмһ���Ļ��ﵱ��������ؼҵĻ�������һ
����ȫ�޷����ܵİɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma05/0090540a00">
������ʧ���ˡ�
����������ɽ���ŵ�Ŀ�ľ�����
ʲô�أ���

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090550b31">
�����ǲŲ���ɽ���ţ�
���������־ʿ�ţ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090560a00">
��־ʿ�ţ���

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090570b31">
��������Ϊ�˴Ӹ����ɵ������᳹�����
�����������������µ�־ʿ���壡
���ַ�а�񣬾�����������Ϊ�������쵼����
�г�һ�ճ�Ϊ��ս��̫ƽʢ���Ķ������š�����

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090580b31">
��Ҳ����־ʿ��!!��

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090590a00">
������������

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0090600b32">
���������İ�����
������˽�̾��ѱ�¶Ȼ����ҹ
���ߵ��𣬽�㣡��

{//������
	CreateSE("SE01","se���L_����_Ź��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw���I��_����.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0090610b32">
���ԡ��Բ��𡭡���

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090620b31">
����ô����
���������𣬴ն���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090630a00">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����������ࡣ
����������¶�֪���ˡ�

��Ȼ������Ҫ����ֻ��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma05/0090640a00">
����û����ֹͣ�Ӷᡣ
�����������𣿡�

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090650b31">
�������������˵�������Щʲôѽ��
������˵��û�����Ӷ�ѽ��
�����ǵģ��͵��ܵ�ƽ�񽲻����۰���
Ŷ����������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090660b31">
����������������������
��������������������
��������������������
����������������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090670b31">
����������������������
��������������������
��������������������
����������������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090680b31">
����!!��

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090690a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��Ц���쳹����֮ʱ���Ҷ����˸��Ʋߡ�
����ԭ�����������еķ���֮һ��

������������ĸ̸����ʱ��
���޷��öԻ������Ȼ�����޷���ȡ�����ɱ�ķ�����
������

�����У����ĵ�����׼����
�����ζ�û������Լ����ʺ�<RUBY text="����">����</RUBY>������ȱ���侲��
�����޷�������

���������з�ۻ�Ź���Ȼ��������ͷ��
����������������ң����ż�̵ı�����Ҫ�ظ��ղ���
˵�Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090700b31">
����ô����ذɣ�
���������Ƶı������Ѿ������ˡ�
���ص�����ȥ�ڰ�������

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090710a00">
��<RUBY text="����������">ɽ��������</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���ҳ�����ѹ��˵����
�����Ǹо���������ı仯��Ů����ͣ���˻��


����Χ������ɽ����Ҳ��ס�˺�����
���������շ����˱仯��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma05/0090720a00">
����Ҫ������������

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090730b31">
����������
��ʲôѽ����ôͻȻ����

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090740a00">
�����������߰ɣ���

{	FwC("cg/fw/fw���I_ʧ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090750b31">
������ιι��
����Ҫ�Թ��Ե�˵��ȥѽ����

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090760a00">
����Ȼ����Ů�ˣ�����Ҳ���Ǹ����ˡ�
��ԭ���ھ����ӵ����ô�ಿ�µĻ���Ȼ
�������İɡ���

{	FwC("cg/fw/fw���I_�@��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090770b31">
����һ�¡���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090780a00">
�����ˡ������ǿ���Ϯ�Ƽ̳��˸�ĸ�����
�ɡ���Ȼ����Ϊ���졣
�����ǣ�ӵ�еĲ���������Ѫͳ���װ�ΰɣ���

//��������
<voice name="����" class="����" src="voice/ma05/0090790a00">
���Ǹ�ʮ�ּܲ����ǰ���ɣ�
����˵����������ȴ����ʻ���У�
ֻ�Ƿ��ڱ�����װ�ε������ƺ�Ҳ����
����������������˰ɡ���

//��������
<voice name="����" class="����" src="voice/ma05/0090800a00">
��������ˣ��䵽��ɽ������ز�����
����ͷĿҲ���Ѱɡ����������������
�������ƵĻ����������ˡ�
��Ŷ�����ǲ�����ɽ���԰ɣ���ʧ�񡣡�

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090810b31">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�������ӶԷ��ķ�Ӧ������˵����ͣ��
����Ȼ��ֻ��Ϊ�˱��Ⱪ¶���㡭�����ӽ���϶��ԣ�
������Ч���ƺ�������

��������������������
����Χ��ɽ����ȫ�����Ĭ��

����Ҳ��Ĭ�ţ��������졣
���ù���������ʶ����߲�����ߡ���������Ϊ�˽���
һ�㴫����Է����¶�ǡ�

������һ�ᡣ
�����카�𴽽ǡ�

��Ц�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090820b31">
������Ȼ���أ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090830a00">
�����ԣ����Ҿ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����Ҳ�������Ц�Ż�Ӧ��
����Ȼû��������Է���������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma05/0090840a00">
�������Ӯ�ˣ�����Ҫ�������Ҳ
�������ϳ��֡���

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090850b31">
����Ӯ�˵Ļ��أ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090860a00">
���ţ���������
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����һ�㣬�Ҳ�û�п��ǹ���
�������Ұڳ������ı�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma05/0090870a00">
���Ҿ��������ðɡ���

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090880b31">
�������ߡ�
�����𡣡�

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090890b31">
�����������ˣ���

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0090900b32">
�������ˣ���㡣��

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090910e080">
���ٺٺ١�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���ͳ���Ц����ɽ��֮����ɢ��
����������Ȥ�ˡ������ǵ���ɫҲ�·����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090920b31">
���ð����ն�������
����������������������ܾ�������

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090930b31">
������̫������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���յ�ָʾ��һ��ɽ�������Լ�����γ�һ��̫����

��Ц���еؽ����ݸ��ҡ�

����������֮�ܵĸ߰���
���������м��Ｘ���Ļ�����ڳ�ʲô���ı����ء���

{	CreateSE("SE01","se���L_����_ȭ�|�����");
	MusicStart("SE01",0,1000,0,1000,null,false);}
�������������͵����
���������������������ѶϢһͬ���ҽӹ���̫����


����˵����ʲô��������Ӧ��Ҳ������
�������������¡�

��������Ҳû���㿳�ˣ�����Ҳûʲô��ϵ��
��ֻҪ����Ӱ�����ĵ��ӵ����㹻�ˡ�

{	CreateSE("SE01","se���L_����_������02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @0, @0,"cg/st/st����_���L_��T.png");
	FadeStR(300,false);}
���յ����ƾ�����װ����������ˡ�������ͷ��β������
������ְ����̬�ںü��ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090940b31">
����ѽ�������ͣ�
������ǿ�а�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0090950a00">
����������Ҳû���ˡ���

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0090960b31">
��������

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0090970b32">
����㣬С�ģ���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0090980e080">
����ܣ������ˡ�
��������챻����ˣ����ҪΪ��
���𰡣���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��ɽ����ȫԱ�����ʵ�������������׳�ޱȡ�
����װ������Ϊ���Ц��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	CreateSE("SE01","se���L_����_������02");
	StL(1000, @0, @0,"cg/st/st���I_���L_�Ʒ�.png");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//��������
<voice name="����" class="����" src="voice/ma05/0090990a00">
����ô�ˣ�
����������ɣ���

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0091000b31">
����ѽ���������𣿡�

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0091010a00">
�����ȵ������С���

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0091020b31">
���Ǻǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm09",3000,1000,true);
	CreateSE("SE01","se����_����_�᤺����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��Ů����������Ц����������ǰ���һ����
������һ���������������б��֪��ʵ���ĸߵ͡�

����ǿ��
��
��ͬ������˽��һ����

��<RUBY text="��������">���Ҹ�ǿ</RUBY>��
��
�����ȷ���Ѿ���������ϡ�

��������������

�����Э���޷�����Ļ������������������������
�⡪����ݷ�������
���������������ڣ��ܹ��ض�ʤ���ķ�����

�������޾��ľ����Զ�����
�����������ߡ����������ǿ�����ȫ����Ҳ��������
������ƥ�С�������ˣǣȣ�Ҳ�������ǵĽ���������
���Ǵ��ͳ��Ȩ��Ϊ���ۡ�

����λŮ����ǰ���Ƿ����������޵�һԱ��
�����ң���ӵ�жԲ��½ӽ����������š��������ڼ�ʹ
ʧȥ����������Ȼ����׷������ߡ���һ���Һ������ɡ�


����Ļ���������ߵ��β������ӵ�ָ�ӹ�ʱ������
�Ĺ�ϵ�ںܶ�������൱���м���ҵ��峤������
�̳��ˣ�������һ��ļҳ���
���������ӹ�ϵ������żȻ�ģ����Ǵ�ͳ�Եġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��Ȼ����������ˣ������λ�峤��ų������֮���Ļ���
һ��ʧȥ��λ�漴���������ѡ�
����˵��ͳҲ����ǿ������ģ����⿿����ʲô��֧��
���ˡ�

�����ȣ���ӵ�в�����֮Ϊ���������ߵ�ʵ������Σ�
�����ʵ��άϵ�����Ĳ��¡�
���ر����������ͣ��������ǲ����˺�֮�ˡ�


����������սʤ�Է���ϣ������ã��
����Ҫʤ��������ֻ���öԷ������ˡ�

��ֻ�Ƿ�����ս�ǲ��еġ�
����Ϊ����ȴ��һ��������ս�Ļ���һ�����ھŷֳ���
��ͬʱ����һ�ֽ��ġ�

��������һ�ֽ���������������Ѱ��
��ʤ���С��

��<RUBY text="����������">����������</RUBY>��
������˵���ײ����Ǹ�Ů�ˡ��������Լ�����ȥ�����
�˿��ͶԷ��Ĵ�����

������ҵ��ݼ��ܹ��ɹ��Ļ�����
���Է���߶������ң�Ȼ�󲢲�����Ϊ��ʤ��������ȼ��
��Ҫѹ���ҵ����档

�������ôֲ�������
�����ҵ���һ������������

����Ϊ��һ��նɱ�Է������޷��öԷ������������ζ
�ġ�
���Է���Ŀ�꣬�����ǿ���һ˫�ֽš�

��
������������ܽ��������յ�����ز��Ļ���
����ʹ�Է��ļ����Ƕ�ô�߳�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
//�������`�󡣓�����
	CreateColorSP("�}��ܞ", 1100, "#000000");
	DeleteStA(0,true);
	Wait(10);
	CreateColorSP("�}��ܞ��", 100, "#000000");
	Delete("�}��ܞ");

	CreateSE("SE01","se���L_����_�����02");
	CreateSE("SE01b","se���L_����_���nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdown(@0, @0,1500);
	SL_rightdownfade2(0);

	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("SE01", 100, 0, null);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("�}��", 3500, "#FFFFFF");
//	StL(1000, @0, @0,"cg/st/st���I_ͨ��_�Ʒ�.png");
//	StR(1000, @0, @0,"cg/st/st����_���L_��T.png");
//	FadeStA(0,true);
	CreateTextureEX("�}����100", 1000, 419, -20, "cg/bg/bg055_ɽ�\������_01.jpg");
	Fade("�}����100", 0, 1000, null, true);
	Zoom("�}����100", 0, 2000, 2000, null, true);
	SetShade("�}����100", HEAVY);

	CreateTextureSP("�}st100", 1200, 132, -74, "cg/st/resize/st���I_ͨ��_�Ʒ�_l.png");
	Delete("�}��ܞ��");
	Fade("�}��", 1400, 0, null, false);
	DrawDelete("�}��", 600, 1000, "slide_05_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
������Ҳ�ᱻ�Ҵ�ܡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0091030b31">
������������

{	FwL("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0091040a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
���з�������ǰͻ��������ΪĿ��ӳ�һ����

���ҽ����������󷽻رܡ���

�������Ž������ٶ�ǰ�ƣ�˳���ͳ�һ����
��Ŀ���ǶԷ�̫���ĵ��������

����Խ̫���������ĸ���ʹ�з���̫�����ֶ��䡣
��˳�ŷ��������ĸı��ҽ�����ָ���˶��ֵĺ�����

������ʤ���Ѿ���
���������ϣ�һ�ж�ʤ����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0091050b31">
������ʲ������

{	FwL("cg/fw/fw���I_ŭ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0091060b31">
���������ƻ����˰�����
������һ��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�����˲���
����ֻ�Ǵ��ɣ�һ���Ǹ����ʲô������������ţ���
������������֮ǰ��������Ѱ�����ಢ�������ˡ�

�������������Ŀ��ǿ���޷�����ʵ���������⡣


</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma05/0091070a00">
����ʹ���Լ������Լ����
����ú����ذɡ���

{	FwL("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0091080b31">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��Ů�����ҧ�´���
����԰������Ĵ�ɫ�෴��˫�շ��졣

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw���I��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0091090b32">
����������
��ʲô����

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0091100b32">
����������������ˣ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se����_����_����᤯02_L");
	MusicStart("SEL01",1600,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
���������ڲ������������ܵ����Աߵ�ɽ���ʵ���

�����ʵ�һ�������޻��ɴ�����ӡ�

���ұ���ʮ��ãȻ��ʧ��һ�ݼ�������Χ��
����������ȴĪ���ظ��ܲ���ʤ������ζ��


��������ľ���ô��������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);
//��ҹ
//����β���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureEX("�}�ţ�", 1100, Center, Middle, "cg/ev/ev128_�����ι�_b03.jpg");
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	WaitKey(1000);
	Fade("�}�ţ�", 1000, 1000, null, true);
	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
������Ĺ�ܰ�����
����������ȥ���м��ְ��ȡ�����Ȼֻ����֮ǰ��Ƚ�
���ԡ�

����ʹ���Ҳ˿�������ָ������ס�
������ֻ��һζ��˥���š�����ٶ��п�������ֻ����
������Զ��ԱȽ������ѡ��ı䲻�˹����ո�һ�սӽ�
��������ʵ��

����Ϊ����ʱ�Ѿ������ˣ����Խ����û��ȥ�򱾼ұ��档
����ֱ�ӻ��˼ң���������ĸ�����˾�����

����ĸ��Ȼ�ܸ����Ұ�Ȼ����������ɽկ����һ��
�־�������̫���ġ�
������õķ�ʽ�����������ȥ��ĸ�ƺ�����Ϊ������
�ˡ�

����Ҳ����ô��ġ�
��������������Ļ�����һ����ð��ʧ��ҲҪ��ҹ���
�������Ǳ�ȥ��

��������Ȼ�Ҿ���ֻ�������ַ����ˡ�

����������ϸ�۲�Ů����ı��飬��Ҳ֪������û����
ͬ����˼��
���������ʣ��������䣬��һ����������ؼ����ٱ�һ
�εĻ���ʤ����

��ɽ����Ҳû�н��ܰɡ�
�����±�������޷����ܡ�

��Ȼ������������ȷ��Լ���½��еľ�����


����Ȼֻ�ǿ�ͷԼ�������Ⲣ�������⡣
��Լ��������Ŀ��֮��ȷʵ�������ģ����Ҳ������
�װ׵ذ������

����ʹ��������ҵ��ˣ�Ҳ���Ѱ�ȷ�е���ʵ��װ��֪
����
��������Լ���İɡ���Ӧ�ûᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/ma05/0091110a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����֮������ȥ�򱾼ұ���ɡ�
������˾�����

����˵��֪�����һ᲻����ܡ���
����Ҫ��˵���ķ�ʽ�ˡ�

��ɽ��ԭ��Ҳ����ʿ��ӵ����ν���˵���֡�
�����ٲ�����Ŀ�ŵ��ؼ����Ӷ�ɡ��������ֻ�ȥ˵��
���һ���Ҳ���п��ܵġ�


����Ȼ�������ˣƭ��һ������ֻҪ��Ϊ��Ĳ������
ȡһ�̣��ⶼ���޿��κεġ�
�����ң�������ʿ��ֵ����Ҳ������١�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="����" src="voice/ma05/0091120a00">
�������⡭����

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0091130a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
���ٵ�һ�ᡣ
���ٶ����һ�ᣬ��һ���������㡭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 0);

//������Ϊz
	PrintBG("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 1100, "#000000");
	CreateColorSPadd("�}��ܞ", 1050, "#FFFFFF");
	Delete("�ϱ���");
	WaitKey(1000);
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm32",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
�������������

������<RUBY text="��">��</RUBY>�ĺڰ�������
���ڱ����ε���������յ������С�

����ʼ�ն������
��������������ͬ�����Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤������r
	CreateTextureSP("�}�ţ�", 500, Center, Middle, "cg/ev/ev008_���Ӥ򱧤���Ů.jpg");
	Fade("�}��ܞ", 1000, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
������ļ��䡣

�����߸��׵�ĸ�ס�
����ĸ�׶��ߵĸ��ס�
��ʧȥ���׵��Լ���

��ѭ��������
���ٴ�ѭ��������

���Ҳ��ϵ�����ͬ�����Ρ�
����û�о�ͷ�ĺڰ��ռ��С�

��ֻ��������ű�������ڡ�

���ڰ�������������ߡ�
���������ţ������︯��ɡ�

���������ţ����ܶ���

���ǵġ�
���������ﲻ�ܶ���

�������߸��׵�<RUBY text="��">��</RUBY>���Ҫ���������յĻ���
������Ϊ�˶�ظ��ס�

�������߸��׵��ң�
��ֻΪ�˶�ض����档

��Ȼ�����ǲ�������ġ�

������������ĸ�׵ģ�ĸ���Ǹ��׵ġ�
�����Ӵ�ĸ��������߸��ף���Ϊ�������Ͻ��ġ�

�������ˡ�
���޷�Υ����֮����

��������֮���Ļ���
���Ͳ������ĸ�������ظ��ס�

����ʹΥ����֮����ظ��ף�
������Ҳ������Ϲ⡣

�����ԣ�������ڰ���޷�������

����Ϊ����ȡ�߶���ʼ���ң�
����û�п��ٶ�صĵ�·ǰ��������Զͣ���������
����������

���������Թ������
��ʼ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Fade("�}��ܞ", 2000, 1000, null, true);
	WaitKey(1000);
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_010.nss"