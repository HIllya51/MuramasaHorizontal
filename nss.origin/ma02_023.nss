//<continuation number="1240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_023.nss_MAIN
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
	#bg005_ɽ��_02=true;
	#bg004_�ɤӤ���a_02=true;
	#bg001_��a_02=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_024.nss";

}

scene ma02_023.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_022.nss"

//��ɽ����
//��܇��ֹ�ޤ���

	PrintBG("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 5000, "#000000");

	OnBG(100,"bg005_ɽ��_02.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 0, true);

	CreateSE("SE01","se�\��_܇_ֹͣ01");
	MusicStart("SE01",0,1000,0,1200,null,false);

	Wait(1000);

	FadeDelete("�}��ܞ", 2000, true);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetVolume("SE*", 200, 0, null);
	OnSE("se�\��_܇_�ɥ��_�]01",1000);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");

	FadeStL(300,false);
	Wait(150);
	FadeStR(300,true);

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230010a03">
����ѽ��ѽ���湻�ܵġ�
�����ţ������ֻص�ͬһ���ط����ˡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230020a04">
����������֡�
����С�㣬��᲻���ǰ���������������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230030a03">
�������ǿ����ļƲߡ�
���Ȳ�˵�������������Ҫ��ô�죿��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230040a04">
���Ѿ������ˡ�
������Ļ������Ҳ��Ϊ�����ˡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230050a03">
���ǰ�������Ҳ�����˰ɣ�
����������һ�����Ѿ��˽��˰ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230060a04">
��ͬ�С�
����˵��������С�㡭����

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230070a03">
��ʲô����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230080a04">
���ֶ��������ί�е����¡�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230090a03">
����������
����ȫ�����ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230100a04">
����Ϊ�鷳�½Ӷ������س��ְ�������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230110a03">
��������û��̫�������ϡ�
�������ɶ�����˵�����Թ��Եذ����ˡ�����
������������ͬ���𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230120a04">
���ǰ���
������<RUBY text="��������">ˮ�ʵ���</RUBY>���׸���ô�����ء���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230130a03">
��������ô����֪���ء�
�����ˣ������Ѿ����Ǹ�����С��ȡ��ˮ�ˣ�
�Ϳ������Ū��ȥ�ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230140a04">
���������ԡ�
����ô������С�㡣��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0016]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230150a03">
��ʲô����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230160a04">
���Ǹ��дն��������ˡ�
��������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230170a03">
����������
��������һ�Ŷ��ۡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230180a04">
���뿴͸��Ϊʱ���磿��


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230190a03">
���š�
�����ס������ǲ���<RUBY text="����">����</RUBY>��������˵������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230200a04">
����������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230210a03">
�����ǡ�
�����������ޱ�Ѫ�ȵ����һ��ǵ�һ�μ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230220a04">
���������������ĸо��𣿡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230230a03">
������������ʬ���Ƴɵ�һ����
����һ����Ŀ���ʱ�����߼����Ŀ־塣
һʱ�ǲ��������ǵġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230240a04">
���������ǡ�
����С�㡭����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230250a03">
���š���֪��������ʲô�����š�
������˵������<RUBY text="��������">�����˼�</RUBY>�������������ɣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230260a04">
�������ǡ�һ�Ը�֮�Ļ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230270a03">
����Ҳͬ�С�
���������ԲŲ����ס���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230280a04">
��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230290a03">
����������ء�
������Ҫ�����˽������С���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230300a04">
��û��
�������ţ�����С�㡣��


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230310a03">
����ô�ˣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230320a04">
���뿴�Ǳߡ�
���ҵ��ϻ��ۿ��ò�̫��������ǡ������𣿡�


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230330a03">
��������ѽ��ȷʵ�ǡ�
���������ݵ������ꡭ���ƺ����ǣ�  Ů������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230340a04">
����������˰�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	StCL(1000, @-30, @0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	StL(1010, @90, @0,"cg/st/st����_ͨ��_˽��.png");

	Move("@StML*", 300, @-30, @0, Dxl1, false);
	FadeStCL(300,false);
	Wait(150);
	Move("@StL*", 300, @-30, @0, Dxl1, false);
	FadeStL(300,true);

	OnSE("se����_����_�᤺����01",1000);

	StR(1000, @30, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	Move("@StR*", 300, @-30, @0, Dxl1, false);
	FadeStR(300,true);

	SoundPlay("@mbgm17",0,1000,true);

//��һ��

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230350a02">
��ι����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230360a03">
��ʲô����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230370a02">
�������⸱��磬�ǽ�פ�����ˣ�
������û��ʲô��������ǹ�����ǽ�ʲô�ġ�
û�еĻ�����Ҳ���ԡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230380a03">
������
��ǹ�Ļ��������С���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230390a02">
���ã����æ�ˡ�
������ҡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230400a03">
����Ҫ��ʲô����


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230410a02">
�������޵��߹����Ǳ�ɽ�
�����ڸ�������ս������ҪȥЭ������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230420a03">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230430a04">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230440a02">
��������Щ��Ȯ�������ǰɡ�
���ҿ����������ǲ�ƨ�ɵġ�û����ɡ����ҡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230450a03">
������ô˵���������Զԡ���
����ǹ��Ȼ���ҵ�˽�����Ҳ���Ǿ�����Ʒ����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230460a02">
��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230470a03">
���������Խ�������ˡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230480a02">
�����ܽ��𣿡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230490a03">
���ǵġ����ܽ衣��


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230500a02">
��������Ǳߡ���͵�߾��ǡ�
���Ǿ�û�����˰ɣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230510a03">
����ѽ��
��������������˰�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230520a04">
����С�㣬��Ҫ��ƭ��Ӵ��
����λ�������ݵĹ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230530a02">
��������
�����������ϼһ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230540a04">
����ҪЭ������ɽ��ս���ľ���Ļ���
�������Ǿ�����ϣ�����𣿡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230550a02">
����������
��������û�У�����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230560a04">
������˵Ҫ�������ߵİɣ���


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230570a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230580a04">
��Ҫ�������Ļ�����������������Ա��ǡ���


{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230590a02">
�����ǣ�
�����޷���ˡ�������ǻ쵰����������
���ܵĻ����ҡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230600a04">
��Ϊ���Լ������𣬶����Ӿ��ٴ��˵Ĺ����𣿡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230610a02">
�������������������⡭����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230620a04">
�������Ҫ֧Ԯ�Ļ������ٴ�����Ȼ��˵�İɣ�
�����û��˵�Ļ���
Ҳ�ͱ�ʾ˵����Ҫ֧Ԯ�İɡ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230630a02">
�������š�
�����ǣ���һ������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230640a04">
���������������𣿡�


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230650a02">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230660a04">
��������̫�ž;���û�С�
����С���أ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230670a03">
��ֱͨ������Ȫ����·�Ѿ���ͨ�ˡ���


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0026]
//�����衿
<voice name="����" class="����" src="voice/ma02/0230680a04">
���������ǣ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230690a03">
�������ߣ���û�С��ķ����롰�����ߡ���ͬ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230700a04">
���ڴ�¡�ص���������
����λ�������ݵĹ����Ҳ����ô��İɣ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230710a02">
�������С��ǰ��ǰ���û��
����Ҳ��ô�룡��<RUBY text="��������">�Ǹ���ʿ</RUBY>�ǲ������
�����޵�������ʿ�ġ���


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230720a02">
���ɶ񡭡�
�����ϼһ����Ǻϲ���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230730a04">
����ѽ��ѽ�������˲�Ҫй����
�������ݵ���ɡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230740a02">
�������ˡ�
���������ǵĿ�����������ʶ�Ǹ���һ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230750a04">
���ǰ���������ʶ������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230760a03">
��������һ��������ǻ쵰ս���İ�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230770a02">
���������������𣿡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230780a03">
���ǵġ�
�����Ǽ����ҿ��ģ��������ʵ����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230790a02">
���������ǡ������з��ģǣȣѰɣ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230800a03">
����ʱ��Ҳ�����˳�㹤��Ŷ����ѽ����Щ��
һ����һ��˵�ɡ�
�����ס�����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230810a02">
���������֡���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230820a03">
�������ɡ�
��������ȥ����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230830a02">
�����������������ˡ�
����Ҫ�ش��ӡ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230840a03">
��������Ǹ��˰ɣ�
����ô������������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230850a02">
��ʲô��˼����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230860a03">
��Ҫ�򵥵�˵���ǡ�
������ȥ������ʧ��ҹ·�϶�����Ϊ�ѵ���Ļ���
���Ǿͻ�����Զ·���Ӷ��޷���ʱ�ر�������


//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230870a03">
���������أ�����������ֻ����뾰�����ˡ���
Ҳ�����Ǿ��죬���йصġ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230880a02">
��������ȫ��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230890a03">
�����Ҳ���߱�˵�ɡ�
�����ɡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230900a02">
���ðɡ��������㲻����˵�ѡ�
���������ǡ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230910a03">
��ʲô����


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230920a02">
���Ҳ�û��·ʲô�ġ�
�����Ǿ͵������������˰ɡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230930a03">
���ţ� �����ˡ�
���Ǿͳ����ɡ���


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230940a02">
�������ˡ�
��������ౣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230950a04">
����ѽ����ð���𣿡�


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230960a02">
������Ӧ�ò��ǡ���
��������ô���أ��ոպ�Ȼ�е��䡣��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0230970a04">
����ħ֮�̡�
�������Ǳ�ʲô�ණ�����˱���������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma02/0230980a02">
�����������㲻Ҫ˵Щë���Ȼ�Ļ�����̫
����ķ���ˡ�
�����ǵġ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0230990a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	DeleteStA(300,true);


//����
	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 5000, "#000000");

	OnBG(100,"bg004_�ɤӤ���a_02.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	Wait(2000);
	WaitPlay("@mbgm*", null);

	FadeDelete("�}��ܞ", 2000, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetNwC("cg/fw/nw���ˣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������㣯�����У���
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231000e156">
����ð��������ˡ���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����Уá�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231010e158">
��������ô���ˣ���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У¡�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231020e157">
���������������


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У���
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231030e156">
��ι��˭ȥ����������


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У¡�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231040e157">
����ȥ������


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0231050e160">
������侲�㡣
�������صȴ��ɡ��ٵ�һ�µĻ������߾���
����һ��������ġ���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У���
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231060e156">
������Ҫ�ǻز����أ���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0231070e160">
������������


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0231080e160">
��������ġ���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У���
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231090e156">
��������


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У¡�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231100e157">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`��
	PrintGO("�ϱ���", 15000);

	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");

	OnBG(100,"bg001_��a_02.jpg");
	FadeBG(0,true);

	Delete("�ϱ���");

	SetVolume("@mbgm*", 300, 0, null);

	FadeDelete("�}�ե�", 300, true);

	SetNwC("cg/fw/nw���ˣ�.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯�����Уá�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231110e158">
��������


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У���
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231120e156">
����ô�ˣ���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����Уá�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231130e158">
�������ǡ�����


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У¡�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231140e157">
�����ǣ���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У���
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231150e156">
�����Ү������


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����Уá�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231160e158">
�������Ǽ��װɣ���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У���
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231170e156">
�����������𡭡���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У¡�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231180e157">
���㰡����


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У���
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231190e156">
����������������Ϊ��үү��ǰ������


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����Уá�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231200e158">
�����˺��ˡ���
���������Ǽ��װɡ���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У���
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231210e156">
���ǰ�������


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯����Ů����
<voice name="����㣯����Ů��" class="������Ů��" src="voice/ma02/0231220e155">
��������ɫ������


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯�����У¡�
<voice name="����㣯�����У�" class="����������" src="voice/ma02/0231230e157">
���ţ���


{	NwC("cg/fw/nw���ˣ�.png");}
//������㣯����Ů����
<voice name="����㣯����Ů��" class="������Ů��" src="voice/ma02/0231240e155">
�������ǡ���
��Ư������ɫ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���\
	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"ma02_024.nss"


