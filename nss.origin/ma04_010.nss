//<continuation number="1120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_010.nss_MAIN
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

//�룺�_�J��
//$Ichizyou_Flag = 5;
//$Kanae_Flag = 5;

	RouteChicker();

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($RC_N["һ��"] < $RC_N["����֦"]){

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($RC_N["һ��"] > $RC_N["����֦"]){

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{

		//��δ�i���i�ж���
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//�������O����
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}

	$PreGameName = $GameName;

	$GameName = "ma04_011.nss";

}

scene ma04_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_009.nss"


//��Ƭ������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������ĺ���ʮ�ֺ��䡣
�����������������������֮����Ȼ
�����¶�Ҳ��˵�������������صļ��������
���Ѿ��䵽���Ŷ����е������ˡ�

���ֲ��ñ����˻����Ǳ�Ѱ�����¶ȱ仯
����̾�����������ţ�����������ƵƵ
�����ġ�
�������Դӽ�֮��<RUBY text="��������">�����쳣</RUBY>������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����᪡�һ���κøжȤ��ߤ���У�������
//������֦�κøжȤ��ߤ��ʤ飰���¡�

}



scene ma04_010.nss_ic
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm17",0,1000,true);
	CreateTextureEX("�}����100", 5100, Center, Middle, "cg/bg/bg040_���΍uȫ��_01.jpg");
	Fade("�}����100", 0, 1000, null, false);
	FadeDelete("�ϱ���", 600, true);

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100010a02">
��Ҫ�ȵ�ҹ���𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100020a00">
������ô��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������һ�����˲��ж�վ������С����
��ҹ��Ǳ�롣��Ӧ�ó��Ű��죬�����ܶ���Ѽ��鱨��
�����첻����ˮԡ�͵���Ӱ���������ǵĵ���Ҳ�Ŵ����ա�
����״����Ҳ���ʺ��Ĵ�������

����Ȼ�Һ����ۿպĵ���ʱ�䣬����Ҳ�޿��κΡ�
������ֻ�ܲ�������صȴ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg041_Ƭ������_01.jpg");

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStR(0,true);
	FadeDelete("�}����100", 500, false);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100030a02">
�����������ѽ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100040a00">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��һ�������ڸ�������������״̬����һ��
�����̾����׹����ˡ�
����ָ������Χ��״����

������̫����δ�����춥�ĺ�����Ӧ��
�������ڴ�����ˣ����ַǷ��Ŷԡ�
�������ȴû���ⷬ�⾰������ֻ��δ�����Ĵ�ֻ��
������������ļ�λ���ˡ����Լ���ŵ����ա�

����������Ƭ����������ʵģ���ɡ�
�������ǰ�������ֻ����������Ƭ�������޹�����
���������е��ݳ���

������֮�أ���֮���������ˣ�
���䴰��Ҳ���ս�˥�ߡ�
�����˺ιʣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100050a02">
����������ԭ�¡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��һ���������
����֪Ϊ�Σ���仰�����Ҷ��С�

���Ҵ����ͺ������ˡ�
�������Ů��ʱ͸¶������ĵ����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma04/0100060a00">
������һ���㡭����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100070a02">
��ʲô�£���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100080a00">
��������������ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����������������
����Ϊ����̫����ͻ�˰ɡ�

������ֻ��ã��һ˲�䡣
����������Ϊ������˵�������
������ֵ���������������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_���x.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100090a02">
�������ް���
����Ϊ<RUBY text="������������">�����Ǵ����</RUBY>�������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100100a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����޷���������ָ��
��
�������ǵġ������޵ı����Ǵ���ġ�

���������Ҳ磬�κ��������ܱ�����һ��ë����
������������ͳ���߱Ͼ�Ҳ��ʤ���ޣ�
������ר��Ҳ���ֽ������������ȡ�
�����������޴��б�����ء�

��Ȼ����������������������������������⣬
������ã�ĵ�����ǰ��������ʲô���������أ�
�������������Σ����Ƕ��ĵ�ȷȷ�Ǵ���
�ġ������ǵĵ�ȷȷ�����������

����Ϊ���̵������

�������޷�����Ǵ��Ļ���Ĵ������Բ�����������
������С��ƻ��ı����ʵ������Ϊ���ػ�Ļ����
����Ϊ��������������������б�ȫ�Լ��Ŵ��ڵġ�
����Ů����Щһ�ɲ�мһ�ˡ�

�����Ȳ��ӱܵ��˵�а��Ҳ���ɻ��Լ���������
ֻ�ǽ���ʵ�᳹���ס�
������ǿ���Ƶ������쳣��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma04/0100110a00">
��ƾ����������Ǵ򲻵������޵ġ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100120a02">
�������ǵġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100130a00">
����ʹ��ˣ��㻹������ô����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100140a02">
���ǵġ�
����Ϊ����֮����޹�ϵ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100150a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���������޹�ϵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100160a02">
����ֻ�Ƕ��Լ��������е��ûڡ�
������Ҳϣ��ӵ��ս��������
���������������Ҵӽ�����һֱ���������
Ҳ���ǻ������������ޡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100170a02">
����Ϊ������Ȼ�Ǵ���ġ�
���Ҿ��Բ����������ޡ���Ҫ�����ǡ�
��������������û��ϵ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������Ϊ����ս������ս����
��������ϣ�û�б�Ҫ����ʤ����

���һ�������һ�仰��
������������ʱ��ĳ��˵����һ�����ģ���ѷ֮�ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma04/0100180a00">
����������һ������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100190a02">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100200a00">
����Ҫ��������ս��������
��������������ô���⡣��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100210a02">
���ǵġ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100220a00">
����Ҳ�ǡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100230a02">
����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100240a00">
���з�����ȷʵ�������֮�ϡ�
������֮������ѹ���ԵĲ�ࡣ��������˵
���������Ტ�ۣ��ͺ��޴�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100250a00">
�����ǡ����Ҳ��ò�ս������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100260a02">
�����������Ǻţ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100270a00">
���ǵġ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100280a02">
��˵ʵ�������Һ������š�
���Է�����ȴն�������ǿ�󡭡�
���Ҿ�Ȼ���޷����Ტ�ۡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100290a00">
��������ʵ��������ν��ǫѷ��
����ȥ����������
�γ�̫����Է����š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100300a00">
�����Ǵ�δ���˼��Է�һ˿һ������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100310a02">
��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100320a00">
����ʹ��ˣ���ҲҪ�ƲöԷ���
���������㲢���ܳ�Ϊ�ӱܱ�Ȼ֮ս�Ľ�ڡ�
���ս���˱�Ȼ֮�£���ô����
�޿��ӱܡ���

//��������
<voice name="����" class="����" src="voice/ma04/0100330a00">
������ֻ��ȥ�õ����Խ����˷������������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100340a02">
������������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100350a02">
�������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100360a00">
��һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������������Ů�����ݣ�
������Ǳ������ͫ�����Σ��ϸ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���դ�
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100370a02">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100380a00">
����Ҳ��ֻ������Щ�ط��ϣ�
�����Һ����ơ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����������ˣ�
���Ҳ���˵��������Ԥ�ԵĻ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma04/0100390a00">
���������õ������İɡ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/0100400a02">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100410a00">
���Ƿ���������
�������ţ��Ƿ�������������Ƶ�
<RUBY text="��������">����֮��</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_011.nss"

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�񣰣���
scene ma04_010.nss_ka
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100420a03">
���������ˣ������Ӷ���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100430a00">
�������Ǻܶ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100440a03">
�����ٹ�һ��������Ǿͼ��ϣ�
ȥ���緹�ɡ�
���һ����һ�ν�֮��
�Ƿ�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100450a00">
������������Щ�ɻ󣬺��ݼ����Ƿ��뽭֮��
����γ��Ϲ�ϵ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�������ź��������ߡ�
������ͬ�е�ֻ������֦С�㡣
�����˷�ͷ�ж��ˡ�

�����ǲ�����ɢ�������Ǵ����ռ��鱨��Ϊ��ҹ����׼����
�������������ͼ������ˡ�
�����������Ĵ�������������̫���ˡ���������塣
��Ų���ʱ�˵ĺ�ˮԡ�Ͷ��������������ˡ�

�������ʱ���һ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma04/0100460a00">
�����ǻ�ȥ�ɡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100470a03">
���ٵ�һ������������ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100480a00">
�����ǿ��Ա߷��ر߿�������

{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100490a03">
�����š�����һ����Ȼ�ؼ�̤Ů���ĵ�
������Ҳ�����ˡ���
���������Σ�����������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100500a00">
����û�°ɣ�����ξ���¡���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100510a03">
���Ǿ������˵������Ի����ҡ�
������ǡ��������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100520a00">
���Ǵ����
����������һЩ����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100530a03">
����ֻҪ���������ھ������˵���ߣ�
���м¶������������ˡ���������
�ҵ�������ô������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100540a00">
���п�����һ�����༲����
�������ҽ������ϡ���

{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100550a03">
�����ԡ�����
��������ʴ�����ĵľ���԰��
��ֻҪ�����������˵ķθ�֮�ԣ�
һ�����ܡ�������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100560a00">
���θ�֮�ԡ�����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100570a03">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100580a00">
������������ˡ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100590a03">
���������ˡ����ˡ�
����������΢��Ϣһ�¡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100600a00">
���á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������ͣ�½Ų���
�����ܿ���һ�ˡ�

��Ҳ���������������ǡ�
����Ϊ��֪�������л����
��˵��

���Ұ��ų�Ĭ�������ȴ���
�����ã�Ԥ��֮�е����鷢���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100610a03">
���������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100620a00">
���ǣ���ξ���¡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100630a03">
�����ᷢ��ս���ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100640a00">
�������ǵġ�
�����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�����۽�֮���Ϸ������������Ǻ�
���޹�����
���������е����ܡ�������ζ��
�޷����ⲻ��ƽ�ĳ�ͻ��

������Ҫ�ع������������������飬
��ƽ�����µس��ˣ���δ��̫���ֹ��ˡ�
����������������ˣ����ٺò����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100650a03">
���������������ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100660a00">
�������ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���������Ʈ�������ӳ������ľ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100670a03">
���������ˡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100680a00">
��������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100690a03">
����ϲ��ɱ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����������ʹ���ƿ����ԡ�
���������������ˡ�

�������ξ�������ҡ�
��������С�ġ�����ʹ˫ͫ���������µ����������أ�
��Ҳ����������ǿ�͸��ͼ��������������
<RUBY text="��������������">����Ц���΢Ц</RUBY>��

�����ڿ��ӡ�
�������ҵġ������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma04/0100700a00">
�������Ҳ�ϲ������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100710a03">
���������𣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100720a00">
�������ǵġ�
���Һ���񡣡�

//��������
<voice name="����" class="����" src="voice/ma04/0100730a00">
��ɱ����Ϊ�ǳ�ª�ġ�
���Ҿ��ԡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100740a00">
���޷�ԭ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��ì�ܡ�
��ɱ�˷�˵���ֻ����ܲ�����

������ξû��ָժ������ì�ܡ�
����ֻ��Ц�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100750a03">
���ҡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100760a00">
��������

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100770a03">
����ϲ��ɱ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����Ц�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100780a03">
���Ӷ�����������˲�䡭��
�������Ʋ�ס�ظе����֡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 5100, Center, Middle, "cg/bg/bg041_Ƭ������_01.jpg");
	Zoom("�}����100", 0, 2500, 2500, null, true);
	Request("�}����100", Smoothing);

	SetShade("�}����100", HEAVY);
	Move("�}����100", 0, 100, -75, null, true);

	CreateTextureEX("�}����200", 5200, 213, -681, "cg/st/resize/st����֦_���_˽��a_m.png");
	Move("�}����200", 0, @-100, @0, null, true);

	Move("�}����100", 1200, -15, -75, null, false);
	Move("�}����200", 1000, @+100, @0, null, false);
	OnSE("se���L_�|��_������02",1000);

	Fade("�}����100", 300, 1000, null, false);
	Fade("�}����200", 300, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
����֪��ʱ��
�������°���ȡ����ǹ��������ǰ��
��׼���ҡ�

����׼���ҵ����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100790a03">
�����ź���
���Һ;���������Ȥ����ѽ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100800a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100810a00">
���Ⱥ����˶��졣
����������Ϊ������Ȥ��Щ���ġ���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100820a03">
������ô��Ϊ�𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100830a00">
���ǵġ�
���һ���Ϊ����

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100840a03">
��ʲô����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100850a00">
������֪�߳��ˡ���

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100860a03">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
�������ξ����Ц��������
������æ������ס���ʡ���������Ц����ͣ��

����ͨ��Ӧ���Ѿ���Ц��ֹ�ˡ�
���������ܵ��Ľ�����Ų�����
���������־ٶ��ɡ�

���������͵أ�
����Ц�š�

���̶ܴ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma04/0100870a00">
������һ�ã����³ϸй��١�
�����������⿪��Ц����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100880a03">
���ǰ��������ǵġ�
���ղ��Ǿ仰���Ҹ��˵ò����ˡ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100890a03">
��Ϊ��л�⡭����Ҳ���㽲һ�����¡�
��һ����Ȥ�Ĺ��¡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100900a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100910a03">
���ܾúܾ���ǰ����
��ĳ����ɽ�У�ס��һֻ����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100920a03">
����ǳ��ǳ�ǿ����Ұ���빷��
�����ǹ�Ķ��֡�
����֪��ʱ�𣬹�����ɽ�����ˣ�
Ϊ���������¡���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100930a03">
�����ڣ���Ҳ�������˵Ĵ�ׯ��
������������Ҳ�����Լ���
��������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100940a03">
��������ɽ����ɽ´�Ĵ�ׯ����һ����
����ɱ�����ˣ��Ե����ӣ��ַ�Ů�ˡ�����

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100950a03">
����<RUBY text="��������">��������</RUBY>�ذѴ�ׯ�ƻ���������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0100960a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100970a03">
�����ǣ�ͳ�δ�ׯ��������һλ�¸ҵ���ʿ��
����Ϊ�˱�����ׯ����Ȼ���
���š���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100980a03">
�����ǿ�����������ΰ��ˣ�
�������ˡ�
�����������Ծɲ��Է�����ս���š�
������õ�ɽ�����˵İ��������˹���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0100990a03">
����Ҷ���ϲ���ѡ�
���ɲ��þ�ע�⵽��һ���鷳�¡���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101000a03">
�������������£������ַ�����Ů�����ǵĶ���
�͹������ˡ�
��û�����ǻ����˹�ĺ��ӡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101010a03">
��������ȥ���ֻ����¹�
�����Σ�����ֻ��<RUBY text="����">����</RUBY>��Ů�����Ǽ���������
�����ˡ��������˵����飬
˵��Ϊ�˾����������۵���ꡣ��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0101020a00">
��������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101030a03">
������������ׯ�ָ��˺�ƽ��
���������羴Ϊ�����ɣ���˵
���󻹱��������������Ϊ���������񡣡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101040a03">
����ϲ�ɺأ���ϲ�ɺء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����ξ������͡�
������������š�

����Ĭ��
�����š�

������˫����ʼ������
���·�������һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101050a03">
���ۡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0101060a00">
��������

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101070a03">
��������������������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101080a03">
������������������������

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101090a03">
������������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���գ�
//���|��������`��
//������ä��g��ȡ�ä�
	SetVolume("@mbgm*", 1, 1, null);
	CreateSE("SE01","se���L_����_�饤�ե�Ĥ�01");//���ߩ`ע��
	CreateTextureEX("�}����1000", 6100, Center, -4873, "cg/bg/bg202_�����ݳ�����ɽa_01.jpg");

	Move("�}����1000", 1000, @0, @800, Dxl2, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}����1000", 100, 1000, null, true);
	Delete("�}����100");
	Delete("�}����200");
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);
	WaitKey(1000);
	SetVolume("@mbgm*", 4000, 1000, null);
	FadeDelete("�}����1000", 2000, true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101100a03">
���������ˡ�
�����ǲ������ˡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/0101110a03">
���������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0101120a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
������ָ���ḧһ���Լ������ϵ����ˡ�
�����˵�ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma04_011.nss"

}



