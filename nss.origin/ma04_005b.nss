//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005b.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma04_005b.nss","ActionCamera",true);
	Conquest("nss/ma04_005b.nss","ActionCameraProcess",true);
	Conquest("nss/ma04_005b.nss","ActionCameraDelete",true);

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

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma04_005b_routeFlag==true){$ma04_005b_routeFlag=false;}
	else{$Kanae_Flag=$Kanae_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_005z.nss";

}

scene ma04_005b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_005.nss"


//������֦
	SoundPlay("@mbgm29",0,1000,true);

	PrintBG("�ϱ���", 30000);

	CreateCamera("����飱", Center, Middle, 250);
	SetAlias("����飱","����飱");

	CreateTextureSP("����飱/�}����100",500, Center, Middle, "cg/ev/resize/ev119_һ��������֦��ˮԡ_a_ex04.jpg");
	CreateTextureEX("����飱/�}����200",500, Center, Middle, "cg/ev/resize/ev119_һ��������֦��ˮԡ_a_ex03.jpg");
	SetAlias("����飱/�}����100","�}����100");
	Request("����飱/�}����100", Smoothing);
	Request("����飱/�}����200", Smoothing);
	Zoom("����飱/�}����100", 0, 1200, 1200, null, true);
	Zoom("����飱/�}����200", 0, 1200, 1200, null, true);

	CreateTextureSP("����飱/�}��",650, Center, Middle, "cg/ev/resize/ev119_һ��������֦��ˮԡ_a_ex01.png");
	CreateTextureEX("����飱/�}��",650, Center, Middle, "cg/ev/resize/ev119_һ��������֦��ˮԡ_a_ex02.png");
	SetAlias("����飱/�}��","�}��");
	SetAlias("����飱/�}��","�}��");
	Request("����飱/�}��", Smoothing);
	Request("����飱/�}��", Smoothing);
	Move("����飱/�}��", 0, @+50, @0, null, true);
	Move("����飱/�}��", 0, @+50, @0, null, true);


	MoveCamera("@����飱", 0, @+200, @-300, @0, Dxl1, true);

	Fade("����飱/�}��", 1000, 1000, Dxl1, false);
	Fade("����飱/�}��", 1000, 0, Axl1, false);
	MoveCamera("@����飱", 2500, @-680, @-290, @+300, Dxl1, false);

	FadeDelete("�ϱ���", 1000, true);

	ActionCamera();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������֦С�㡣
������������˵�����߲�֪��Ͷ�����

����ô���ţ����ȴ��������������һ�㡣
������ȥ������ˡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005b0010a03">
�����ڿ��ҡ����ڿ����ء�
��������������

{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005b0020a04">
����ս�ɹ���
���о������Ҽ�С���ڷǳ���̬��ͬʱȴ����Ŭ��
װ���²��ؼ��ء���

{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005b0030a00">
�����ɷ��ϣ��ҵ����߱������ˡ�
��������ѡ��Ӿ�»����Ǵ󵨡���

{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005b0040a03">
�������Ա�Ʒ����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005b0050a04">
���Ҿ�֪������������

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005b0060a02">
���ⲻ�������𡭡�
��������ʲô�����ѵ��������߳��𣡡�

{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005b0070a03">
����ѽ��ѽ�����ǵ�����С���
�����������ӾװŶ�����Ƿ����տ���������
��Ʒ����

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005b0080a02">
����˵�˵���
�������ܻ�����ô��֪���ܵ�Ӿװ����

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005b0090a00">
��������ʵ������˵������ܸ��ӣ�һ����
�������ǽ����Ȼ��ᡣ��

{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005b0100a04">
�������Ǵն����ˡ����ǲ�ʶ��
����Ȼ��ʵ���Һ���׷�������Ի���֪
�������顣��

{	FwR("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005b0110a02">
�����������ף�
���桢����𣿡�

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005b0120a00">
����Ȼ��Ҳ�ǵ�һ�μ�������

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005b0130a03">
������Ӧ�û�û���ڴ�ͳ��ۡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�100", 5100, Center, -576, "cg/ev/ev119_һ��������֦��ˮԡ_a.jpg");
	Move("�}�ţ�100", 0, @0, -110, Dxl1, true);

	ActionCameraDelete();
	Fade("�}�ţ�100", 500, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��Ӧ���ǰɡ�
��������Ȼ����Χ�����ǡ������������ԡ���������
Ҳ������˼��С�

����������
��Ҳûʲô��ı仯�ɡ�

�������ᱡ��ǰ��Ӿװ���ͣ��Ѵ�����ξ���ڵ����
������ͻ���˳�����
���Ѿ����˿��ŵĵز���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005b0140a03">
���Ǻǡ���ô�����������ˣ���

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005b0150a00">
������������ʤ��
���ǳ��ء�����

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005b0160a03">
���ܰ��Ҳ���ɹ���𣿡�

{	FwR("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005b0170a00">
��Ը��Ч�͡���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005b0180a04">
������������ô���ɣ��ն����ˡ���

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005b0190a00">
���ǡ���

{	FwR("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005b0200a04">
��������ԥ���ޱ�ֱ�ӵ����ߡ���
����Ȼ��ǿ�ҵؾ�����ɾ�ͷ�����ô���
�ط�����

{	FwR("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005b0210a03">
����������Ǿ������ˡ�
���������롪����

{	FwR("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005b0220a00">
���Ǿ�ˡ��ð���ˡ���

{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma04/005b0230a02">
�������ն�����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��һ��̧���۾������ҡ�
�������ֱ�Ť��

���Ҷ��ٻָ���һЩ�侲��
��������������Χ�����Ӧ��ͷ�˰ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma04/005b0240a00">
���������ˡ���

{	FwR("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005b0250a03">
���ף���

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005b0260a00">
���Ҹо��������Լ���Ŀ�ġ���

{	FwR("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma04/005b0270a03">
���ҡ����ϧ����

{	FwR("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma04/005b0280a04">
�����ˣ���Ҳ���޿ɺ�ǰɡ�
��������������ȥ�������˾ͻ���Ҫ����
��Ҳֻ�����������Ŷ��ѡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/005b0290a00">
����һ��Ҳ�����ҷǳ����š���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ʵ��ʧ̬������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������֦�øжȣ�
//$Kanae_Flag=$Kanae_Flag++;
	$ma04_005b_routeFlag = true;
	$Kanae_Flag = $Kanae_Flag+2;

	judgment_of_count();

..//������ָ��
//�Υե����롡"ma04_005z.nss"

}


function ActionCamera(){

	CreateProcess("�Ӥ��ؤ륫���", 150, 0, 0, "ActionCameraProcess");
	SetAlias("�Ӥ��ؤ륫���","�Ӥ��ؤ륫���");

	Request("�Ӥ��ؤ륫���", Start);

}

function ActionCameraProcess(){


	begin:

	WaitAction("@����飱", null);

	MoveCamera("@����飱", 5000, @0, @+200, @+50, Dxl1, true);

	MoveCamera("@����飱", 4000, @+300, @+300, @+0, AxlDxl, true);
	Wait(2000);
	MoveCamera("@����飱", 4000, @-300, @-500, @-50, AxlDxl, true);

}

function ActionCameraDelete(){

	Request("@�Ӥ��ؤ륫���", Stop);
	MoveCamera("@����飱", 1000, 0, -600, 250, Dxl1, false);


}


