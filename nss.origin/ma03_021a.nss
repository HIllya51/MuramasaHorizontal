//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_021a.nss_MAIN
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
	if($ma03_021a_routeFlag==true){$ma03_021a_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_022.nss";

}

scene ma03_021a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_021.nss"

//��һ��
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	OnSE("se����_�n��_������01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������������������

�����ԡ�
����Ų�û��ɱ���ɡ�

��һ������ΪĿ��ĵ�����ǰ��������һ��������
ͬʱ���������Ĺ�ȭ��
��Ȼ���������Ļ����Ĳ����������ƹ�Ĥ�Ĺ�����

�����˷�������ֵĲҽУ���ס���������ȥ��һ����
�ַ������ӵ��ؿڣ�ͬʱ��ס���Ľţ�Ȼ������һ�ơ�

�������������������
���������µ�һ˲�䡣

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	CreateSE("SE01","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	OnSE("se�M��_ճ���|_���띢���01",1000);
	CreatePlainSP("�}��", 1000);
	Shake("�}��", 300, 0, 30, 0, 0, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��һ���ĽŸ��ݺݻ������˵��ؿڡ�
�����˵ĺ󱳺��ؿ�ͬʱ�����˳��Ƶ����졣

���������������������������ư�ˮ������ʱ������
����������

��������˵��û��ɱ�����ɡ�
�������Ѿ����չ�ֳ���ɱ�˵��龰��

���������顣
����Ȼ���������ǿ����˲����������Ĺ��������Ǻ���
�鲻ͬ��

�������ͬʱ����Ҳ�����������Լ��ļ���������������
�����������Լ��ı�����

���������Ļ����ǲ������<RUBY text="������">Ư����</RUBY>�򵹵��˵ġ�

���������£�һ��������
��
���ҹ��ơ�

�����ڿ�������������������������Ա��һ˲�䡣
���������н��в��У����������Ӧ�ø������ǵ���
����Ȼ��ִ���ˡ�

�������Ļ��Ͳ���Ҫ���黹�е��������ˡ�
��ֻ��׷���ϸ�ִ�еľ���

������һ����ս����һ����ս��������
��������

��������ս�е�һ˲��
����Ҳ���̽����һ���ı��ʡ�

��������һ˲��
���Ҷ������Ϊ���һ�����˸е��˾�η��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ���øжȣ���
//$Ichizyou_Flag = $Ichizyou_Flag++;

	$ma03_021a_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


}

..//������ָ��
//�Υե����롡"ma03_022.nss"