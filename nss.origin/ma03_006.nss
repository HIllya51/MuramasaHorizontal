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

scene ma03_006.nss_MAIN
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
	#bg031_��ᦌm����_03=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$ma03_005a_routeFlag02=false;

	$PreGameName = $GameName;

	$GameName = "ma03_007.nss";

}

scene ma03_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_005a.nss"
//ǰ�ե����롡"ma03_005b.nss"

//������
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg031_��ᦌm����_03.jpg");
	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0060010a11">
���������𡭡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0060020a00">
��������ô˵�����ǣǣȣѵľ��١�
��Ҳ����˵����ãǣȣѽ������Ǻŵ����⡣
������ο�����Σ���Եģ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0060030a11">
��<RUBY text="����">Σ��</RUBY>���𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0060040a00">
���ǵġ���

</PRE>
	SetTextEXC();
	if($ma03_005a_routeFlag02==true){
		TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}else{
		TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����û����˵��
�����𳤲��᲻�����ҵ���˼��

�����Ǻ�һ�������ִ������Ķ��塣
����ô�����жϣ����˾������Ǻ�û�о��·������Ȥ��
������˵������û�к���<RUBY text="����">�Ӵ�</RUBY>����

��������Ҳ����̸����
���������Ǻ�Ӧ����<RUBY text="������">Ԯ����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0060050a11">
�����������ð�����Σ���˰ɣ�
�����ϴε��¼��У������һ��ս��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0060060a00">
����Ϊ���ж��������Ҫ��
���Ǹ�ʱ��������Ϊ����̽��˵�������Ǻ�
����ʡ���

//��������
<voice name="����" class="����" src="voice/ma03/0060070a00">
����û��ʲô�ر�ķ�Ӧ������˵�ǽӽ�����
���ġ�
������Ҳ����ֻ�������˺���֪����ˡ���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0060080a11">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0060090a00">
����������Ҫһ��չ�Ѳ�Ļ�����
�������п��ܣ����е��鱨��ͨ����й¶����
Ļ����ʹ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��Ҳ��ֻ��������ˡ�
�����п��ܾ����п��ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma03/0060100a00">
�������������Լ���ûʲô��ϵ��
�����Ǹ�ʱ��Ļ��Է��϶���������Ӧ�ġ�
�Ҿͽ�������ĺ��֣���Ťס�ɡ���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0060110a11">
�������������Ļ����Ҿ�ûʲô��˵���ˡ�
��һ�оͽ������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0060120a00">
���𳤡�
�������������𣿡�

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/ma03/0060130a11">
����������������ˡ�
����������ֻ����Щ���������Ǻ�������⣬
����������ǲ�ҡ���

//�����L��
<voice name="���L" class="���L" src="voice/ma03/0060140a11">
�������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0060150a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0060160a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_007.nss"