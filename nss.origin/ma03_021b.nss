//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_021b.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma03_021b_routeFlag==true){$ma03_021b_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_022.nss";

}

scene ma03_021b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_021.nss"

//������֦
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����·��ɡ�
����ȡ���ģ���һ�����������ĳ�ǹ��

������Ľк����Ѿ��嵽���ҵĺ����ڡ�
�������������ˡ�����һ˲��֮�У����������档

��ǹ��������
���������Ǹ�������������ӵ������������䴩���ˡ�

�������������ֻ�ս�С�
���Ǹ�����֦С�㣬Ӧ�ò��᲻������������ġ���

��վ����ǰ������ˣ����ٶ��ˡ�
������ҡ�ˡ�����������Ӿ����Ȩ������ȴ�޷�����
ǹ����������

��ǹ�ڣ���׼������
��Ȼ���ƿ���

�����¡�
�������Ķ������£����ŵ��档

������֦�����ַ�����ȥ��
��Ȼ�������֡�

����Լ���ʱ�����Ʋ⵽�ˡ�
��
������������ǹ�����������ã���

�������ξ��ǹ�߾�������
����һ����

��Ȼ�����»Ӷ���
����һ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤��󡣤�����
	CreateSE("SE01","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainSP("�}��", 1000);
	Shake("�}��", 300, 0, 30, 0, 0, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������ǹ�л������˵Ķ�ͷ���������ر���ص�������
��Ӧ����һգ�۵Ĺ���û�С���������һת�������
�ۣ������ص�����ȥ��

�����嵹�µ�������������Ϊ�˿��衣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��*");
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��c.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/021b0010a03">
�����ÿ�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/021b0020a04">
���ɵ�Ư������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ó�ǹ��ǹ�л������˵ģ����Ĵ�С�㡣
������Ҳ������ǰ����������������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	$ma03_021b_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

//������֦�øжȣ���
//$Kanae_Flag = $Kanae_Flag++;

}

..//������ָ��
//�Υե����롡"ma03_022.nss"